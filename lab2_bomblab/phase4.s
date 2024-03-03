<phase_4>:
sub    $0x18,%rsp
lea    0x8(%rsp),%rcx
lea    0xc(%rsp),%rdx
lea    0x1cc7(%rip),%rsi
mov    $0x0,%eax                # eax = 0
call   12e0 <sscanf>            # scanf(%d %d, num1, num2)  (returns number of input arguments to %eax)
cmp    $0x2,%eax                # if (2 != eax)             (verify 2 input arguments)
jne    1735 <phase_4+0x2f>      #   explode_bomb()
cmpl   $0xe,0xc(%rsp)           # if (num1 <= 14)
jbe    173a <phase_4+0x34>      #   continue
call   1c49 <explode_bomb>      # else explode_bomb()
mov    $0xe,%edx                # edx = 14                  (arg3)
mov    $0x0,%esi                # esi = 0                   (arg2)
mov    0xc(%rsp),%edi           # edi = num1                (arg1)
call   16d7 <func4>             # func4(num1, 0, 14)
cmp    $0xd,%eax                # if (func4_ret != 13)
jne    1759 <phase_4+0x53>      #   explode_bomb()
cmpl   $0xd,0x8(%rsp)           # if (num2 == 13)
je     175e <phase_4+0x58>      #   return 0                (non error)
call   1c49 <explode_bomb>
add    $0x18,%rsp
ret

<func4>:
push   %rbx
mov    %edx,%ebx                # ebx = 14
sub    %esi,%ebx                # ebx -= 0 (= 14)
shr    %ebx                     # ebx >> 1 (= 7)
add    %esi,%ebx                # ebx += 0 (= 7)
cmp    %edi,%ebx                # num1 : 7
ja     16ee <func4+0x17>        # if (num1 < 7) ----------------
jb     16fa <func4+0x23>        # if (num1 > 7) ---------------|-----------
mov    %ebx,%eax         #  --> # return eax = ebx             |          |
pop    %rbx              #  |   #                              |          |
ret                      #  |   #                              |          |
lea    -0x1(%rbx),%edx   #  |   # edx += (rbx - 1) <------------          |
call   16d7 <func4>      #  |   # func4(num1, 0, edx)                     |
add    %eax,%ebx         #  |   # ebx += eax                              |
jmp    16ea <func4+0x13> #  |-- #                                         |
lea    0x1(%rbx),%esi    #  |   # esi += (rbx + 1) <-----------------------
call   16d7 <func4>      #  |   # func4(num1, esi 14)
add    %eax,%ebx         #  |   # ebx += eax
jmp    16ea <func4+0x13> #  --- #
