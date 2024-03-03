<phase_3>:
sub    $0x18,%rsp
lea    0x8(%rsp),%rcx
lea    0xc(%rsp),%rdx
lea    0x1d95(%rip),%rsi
mov    $0x0,%eax              # eax = 0
call   12e0 <sscanf>          # scanf(%d %d, num1, num2)  (returns number of input arguments to %eax)
cmp    $0x1,%eax              # if (2 != eax)             (verify 2 input arguments)
jle    167c <phase_3+0x44>    #   explode_bomb()
cmpl   $0x7,0xc(%rsp)         # if (num1 > 7)
ja     16bd <phase_3+0x85>    #   explode_bomb()
mov    0xc(%rsp),%eax         # eax = num1
lea    0x1b6e(%rip),%rdx      # rdx = arr[0]
movslq (%rdx,%rax,4),%rax
add    %rdx,%rax              # rax += rdx
jmp    *%rax                  # switch (num1) -------------
call   1c49 <explode_bomb>    #                           |
jmp    1660 <phase_3+0x28>    #                           |
mov    $0x28b,%eax            #                           |
cmp    %eax,0x8(%rsp)         # if (eax != num2) <------------------
jne    16d0 <phase_3+0x98>    #   explode_bomb()          |        |
add    $0x18,%rsp             # else                      |        |
ret                           #   return 0                |        | (non error)
mov    $0x3ae,%eax            # case 2: eax = 942 <--------        |
jmp    1688 <phase_3+0x50>    # -----------------------------------|
mov    $0x16a,%eax            # case 3: eax = 326                  |
jmp    1688 <phase_3+0x50>    # -----------------------------------|
mov    $0x358,%eax            # case 4: eax = 856                  |
jmp    1688 <phase_3+0x50>    # -----------------------------------|
mov    $0x44,%eax             # case 5: eax = 68                   |
jmp    1688 <phase_3+0x50>    # -----------------------------------|
mov    $0x102,%eax            # case 6: eax = 102                  |
jmp    1688 <phase_3+0x50>    # -----------------------------------|
mov    $0xc9,%eax             # case 7: eax = 201                  |
jmp    1688 <phase_3+0x50>    # ------------------------------------
call   1c49 <explode_bomb>
mov    $0x0,%eax
jmp    1688 <phase_3+0x50>
mov    $0x326,%eax
jmp    1688 <phase_3+0x50>
call   1c49 <explode_bomb>
jmp    168e <phase_3+0x56>
