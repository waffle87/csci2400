<phase_2>:
push   %rbp
push   %rbx
sub    $0x28,%rsp
mov    %rsp,%rsi
call   1c96 <read_six_numbers>    # input: num[6]
cmpl   $0x0,(%rsp)                # if (num1 < 0)
js     160d <phase_2+0x22>        #   explode_bomb()
mov    %rsp,%rbp                  # rbp = num[0..5]
mov    $0x1,%ebx                  # ebx = 1
jmp    1620 <phase_2+0x35>        # ----------------------
call   1c49 <explode_bomb>        #                      |
jmp    1603 <phase_2+0x18>        #                      |
add    $0x1,%ebx                  # ebx++ <--------------------
add    $0x4,%rbp                  # rbp = num[2]         |    |
cmp    $0x6,%ebx                  # if (ebx == 6)        |    |
je     1631 <phase_2+0x46>        #   return 0           |    | (non error)
mov    %ebx,%eax                  # eax = ebx <-----------    |
add    0x0(%rbp),%eax             # eax += num[ebx]           |
cmp    %eax,0x4(%rbp)             # if (eax == num[ebx])      |
je     1614 <phase_2+0x29>        #   -------------------------
call   1c49 <explode_bomb>
jmp    1614 <phase_2+0x29>
add    $0x28,%rsp
pop    %rbx
pop    %rbp
ret
