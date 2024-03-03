### phase 1
this secret was easy enough to spot in `strings` output:
```shell
strings bomb9/bomb
# ...
Many of lifes failures are people who did not realize how close they were to success when they gave up.
# ...
```

however we can also use the assembly to see that an arbitrary test string we enter is stored in `%rdi` (aka the first argument register):
```
>>> x/s $rdi
   0x555555559b40 <input_strings>:	"foo bar"
```

then compared with `0x555555557150` in `strings_not_equal` function.
```
0x00005555555555cf  ? lea    0x1b7a(%rip),%rsi        # 0x555555557150
0x00005555555555d6  ? call   0x555555555a30 <strings_not_equal>
```

this is where the secret string lives. it can be printed with
```
>>> x/s 0x555555557150
   0x555555557150:	"Many of lifes failures are people who did not realize how close they were to success when they gave up."
```

### phase 2
we can quickly see our secret phrase is meant to be six integers: `0x00005555555555f8  ? call   0x555555555c96 <read_six_numbers>`

set two breakpoints at `phase_2` & `explode_bomb`, run program, and enter random string of `012345`. to gather some more info about what these six numbers are expected to be, we can have a look at `read_six_numbers` function, where one memory address stands out:
```
>>> disas read_six_numbers
   ...
   0x0000555555555cb7 <+33>:	lea    0x171c(%rip),%rsi        # 0x5555555573da
   ...
>>> x/s 0x5555555573da
   0x5555555573da:	"%d %d %d %d %d %d"
```

we can see that our input is meant to be 6 signed integers separated by spaces :^)\
based on the following assembly in `phase_2` function, our first number must be positive:
```
0x00000000000015fd <+18>:	cmpl   $0x0,(%rsp)
0x0000000000001601 <+22>:	js     0x160d <phase_2+34>
0x000000000000160d <+34>:	call   0x1c49 <explode_bomb>
```

for fun, lets use 2147483647 (`INT_MAX`) as a first number. further down, we see `%ebx` initialised at 1, then `%eax` is assigned to `%ebx`'s value.\
our first number (`%rsp + 0`) is added to `%eax` (1) which overflows to -2147483648 (`INT_MIN`).\
`%ebx` is incremented and the loop continues, leading us to our subsequent numbers:\
**num[0..5]    `%ebx`  `%ebx += num[n - 1]`**\
$2147483647 + 1 = -2147483648$\
$-2147483648 + 2 = -2147483646$\
$-2147483646 + 3 = -2147483643$\
$-2147483643 + 4 = -2147483639$\
$-2147483639 + 5 = -2147483634$

### phase 3 (switch statement)
from the assembly code, as per usual, there's a memory address worth looking at:
```
0x000055555555564a  ? lea    0x1d95(%rip),%rsi        # 0x5555555573e6
>>> x/s 0x5555555573e6
   0x5555555573e6:	"%d %d"
```
without any other information, this looks like our input is to be 2 signed integers separated by a space.

```
0x0000555555555660 <+40>:	cmpl   $0x7,0xc(%rsp)
0x0000555555555665 <+45>:	ja     0x5555555556bd <phase_3+133>
0x000055555555567c <+68>:	call   0x555555555c49 <explode_bomb>
```
in the above assembly, our first number (`%rsp + 0xC`) is being compared to `0x7`, and calling `explode_bomb()` if it is greater. meaning our first number cannot be greater than 7.

further down, we can piece together a switch statement where the return register (`%eax`) is `num2`:
```c
int num2;
switch (num1) {
  case 2:
    num2 = 0x3AE;
    break;
  case 3:
    num2 = 0x16A;
    break;
  case 4:
    num2 = 0x358;
    break;
  case 5:
    num2 = 0x44;
    break;
  case 6:
    num2 = 0x102;
    break;
  default:
    explode_bomb();
}
return num2;
```

### phase 4 (recursive function)
from the assembly code, as per usual, there's a memory address worth looking at:
```
0x0000555555555718  ? lea    0x1cc7(%rip),%rsi        # 0x5555555573e6
>>> x/s 0x5555555573e6
   0x5555555573e6:	"%d %d"
```
without any other information, this looks like our input is to be 2 signed integers separated by a space.

```
>>> x/d $rsp + 0xc
   0x7fffffffe08c:	7
>>> x/d $rsp + 0x8
   0x7fffffffe088:	10
```
our first and second numbers are stored in the above memory addresses respectively (accessed via stack pointer).

```
0x000055555555572e <+40>:	cmpl   $0xe,0xc(%rsp)
0x0000555555555733 <+45>:	jbe    0x55555555573a <phase_4+52>
0x0000555555555735 <+47>:	call   0x555555555c49 <explode_bomb>
0x000055555555573a <+52>:	mov    $0xe,%edx
```
in the above assembly, our first number (`%rsp + 0xC`) is being compared to `0xE` (14), where the function continues if it is less than or equal (`jbe`) to 14, or calls `explode_bomb()` if it is greater. 

`%edi` (1st arugment register) is set to our first number.\
`%esi` (2nd argument register) is set to 0.\
`%edx` (3rd argument register) is set to 14.\
`func4` is then called with the afformentioned parameters.

```
 0x00005555555556dc <+5>:	mov    %edx,%ebx
 0x00005555555556e0 <+9>:	shr    %ebx
 0x00005555555556e4 <+13>:	cmp    %edi,%ebx
 0x00005555555556e6 <+15>:	ja     0x5555555556ee <func4+23>
 0x00005555555556e8 <+17>:	jb     0x5555555556fa <func4+35>
```
in the above assembly, `%ebx` is assigned `%edx`'s value (14), and shifted right by 1, essentially dividing it by 2.\
then our first number (`%edi`) is compared to 7, then the next instruction jumps whether it's above or below, respectively. (**this sure looks like a binary search tree!**)

num1 below 7:
```
0x00005555555556ee <+23>:	lea    -0x1(%rbx),%edx
0x00005555555556f1 <+26>:	call   0x5555555556d7 <func4>
```

num1 above 7:
```
0x00005555555556fa <+35>:	lea    0x1(%rbx),%esi
0x00005555555556fd <+38>:	call   0x5555555556d7 <func4>
```

what's important here is the register that's being operated on by the `lea` instruction. recall `%edx` is the third argument to `func4()`, and `%esi` is the second argument. this obviously produces different results when the function is called again (recursively).

now back in `phase_4`:
```
0x0000555555555748 <+66>:	call   0x5555555556d7 <func4>
0x000055555555574d <+71>:	cmp    $0xd,%eax
0x0000555555555750 <+74>:	jne    0x555555555759 <phase_4+83>
0x0000555555555752 <+76>:	cmpl   $0xd,0x8(%rsp)
0x0000555555555757 <+81>:	je     0x55555555575e <phase_4+88>
0x0000555555555759 <+83>:	call   0x555555555c49 <explode_bomb>
```
we can see after the call to `func4`, its expected return value is `0xD` (13), otherwise `explode_bomb()` function is called.\
next, our second number (`$rsp + 0x8`) is compared to 13 as well, and calls `explode_bomb()` if it is not equal.\
*so it's clear second number must be 13*

### phase 5
from the assembly code, as per usual, there's a memory address worth looking at:
```
0x0000555555555718  ? lea    0x1cc7(%rip),%rsi        # 0x5555555573e6
>>> x/s 0x5555555573e6
   0x5555555573e6:	"%d %d"
```
without any other information, this looks like our input is to be 2 signed integers separated by a space.

```
0x000055555555578b <+40>:	mov    0xc(%rsp),%eax
0x000055555555578f <+44>:	and    $0xf,%eax
...
0x0000555555555796 <+51>:	cmp    $0xf,%eax
0x0000555555555799 <+54>:	je     0x5555555557ce <phase_5+107>
0x00005555555557ce <+107>:	call   0x555555555c49 <explode_bomb>
```
here we can see our first number is being truncated to its lower 4 bits using `0xF` as a mask.\
then, those bits are compared to `0xF`, and `explode_bomb()` is called if equal. this means our first number cannot be 15, because `0xF & 0xF` obviously equals 15.

next, a 16 integer array is initialised:
```
0x00005555555557a5 <+66>:	lea    0x1a54(%rip),%rsi        # 0x555555557200 <array.0>
>>> x/16w $rsi
0x555555557200 <array.0>:	10	2	14	7
0x555555557210 <array.0+16>:	8	12	15	11
0x555555557220 <array.0+32>:	0	4	1	13
0x555555557230 <array.0+48>:	3	9	6	5
```

the program iterates through the array via incrementing `%edx`, and sums each element in `%ecx`.\
this is what our second number is meant to be, so in the case of my array, it's 115.

### phase 6
early on, `phase_6` function calls `read_six_numbers()`, like phase 2, so our input must be in the format of `"%d %d %d %d %d %d"`.
further down, we can see our inputs must be $1 <= n <= 6$, and must all be unique.

there's an array initialised at the following memory address:
```shell
0x0000555555555857 <+120>:	lea    0x3dd2(%rip),%rdx        # 0x555555559630 <node1>
>>> x/24d 0x555555559630
#                       value   idx   ptr->next
0x555555559630 <node1>:	456	    1	    1431672384
0x555555559640 <node2>:	730	    2	    1431672400
0x555555559650 <node3>:	470	    3	    1431672416
0x555555559660 <node4>:	767	    4	    1431672432
0x555555559670 <node5>:	703	    5	    1431671072
```
above we're given 5 numbers in an array. "`node`" indicates this is a list of some sort. based off the fact our input was 6 numbers, there's likely a missing value here. the third column (`ptr->next`) are addresses pointing to the next value.

attempting to view what's contained in this address results in an error, but also outputs the value's address relative to my system.
```
>>> x/d 1431671072
   0x55559120:	Cannot access memory at address 0x55559120
>>> x/d 0x555555559120
   0x555555559120 <node6>:	614
```

clearly, this is a linked list that's sorted in some manner.
```assembly
mov    (%rsp),%rbx
mov    0x8(%rsp),%rax
mov    %rax,0x8(%rbx)
mov    0x10(%rsp),%rdx
mov    %rdx,0x8(%rax)
mov    0x18(%rsp),%rax
mov    %rax,0x8(%rdx)
mov    0x20(%rsp),%rdx
mov    %rdx,0x8(%rax)
mov    0x28(%rsp),%rax
mov    %rax,0x8(%rdx)
```
from the above assembly, we can see it's sorted in ascending order, and expects our input to be as such.\
if we recall our numbers:\
$n_1 = 456$\
$n_2 = 730$\
$n_3 = 470$\
$n_4 = 767$\
$n_5 = 703$\
$n_6 = 614$\
these numbers arranged in ascending order would be **1, 3, 6, 5, 2, 4**, which is our answer :^)
