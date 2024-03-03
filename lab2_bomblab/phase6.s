<phase_6>:
push   %r14
push   %r13
push   %r12
push   %rbp
push   %rbx
sub    $0x50,%rsp
lea    0x30(%rsp),%r13
mov    %r13,%rsi
call   1c96 <read_six_numbers>
mov    $0x1,%r14d
mov    %r13,%r12
jmp    182f <phase_6+0x50>
call   1c49 <explode_bomb>
jmp    183e <phase_6+0x5f>
add    $0x1,%rbx
cmp    $0x5,%ebx
jg     1827 <phase_6+0x48>
mov    (%r12,%rbx,4),%eax
cmp    %eax,0x0(%rbp)
jne    180e <phase_6+0x2f>
call   1c49 <explode_bomb>
jmp    180e <phase_6+0x2f>
add    $0x1,%r14
add    $0x4,%r13
mov    %r13,%rbp
mov    0x0(%r13),%eax
sub    $0x1,%eax
cmp    $0x5,%eax
ja     1807 <phase_6+0x28>
cmp    $0x5,%r14d
jg     1849 <phase_6+0x6a>
mov    %r14,%rbx
jmp    1817 <phase_6+0x38>
mov    $0x0,%esi
mov    0x30(%rsp,%rsi,4),%ecx
mov    $0x1,%eax
lea    0x3dd2(%rip),%rdx
cmp    $0x1,%ecx
jle    186e <phase_6+0x8f>
mov    0x8(%rdx),%rdx
add    $0x1,%eax
cmp    %ecx,%eax
jne    1863 <phase_6+0x84>
mov    %rdx,(%rsp,%rsi,8)
add    $0x1,%rsi
cmp    $0x6,%rsi
jne    184e <phase_6+0x6f>
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
movq   $0x0,0x8(%rax)
mov    $0x5,%ebp
jmp    18c5 <phase_6+0xe6>
mov    0x8(%rbx),%rbx
sub    $0x1,%ebp
je     18d6 <phase_6+0xf7>
mov    0x8(%rbx),%rax
mov    (%rax),%eax
cmp    %eax,(%rbx)
jle    18bc <phase_6+0xdd>
call   1c49 <explode_bomb>
jmp    18bc <phase_6+0xdd>
add    $0x50,%rsp
pop    %rbx
pop    %rbp
pop    %r12
pop    %r13
pop    %r14
ret
