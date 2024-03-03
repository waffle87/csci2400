<phase_5>:
sub    $0x18,%rsp
lea    0x8(%rsp),%rcx
lea    0xc(%rsp),%rdx
lea    0x1c6a(%rip),%rsi
mov    $0x0,%eax              # eax = 0
call   12e0 <sscanf>          # sscanf(%d %d, num1, num2)   (returns number of input arguments to %eax)
cmp    $0x1,%eax              # if (1 <= eax)               (verify 2 input arguments)
jle    17d8 <phase_5+0x75>    #   explode_bomb()
mov    0xc(%rsp),%eax         # eax = num1
and    $0xf,%eax              # eax &= 0xF
mov    %eax,0xc(%rsp)         # num1 = eax
cmp    $0xf,%eax              # if (15 == eax)
je     17ce <phase_5+0x6b>    #   explode_bomb()
mov    $0x0,%ecx              # ecx = 0         (arg4)
mov    $0x0,%edx              # edx = 0         (arg3)
lea    0x1a54(%rip),%rsi      # 0x555555557200  (16 integer array: x/16d $rsi)
add    $0x1,%edx              # edx++ <------------------
cltq                          # edx = (long)edx         |
mov    (%rsi,%rax,4),%eax     # eax = array[edx]        |
add    %eax,%ecx              # ecx += eax              |
cmp    $0xf,%eax              # if (15 != eax)          |
jne    17ac <phase_5+0x49>    #   -----------------------
movl   $0xf,0xc(%rsp)         # num1 = 15
cmp    $0xf,%edx              # if (15 != edx)
jne    17ce <phase_5+0x6b>    #   explode_bomb()
cmp    %ecx,0x8(%rsp)         # if (ecx == num2)
je     17d3 <phase_5+0x70>    #   return 0      (non error)
call   1c49 <explode_bomb>    # else explode_bomb()
add    $0x18,%rsp
ret
