
bomb9/bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 d2 3e 00 00    	push   0x3ed2(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 d3 3e 00 00 	bnd jmp *0x3ed3(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	f2 ff 25 1d 3e 00 00 	bnd jmp *0x3e1d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011e0 <getenv@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	f2 ff 25 1d 3d 00 00 	bnd jmp *0x3d1d(%rip)        # 4f08 <getenv@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <__errno_location@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	f2 ff 25 15 3d 00 00 	bnd jmp *0x3d15(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcpy@plt>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	f2 ff 25 0d 3d 00 00 	bnd jmp *0x3d0d(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <puts@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <write@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strlen@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f30 <strlen@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <alarm@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <close@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <read@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <fgets@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <strcmp@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <signal@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <gethostbyname@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <__memmove_chk@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <strtol@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <fflush@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <__isoc99_sscanf@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__printf_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <fopen@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <exit@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <connect@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__fprintf_chk@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <sleep@plt>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__ctype_b_loc@plt>:
    1350:	f3 0f 1e fa          	endbr64
    1354:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__sprintf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <socket@plt>:
    1370:	f3 0f 1e fa          	endbr64
    1374:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001380 <_start>:
    1380:	f3 0f 1e fa          	endbr64
    1384:	31 ed                	xor    %ebp,%ebp
    1386:	49 89 d1             	mov    %rdx,%r9
    1389:	5e                   	pop    %rsi
    138a:	48 89 e2             	mov    %rsp,%rdx
    138d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1391:	50                   	push   %rax
    1392:	54                   	push   %rsp
    1393:	45 31 c0             	xor    %r8d,%r8d
    1396:	31 c9                	xor    %ecx,%ecx
    1398:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1469 <main>
    139f:	ff 15 33 3c 00 00    	call   *0x3c33(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13a5:	f4                   	hlt
    13a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ad:	00 00 00 

00000000000013b0 <deregister_tm_clones>:
    13b0:	48 8d 3d c9 46 00 00 	lea    0x46c9(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13b7:	48 8d 05 c2 46 00 00 	lea    0x46c2(%rip),%rax        # 5a80 <stdout@GLIBC_2.2.5>
    13be:	48 39 f8             	cmp    %rdi,%rax
    13c1:	74 15                	je     13d8 <deregister_tm_clones+0x28>
    13c3:	48 8b 05 16 3c 00 00 	mov    0x3c16(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ca:	48 85 c0             	test   %rax,%rax
    13cd:	74 09                	je     13d8 <deregister_tm_clones+0x28>
    13cf:	ff e0                	jmp    *%rax
    13d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13d8:	c3                   	ret
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <register_tm_clones>:
    13e0:	48 8d 3d 99 46 00 00 	lea    0x4699(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13e7:	48 8d 35 92 46 00 00 	lea    0x4692(%rip),%rsi        # 5a80 <stdout@GLIBC_2.2.5>
    13ee:	48 29 fe             	sub    %rdi,%rsi
    13f1:	48 89 f0             	mov    %rsi,%rax
    13f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13f8:	48 c1 f8 03          	sar    $0x3,%rax
    13fc:	48 01 c6             	add    %rax,%rsi
    13ff:	48 d1 fe             	sar    %rsi
    1402:	74 14                	je     1418 <register_tm_clones+0x38>
    1404:	48 8b 05 e5 3b 00 00 	mov    0x3be5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    140b:	48 85 c0             	test   %rax,%rax
    140e:	74 08                	je     1418 <register_tm_clones+0x38>
    1410:	ff e0                	jmp    *%rax
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1418:	c3                   	ret
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <__do_global_dtors_aux>:
    1420:	f3 0f 1e fa          	endbr64
    1424:	80 3d 7d 46 00 00 00 	cmpb   $0x0,0x467d(%rip)        # 5aa8 <completed.0>
    142b:	75 2b                	jne    1458 <__do_global_dtors_aux+0x38>
    142d:	55                   	push   %rbp
    142e:	48 83 3d c2 3b 00 00 	cmpq   $0x0,0x3bc2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1435:	00 
    1436:	48 89 e5             	mov    %rsp,%rbp
    1439:	74 0c                	je     1447 <__do_global_dtors_aux+0x27>
    143b:	48 8b 3d c6 3b 00 00 	mov    0x3bc6(%rip),%rdi        # 5008 <__dso_handle>
    1442:	e8 89 fd ff ff       	call   11d0 <__cxa_finalize@plt>
    1447:	e8 64 ff ff ff       	call   13b0 <deregister_tm_clones>
    144c:	c6 05 55 46 00 00 01 	movb   $0x1,0x4655(%rip)        # 5aa8 <completed.0>
    1453:	5d                   	pop    %rbp
    1454:	c3                   	ret
    1455:	0f 1f 00             	nopl   (%rax)
    1458:	c3                   	ret
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <frame_dummy>:
    1460:	f3 0f 1e fa          	endbr64
    1464:	e9 77 ff ff ff       	jmp    13e0 <register_tm_clones>

0000000000001469 <main>:
    1469:	f3 0f 1e fa          	endbr64
    146d:	53                   	push   %rbx
    146e:	83 ff 01             	cmp    $0x1,%edi
    1471:	0f 84 f8 00 00 00    	je     156f <main+0x106>
    1477:	48 89 f3             	mov    %rsi,%rbx
    147a:	83 ff 02             	cmp    $0x2,%edi
    147d:	0f 85 21 01 00 00    	jne    15a4 <main+0x13b>
    1483:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1487:	48 8d 35 76 1b 00 00 	lea    0x1b76(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    148e:	e8 6d fe ff ff       	call   1300 <fopen@plt>
    1493:	48 89 05 16 46 00 00 	mov    %rax,0x4616(%rip)        # 5ab0 <infile>
    149a:	48 85 c0             	test   %rax,%rax
    149d:	0f 84 df 00 00 00    	je     1582 <main+0x119>
    14a3:	e8 fa 05 00 00       	call   1aa2 <initialize_bomb>
    14a8:	48 8d 3d d9 1b 00 00 	lea    0x1bd9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14af:	e8 5c fd ff ff       	call   1210 <puts@plt>
    14b4:	48 8d 3d 0d 1c 00 00 	lea    0x1c0d(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14bb:	e8 50 fd ff ff       	call   1210 <puts@plt>
    14c0:	e8 16 08 00 00       	call   1cdb <read_line>
    14c5:	48 89 c7             	mov    %rax,%rdi
    14c8:	e8 fa 00 00 00       	call   15c7 <phase_1>
    14cd:	e8 38 09 00 00       	call   1e0a <phase_defused>
    14d2:	48 8d 3d 1f 1c 00 00 	lea    0x1c1f(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14d9:	e8 32 fd ff ff       	call   1210 <puts@plt>
    14de:	e8 f8 07 00 00       	call   1cdb <read_line>
    14e3:	48 89 c7             	mov    %rax,%rdi
    14e6:	e8 00 01 00 00       	call   15eb <phase_2>
    14eb:	e8 1a 09 00 00       	call   1e0a <phase_defused>
    14f0:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    14f7:	e8 14 fd ff ff       	call   1210 <puts@plt>
    14fc:	e8 da 07 00 00       	call   1cdb <read_line>
    1501:	48 89 c7             	mov    %rax,%rdi
    1504:	e8 2f 01 00 00       	call   1638 <phase_3>
    1509:	e8 fc 08 00 00       	call   1e0a <phase_defused>
    150e:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1515:	e8 f6 fc ff ff       	call   1210 <puts@plt>
    151a:	e8 bc 07 00 00       	call   1cdb <read_line>
    151f:	48 89 c7             	mov    %rax,%rdi
    1522:	e8 df 01 00 00       	call   1706 <phase_4>
    1527:	e8 de 08 00 00       	call   1e0a <phase_defused>
    152c:	48 8d 3d f5 1b 00 00 	lea    0x1bf5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1533:	e8 d8 fc ff ff       	call   1210 <puts@plt>
    1538:	e8 9e 07 00 00       	call   1cdb <read_line>
    153d:	48 89 c7             	mov    %rax,%rdi
    1540:	e8 1e 02 00 00       	call   1763 <phase_5>
    1545:	e8 c0 08 00 00       	call   1e0a <phase_defused>
    154a:	48 8d 3d 19 1b 00 00 	lea    0x1b19(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1551:	e8 ba fc ff ff       	call   1210 <puts@plt>
    1556:	e8 80 07 00 00       	call   1cdb <read_line>
    155b:	48 89 c7             	mov    %rax,%rdi
    155e:	e8 7c 02 00 00       	call   17df <phase_6>
    1563:	e8 a2 08 00 00       	call   1e0a <phase_defused>
    1568:	b8 00 00 00 00       	mov    $0x0,%eax
    156d:	5b                   	pop    %rbx
    156e:	c3                   	ret
    156f:	48 8b 05 1a 45 00 00 	mov    0x451a(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1576:	48 89 05 33 45 00 00 	mov    %rax,0x4533(%rip)        # 5ab0 <infile>
    157d:	e9 21 ff ff ff       	jmp    14a3 <main+0x3a>
    1582:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1586:	48 8b 13             	mov    (%rbx),%rdx
    1589:	48 8d 35 76 1a 00 00 	lea    0x1a76(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1590:	bf 01 00 00 00       	mov    $0x1,%edi
    1595:	e8 56 fd ff ff       	call   12f0 <__printf_chk@plt>
    159a:	bf 08 00 00 00       	mov    $0x8,%edi
    159f:	e8 6c fd ff ff       	call   1310 <exit@plt>
    15a4:	48 8b 16             	mov    (%rsi),%rdx
    15a7:	48 8d 35 75 1a 00 00 	lea    0x1a75(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	b8 00 00 00 00       	mov    $0x0,%eax
    15b8:	e8 33 fd ff ff       	call   12f0 <__printf_chk@plt>
    15bd:	bf 08 00 00 00       	mov    $0x8,%edi
    15c2:	e8 49 fd ff ff       	call   1310 <exit@plt>

00000000000015c7 <phase_1>:
    15c7:	f3 0f 1e fa          	endbr64
    15cb:	48 83 ec 08          	sub    $0x8,%rsp
    15cf:	48 8d 35 7a 1b 00 00 	lea    0x1b7a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15d6:	e8 55 04 00 00       	call   1a30 <strings_not_equal>
    15db:	85 c0                	test   %eax,%eax
    15dd:	75 05                	jne    15e4 <phase_1+0x1d>
    15df:	48 83 c4 08          	add    $0x8,%rsp
    15e3:	c3                   	ret
    15e4:	e8 60 06 00 00       	call   1c49 <explode_bomb>
    15e9:	eb f4                	jmp    15df <phase_1+0x18>

00000000000015eb <phase_2>:
    15eb:	f3 0f 1e fa          	endbr64
    15ef:	55                   	push   %rbp
    15f0:	53                   	push   %rbx
    15f1:	48 83 ec 28          	sub    $0x28,%rsp
    15f5:	48 89 e6             	mov    %rsp,%rsi
    15f8:	e8 99 06 00 00       	call   1c96 <read_six_numbers>
    15fd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1601:	78 0a                	js     160d <phase_2+0x22>
    1603:	48 89 e5             	mov    %rsp,%rbp
    1606:	bb 01 00 00 00       	mov    $0x1,%ebx
    160b:	eb 13                	jmp    1620 <phase_2+0x35>
    160d:	e8 37 06 00 00       	call   1c49 <explode_bomb>
    1612:	eb ef                	jmp    1603 <phase_2+0x18>
    1614:	83 c3 01             	add    $0x1,%ebx
    1617:	48 83 c5 04          	add    $0x4,%rbp
    161b:	83 fb 06             	cmp    $0x6,%ebx
    161e:	74 11                	je     1631 <phase_2+0x46>
    1620:	89 d8                	mov    %ebx,%eax
    1622:	03 45 00             	add    0x0(%rbp),%eax
    1625:	39 45 04             	cmp    %eax,0x4(%rbp)
    1628:	74 ea                	je     1614 <phase_2+0x29>
    162a:	e8 1a 06 00 00       	call   1c49 <explode_bomb>
    162f:	eb e3                	jmp    1614 <phase_2+0x29>
    1631:	48 83 c4 28          	add    $0x28,%rsp
    1635:	5b                   	pop    %rbx
    1636:	5d                   	pop    %rbp
    1637:	c3                   	ret

0000000000001638 <phase_3>:
    1638:	f3 0f 1e fa          	endbr64
    163c:	48 83 ec 18          	sub    $0x18,%rsp
    1640:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1645:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    164a:	48 8d 35 95 1d 00 00 	lea    0x1d95(%rip),%rsi        # 33e6 <array.0+0x1e6>
    1651:	b8 00 00 00 00       	mov    $0x0,%eax
    1656:	e8 85 fc ff ff       	call   12e0 <__isoc99_sscanf@plt>
    165b:	83 f8 01             	cmp    $0x1,%eax
    165e:	7e 1c                	jle    167c <phase_3+0x44>
    1660:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    1665:	77 56                	ja     16bd <phase_3+0x85>
    1667:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    166b:	48 8d 15 6e 1b 00 00 	lea    0x1b6e(%rip),%rdx        # 31e0 <_IO_stdin_used+0x1e0>
    1672:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1676:	48 01 d0             	add    %rdx,%rax
    1679:	3e ff e0             	notrack jmp *%rax
    167c:	e8 c8 05 00 00       	call   1c49 <explode_bomb>
    1681:	eb dd                	jmp    1660 <phase_3+0x28>
    1683:	b8 8b 02 00 00       	mov    $0x28b,%eax
    1688:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    168c:	75 42                	jne    16d0 <phase_3+0x98>
    168e:	48 83 c4 18          	add    $0x18,%rsp
    1692:	c3                   	ret
    1693:	b8 ae 03 00 00       	mov    $0x3ae,%eax
    1698:	eb ee                	jmp    1688 <phase_3+0x50>
    169a:	b8 6a 01 00 00       	mov    $0x16a,%eax
    169f:	eb e7                	jmp    1688 <phase_3+0x50>
    16a1:	b8 58 03 00 00       	mov    $0x358,%eax
    16a6:	eb e0                	jmp    1688 <phase_3+0x50>
    16a8:	b8 44 00 00 00       	mov    $0x44,%eax
    16ad:	eb d9                	jmp    1688 <phase_3+0x50>
    16af:	b8 02 01 00 00       	mov    $0x102,%eax
    16b4:	eb d2                	jmp    1688 <phase_3+0x50>
    16b6:	b8 c9 00 00 00       	mov    $0xc9,%eax
    16bb:	eb cb                	jmp    1688 <phase_3+0x50>
    16bd:	e8 87 05 00 00       	call   1c49 <explode_bomb>
    16c2:	b8 00 00 00 00       	mov    $0x0,%eax
    16c7:	eb bf                	jmp    1688 <phase_3+0x50>
    16c9:	b8 26 03 00 00       	mov    $0x326,%eax
    16ce:	eb b8                	jmp    1688 <phase_3+0x50>
    16d0:	e8 74 05 00 00       	call   1c49 <explode_bomb>
    16d5:	eb b7                	jmp    168e <phase_3+0x56>

00000000000016d7 <func4>:
    16d7:	f3 0f 1e fa          	endbr64
    16db:	53                   	push   %rbx
    16dc:	89 d3                	mov    %edx,%ebx
    16de:	29 f3                	sub    %esi,%ebx
    16e0:	d1 eb                	shr    %ebx
    16e2:	01 f3                	add    %esi,%ebx
    16e4:	39 fb                	cmp    %edi,%ebx
    16e6:	77 06                	ja     16ee <func4+0x17>
    16e8:	72 10                	jb     16fa <func4+0x23>
    16ea:	89 d8                	mov    %ebx,%eax
    16ec:	5b                   	pop    %rbx
    16ed:	c3                   	ret
    16ee:	8d 53 ff             	lea    -0x1(%rbx),%edx
    16f1:	e8 e1 ff ff ff       	call   16d7 <func4>
    16f6:	01 c3                	add    %eax,%ebx
    16f8:	eb f0                	jmp    16ea <func4+0x13>
    16fa:	8d 73 01             	lea    0x1(%rbx),%esi
    16fd:	e8 d5 ff ff ff       	call   16d7 <func4>
    1702:	01 c3                	add    %eax,%ebx
    1704:	eb e4                	jmp    16ea <func4+0x13>

0000000000001706 <phase_4>:
    1706:	f3 0f 1e fa          	endbr64
    170a:	48 83 ec 18          	sub    $0x18,%rsp
    170e:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1713:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1718:	48 8d 35 c7 1c 00 00 	lea    0x1cc7(%rip),%rsi        # 33e6 <array.0+0x1e6>
    171f:	b8 00 00 00 00       	mov    $0x0,%eax
    1724:	e8 b7 fb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1729:	83 f8 02             	cmp    $0x2,%eax
    172c:	75 07                	jne    1735 <phase_4+0x2f>
    172e:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
    1733:	76 05                	jbe    173a <phase_4+0x34>
    1735:	e8 0f 05 00 00       	call   1c49 <explode_bomb>
    173a:	ba 0e 00 00 00       	mov    $0xe,%edx
    173f:	be 00 00 00 00       	mov    $0x0,%esi
    1744:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1748:	e8 8a ff ff ff       	call   16d7 <func4>
    174d:	83 f8 0d             	cmp    $0xd,%eax
    1750:	75 07                	jne    1759 <phase_4+0x53>
    1752:	83 7c 24 08 0d       	cmpl   $0xd,0x8(%rsp)
    1757:	74 05                	je     175e <phase_4+0x58>
    1759:	e8 eb 04 00 00       	call   1c49 <explode_bomb>
    175e:	48 83 c4 18          	add    $0x18,%rsp
    1762:	c3                   	ret

0000000000001763 <phase_5>:
    1763:	f3 0f 1e fa          	endbr64
    1767:	48 83 ec 18          	sub    $0x18,%rsp
    176b:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1770:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1775:	48 8d 35 6a 1c 00 00 	lea    0x1c6a(%rip),%rsi        # 33e6 <array.0+0x1e6>
    177c:	b8 00 00 00 00       	mov    $0x0,%eax
    1781:	e8 5a fb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1786:	83 f8 01             	cmp    $0x1,%eax
    1789:	7e 4d                	jle    17d8 <phase_5+0x75>
    178b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    178f:	83 e0 0f             	and    $0xf,%eax
    1792:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1796:	83 f8 0f             	cmp    $0xf,%eax
    1799:	74 33                	je     17ce <phase_5+0x6b>
    179b:	b9 00 00 00 00       	mov    $0x0,%ecx
    17a0:	ba 00 00 00 00       	mov    $0x0,%edx
    17a5:	48 8d 35 54 1a 00 00 	lea    0x1a54(%rip),%rsi        # 3200 <array.0>
    17ac:	83 c2 01             	add    $0x1,%edx
    17af:	48 98                	cltq
    17b1:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    17b4:	01 c1                	add    %eax,%ecx
    17b6:	83 f8 0f             	cmp    $0xf,%eax
    17b9:	75 f1                	jne    17ac <phase_5+0x49>
    17bb:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%rsp)
    17c2:	00 
    17c3:	83 fa 0f             	cmp    $0xf,%edx
    17c6:	75 06                	jne    17ce <phase_5+0x6b>
    17c8:	39 4c 24 08          	cmp    %ecx,0x8(%rsp)
    17cc:	74 05                	je     17d3 <phase_5+0x70>
    17ce:	e8 76 04 00 00       	call   1c49 <explode_bomb>
    17d3:	48 83 c4 18          	add    $0x18,%rsp
    17d7:	c3                   	ret
    17d8:	e8 6c 04 00 00       	call   1c49 <explode_bomb>
    17dd:	eb ac                	jmp    178b <phase_5+0x28>

00000000000017df <phase_6>:
    17df:	f3 0f 1e fa          	endbr64
    17e3:	41 56                	push   %r14
    17e5:	41 55                	push   %r13
    17e7:	41 54                	push   %r12
    17e9:	55                   	push   %rbp
    17ea:	53                   	push   %rbx
    17eb:	48 83 ec 50          	sub    $0x50,%rsp
    17ef:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    17f4:	4c 89 ee             	mov    %r13,%rsi
    17f7:	e8 9a 04 00 00       	call   1c96 <read_six_numbers>
    17fc:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1802:	4d 89 ec             	mov    %r13,%r12
    1805:	eb 28                	jmp    182f <phase_6+0x50>
    1807:	e8 3d 04 00 00       	call   1c49 <explode_bomb>
    180c:	eb 30                	jmp    183e <phase_6+0x5f>
    180e:	48 83 c3 01          	add    $0x1,%rbx
    1812:	83 fb 05             	cmp    $0x5,%ebx
    1815:	7f 10                	jg     1827 <phase_6+0x48>
    1817:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    181b:	39 45 00             	cmp    %eax,0x0(%rbp)
    181e:	75 ee                	jne    180e <phase_6+0x2f>
    1820:	e8 24 04 00 00       	call   1c49 <explode_bomb>
    1825:	eb e7                	jmp    180e <phase_6+0x2f>
    1827:	49 83 c6 01          	add    $0x1,%r14
    182b:	49 83 c5 04          	add    $0x4,%r13
    182f:	4c 89 ed             	mov    %r13,%rbp
    1832:	41 8b 45 00          	mov    0x0(%r13),%eax
    1836:	83 e8 01             	sub    $0x1,%eax
    1839:	83 f8 05             	cmp    $0x5,%eax
    183c:	77 c9                	ja     1807 <phase_6+0x28>
    183e:	41 83 fe 05          	cmp    $0x5,%r14d
    1842:	7f 05                	jg     1849 <phase_6+0x6a>
    1844:	4c 89 f3             	mov    %r14,%rbx
    1847:	eb ce                	jmp    1817 <phase_6+0x38>
    1849:	be 00 00 00 00       	mov    $0x0,%esi
    184e:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx
    1852:	b8 01 00 00 00       	mov    $0x1,%eax
    1857:	48 8d 15 d2 3d 00 00 	lea    0x3dd2(%rip),%rdx        # 5630 <node1>
    185e:	83 f9 01             	cmp    $0x1,%ecx
    1861:	7e 0b                	jle    186e <phase_6+0x8f>
    1863:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1867:	83 c0 01             	add    $0x1,%eax
    186a:	39 c8                	cmp    %ecx,%eax
    186c:	75 f5                	jne    1863 <phase_6+0x84>
    186e:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)
    1872:	48 83 c6 01          	add    $0x1,%rsi
    1876:	48 83 fe 06          	cmp    $0x6,%rsi
    187a:	75 d2                	jne    184e <phase_6+0x6f>
    187c:	48 8b 1c 24          	mov    (%rsp),%rbx
    1880:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1885:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1889:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    188e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1892:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1897:	48 89 42 08          	mov    %rax,0x8(%rdx)
    189b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    18a0:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18a4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18a9:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18ad:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    18b4:	00 
    18b5:	bd 05 00 00 00       	mov    $0x5,%ebp
    18ba:	eb 09                	jmp    18c5 <phase_6+0xe6>
    18bc:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    18c0:	83 ed 01             	sub    $0x1,%ebp
    18c3:	74 11                	je     18d6 <phase_6+0xf7>
    18c5:	48 8b 43 08          	mov    0x8(%rbx),%rax
    18c9:	8b 00                	mov    (%rax),%eax
    18cb:	39 03                	cmp    %eax,(%rbx)
    18cd:	7e ed                	jle    18bc <phase_6+0xdd>
    18cf:	e8 75 03 00 00       	call   1c49 <explode_bomb>
    18d4:	eb e6                	jmp    18bc <phase_6+0xdd>
    18d6:	48 83 c4 50          	add    $0x50,%rsp
    18da:	5b                   	pop    %rbx
    18db:	5d                   	pop    %rbp
    18dc:	41 5c                	pop    %r12
    18de:	41 5d                	pop    %r13
    18e0:	41 5e                	pop    %r14
    18e2:	c3                   	ret

00000000000018e3 <fun7>:
    18e3:	f3 0f 1e fa          	endbr64
    18e7:	48 85 ff             	test   %rdi,%rdi
    18ea:	74 32                	je     191e <fun7+0x3b>
    18ec:	48 83 ec 08          	sub    $0x8,%rsp
    18f0:	8b 17                	mov    (%rdi),%edx
    18f2:	39 f2                	cmp    %esi,%edx
    18f4:	7f 0c                	jg     1902 <fun7+0x1f>
    18f6:	b8 00 00 00 00       	mov    $0x0,%eax
    18fb:	75 12                	jne    190f <fun7+0x2c>
    18fd:	48 83 c4 08          	add    $0x8,%rsp
    1901:	c3                   	ret
    1902:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1906:	e8 d8 ff ff ff       	call   18e3 <fun7>
    190b:	01 c0                	add    %eax,%eax
    190d:	eb ee                	jmp    18fd <fun7+0x1a>
    190f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1913:	e8 cb ff ff ff       	call   18e3 <fun7>
    1918:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    191c:	eb df                	jmp    18fd <fun7+0x1a>
    191e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1923:	c3                   	ret

0000000000001924 <secret_phase>:
    1924:	f3 0f 1e fa          	endbr64
    1928:	53                   	push   %rbx
    1929:	e8 ad 03 00 00       	call   1cdb <read_line>
    192e:	48 89 c7             	mov    %rax,%rdi
    1931:	ba 0a 00 00 00       	mov    $0xa,%edx
    1936:	be 00 00 00 00       	mov    $0x0,%esi
    193b:	e8 80 f9 ff ff       	call   12c0 <strtol@plt>
    1940:	89 c3                	mov    %eax,%ebx
    1942:	83 e8 01             	sub    $0x1,%eax
    1945:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    194a:	77 26                	ja     1972 <secret_phase+0x4e>
    194c:	89 de                	mov    %ebx,%esi
    194e:	48 8d 3d fb 3b 00 00 	lea    0x3bfb(%rip),%rdi        # 5550 <n1>
    1955:	e8 89 ff ff ff       	call   18e3 <fun7>
    195a:	83 f8 03             	cmp    $0x3,%eax
    195d:	75 1a                	jne    1979 <secret_phase+0x55>
    195f:	48 8d 3d 52 18 00 00 	lea    0x1852(%rip),%rdi        # 31b8 <_IO_stdin_used+0x1b8>
    1966:	e8 a5 f8 ff ff       	call   1210 <puts@plt>
    196b:	e8 9a 04 00 00       	call   1e0a <phase_defused>
    1970:	5b                   	pop    %rbx
    1971:	c3                   	ret
    1972:	e8 d2 02 00 00       	call   1c49 <explode_bomb>
    1977:	eb d3                	jmp    194c <secret_phase+0x28>
    1979:	e8 cb 02 00 00       	call   1c49 <explode_bomb>
    197e:	eb df                	jmp    195f <secret_phase+0x3b>

0000000000001980 <sig_handler>:
    1980:	f3 0f 1e fa          	endbr64
    1984:	50                   	push   %rax
    1985:	58                   	pop    %rax
    1986:	48 83 ec 08          	sub    $0x8,%rsp
    198a:	48 8d 3d af 18 00 00 	lea    0x18af(%rip),%rdi        # 3240 <array.0+0x40>
    1991:	e8 7a f8 ff ff       	call   1210 <puts@plt>
    1996:	bf 03 00 00 00       	mov    $0x3,%edi
    199b:	e8 a0 f9 ff ff       	call   1340 <sleep@plt>
    19a0:	48 8d 35 ca 19 00 00 	lea    0x19ca(%rip),%rsi        # 3371 <array.0+0x171>
    19a7:	bf 01 00 00 00       	mov    $0x1,%edi
    19ac:	b8 00 00 00 00       	mov    $0x0,%eax
    19b1:	e8 3a f9 ff ff       	call   12f0 <__printf_chk@plt>
    19b6:	48 8b 3d c3 40 00 00 	mov    0x40c3(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    19bd:	e8 0e f9 ff ff       	call   12d0 <fflush@plt>
    19c2:	bf 01 00 00 00       	mov    $0x1,%edi
    19c7:	e8 74 f9 ff ff       	call   1340 <sleep@plt>
    19cc:	48 8d 3d a6 19 00 00 	lea    0x19a6(%rip),%rdi        # 3379 <array.0+0x179>
    19d3:	e8 38 f8 ff ff       	call   1210 <puts@plt>
    19d8:	bf 10 00 00 00       	mov    $0x10,%edi
    19dd:	e8 2e f9 ff ff       	call   1310 <exit@plt>

00000000000019e2 <invalid_phase>:
    19e2:	f3 0f 1e fa          	endbr64
    19e6:	50                   	push   %rax
    19e7:	58                   	pop    %rax
    19e8:	48 83 ec 08          	sub    $0x8,%rsp
    19ec:	48 89 fa             	mov    %rdi,%rdx
    19ef:	48 8d 35 8b 19 00 00 	lea    0x198b(%rip),%rsi        # 3381 <array.0+0x181>
    19f6:	bf 01 00 00 00       	mov    $0x1,%edi
    19fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1a00:	e8 eb f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a05:	bf 08 00 00 00       	mov    $0x8,%edi
    1a0a:	e8 01 f9 ff ff       	call   1310 <exit@plt>

0000000000001a0f <string_length>:
    1a0f:	f3 0f 1e fa          	endbr64
    1a13:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a16:	74 12                	je     1a2a <string_length+0x1b>
    1a18:	b8 00 00 00 00       	mov    $0x0,%eax
    1a1d:	48 83 c7 01          	add    $0x1,%rdi
    1a21:	83 c0 01             	add    $0x1,%eax
    1a24:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a27:	75 f4                	jne    1a1d <string_length+0xe>
    1a29:	c3                   	ret
    1a2a:	b8 00 00 00 00       	mov    $0x0,%eax
    1a2f:	c3                   	ret

0000000000001a30 <strings_not_equal>:
    1a30:	f3 0f 1e fa          	endbr64
    1a34:	41 54                	push   %r12
    1a36:	55                   	push   %rbp
    1a37:	53                   	push   %rbx
    1a38:	48 89 fb             	mov    %rdi,%rbx
    1a3b:	48 89 f5             	mov    %rsi,%rbp
    1a3e:	e8 cc ff ff ff       	call   1a0f <string_length>
    1a43:	41 89 c4             	mov    %eax,%r12d
    1a46:	48 89 ef             	mov    %rbp,%rdi
    1a49:	e8 c1 ff ff ff       	call   1a0f <string_length>
    1a4e:	89 c2                	mov    %eax,%edx
    1a50:	b8 01 00 00 00       	mov    $0x1,%eax
    1a55:	41 39 d4             	cmp    %edx,%r12d
    1a58:	75 31                	jne    1a8b <strings_not_equal+0x5b>
    1a5a:	0f b6 13             	movzbl (%rbx),%edx
    1a5d:	84 d2                	test   %dl,%dl
    1a5f:	74 1e                	je     1a7f <strings_not_equal+0x4f>
    1a61:	b8 00 00 00 00       	mov    $0x0,%eax
    1a66:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1a6a:	75 1a                	jne    1a86 <strings_not_equal+0x56>
    1a6c:	48 83 c0 01          	add    $0x1,%rax
    1a70:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1a74:	84 d2                	test   %dl,%dl
    1a76:	75 ee                	jne    1a66 <strings_not_equal+0x36>
    1a78:	b8 00 00 00 00       	mov    $0x0,%eax
    1a7d:	eb 0c                	jmp    1a8b <strings_not_equal+0x5b>
    1a7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a84:	eb 05                	jmp    1a8b <strings_not_equal+0x5b>
    1a86:	b8 01 00 00 00       	mov    $0x1,%eax
    1a8b:	5b                   	pop    %rbx
    1a8c:	5d                   	pop    %rbp
    1a8d:	41 5c                	pop    %r12
    1a8f:	c3                   	ret

0000000000001a90 <strings_are_equal>:
    1a90:	f3 0f 1e fa          	endbr64
    1a94:	e8 97 ff ff ff       	call   1a30 <strings_not_equal>
    1a99:	85 c0                	test   %eax,%eax
    1a9b:	0f 94 c0             	sete   %al
    1a9e:	0f b6 c0             	movzbl %al,%eax
    1aa1:	c3                   	ret

0000000000001aa2 <initialize_bomb>:
    1aa2:	f3 0f 1e fa          	endbr64
    1aa6:	48 83 ec 08          	sub    $0x8,%rsp
    1aaa:	48 8d 35 cf fe ff ff 	lea    -0x131(%rip),%rsi        # 1980 <sig_handler>
    1ab1:	bf 02 00 00 00       	mov    $0x2,%edi
    1ab6:	e8 d5 f7 ff ff       	call   1290 <signal@plt>
    1abb:	48 8d 3d d0 18 00 00 	lea    0x18d0(%rip),%rdi        # 3392 <array.0+0x192>
    1ac2:	e8 19 f7 ff ff       	call   11e0 <getenv@plt>
    1ac7:	48 85 c0             	test   %rax,%rax
    1aca:	0f 95 c0             	setne  %al
    1acd:	0f b6 c0             	movzbl %al,%eax
    1ad0:	89 05 ca 49 00 00    	mov    %eax,0x49ca(%rip)        # 64a0 <grade_bomb>
    1ad6:	48 83 c4 08          	add    $0x8,%rsp
    1ada:	c3                   	ret

0000000000001adb <initialize_bomb_solve>:
    1adb:	f3 0f 1e fa          	endbr64
    1adf:	c3                   	ret

0000000000001ae0 <blank_line>:
    1ae0:	f3 0f 1e fa          	endbr64
    1ae4:	55                   	push   %rbp
    1ae5:	53                   	push   %rbx
    1ae6:	48 83 ec 08          	sub    $0x8,%rsp
    1aea:	48 89 fd             	mov    %rdi,%rbp
    1aed:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1af1:	84 db                	test   %bl,%bl
    1af3:	74 1e                	je     1b13 <blank_line+0x33>
    1af5:	e8 56 f8 ff ff       	call   1350 <__ctype_b_loc@plt>
    1afa:	48 83 c5 01          	add    $0x1,%rbp
    1afe:	48 0f be db          	movsbq %bl,%rbx
    1b02:	48 8b 00             	mov    (%rax),%rax
    1b05:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b0a:	75 e1                	jne    1aed <blank_line+0xd>
    1b0c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b11:	eb 05                	jmp    1b18 <blank_line+0x38>
    1b13:	b8 01 00 00 00       	mov    $0x1,%eax
    1b18:	48 83 c4 08          	add    $0x8,%rsp
    1b1c:	5b                   	pop    %rbx
    1b1d:	5d                   	pop    %rbp
    1b1e:	c3                   	ret

0000000000001b1f <skip>:
    1b1f:	f3 0f 1e fa          	endbr64
    1b23:	55                   	push   %rbp
    1b24:	53                   	push   %rbx
    1b25:	48 83 ec 08          	sub    $0x8,%rsp
    1b29:	48 8d 2d 10 40 00 00 	lea    0x4010(%rip),%rbp        # 5b40 <input_strings>
    1b30:	48 63 15 01 40 00 00 	movslq 0x4001(%rip),%rdx        # 5b38 <num_input_strings>
    1b37:	48 89 d0             	mov    %rdx,%rax
    1b3a:	48 c1 e0 04          	shl    $0x4,%rax
    1b3e:	48 29 d0             	sub    %rdx,%rax
    1b41:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1b46:	48 8b 15 63 3f 00 00 	mov    0x3f63(%rip),%rdx        # 5ab0 <infile>
    1b4d:	be 78 00 00 00       	mov    $0x78,%esi
    1b52:	e8 19 f7 ff ff       	call   1270 <fgets@plt>
    1b57:	48 89 c3             	mov    %rax,%rbx
    1b5a:	48 85 c0             	test   %rax,%rax
    1b5d:	74 0c                	je     1b6b <skip+0x4c>
    1b5f:	48 89 c7             	mov    %rax,%rdi
    1b62:	e8 79 ff ff ff       	call   1ae0 <blank_line>
    1b67:	85 c0                	test   %eax,%eax
    1b69:	75 c5                	jne    1b30 <skip+0x11>
    1b6b:	48 89 d8             	mov    %rbx,%rax
    1b6e:	48 83 c4 08          	add    $0x8,%rsp
    1b72:	5b                   	pop    %rbx
    1b73:	5d                   	pop    %rbp
    1b74:	c3                   	ret

0000000000001b75 <send_msg>:
    1b75:	f3 0f 1e fa          	endbr64
    1b79:	53                   	push   %rbx
    1b7a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b81:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b86:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b8d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b92:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b99:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b9e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1ba5:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1baa:	8b 0d 88 3f 00 00    	mov    0x3f88(%rip),%ecx        # 5b38 <num_input_strings>
    1bb0:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1bb3:	48 98                	cltq
    1bb5:	48 89 c2             	mov    %rax,%rdx
    1bb8:	48 c1 e2 04          	shl    $0x4,%rdx
    1bbc:	48 29 c2             	sub    %rax,%rdx
    1bbf:	48 8d 05 7a 3f 00 00 	lea    0x3f7a(%rip),%rax        # 5b40 <input_strings>
    1bc6:	48 8d 04 d0          	lea    (%rax,%rdx,8),%rax
    1bca:	85 ff                	test   %edi,%edi
    1bcc:	4c 8d 0d ca 17 00 00 	lea    0x17ca(%rip),%r9        # 339d <array.0+0x19d>
    1bd3:	48 8d 15 cb 17 00 00 	lea    0x17cb(%rip),%rdx        # 33a5 <array.0+0x1a5>
    1bda:	4c 0f 44 ca          	cmove  %rdx,%r9
    1bde:	48 8d 9c 24 00 20 00 	lea    0x2000(%rsp),%rbx
    1be5:	00 
    1be6:	50                   	push   %rax
    1be7:	51                   	push   %rcx
    1be8:	44 8b 05 51 39 00 00 	mov    0x3951(%rip),%r8d        # 5540 <bomb_id>
    1bef:	48 8d 0d b8 17 00 00 	lea    0x17b8(%rip),%rcx        # 33ae <array.0+0x1ae>
    1bf6:	ba 00 20 00 00       	mov    $0x2000,%edx
    1bfb:	be 01 00 00 00       	mov    $0x1,%esi
    1c00:	48 89 df             	mov    %rbx,%rdi
    1c03:	b8 00 00 00 00       	mov    $0x0,%eax
    1c08:	e8 53 f7 ff ff       	call   1360 <__sprintf_chk@plt>
    1c0d:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1c12:	ba 00 00 00 00       	mov    $0x0,%edx
    1c17:	48 89 de             	mov    %rbx,%rsi
    1c1a:	48 8d 3d 1f 35 00 00 	lea    0x351f(%rip),%rdi        # 5140 <userid>
    1c21:	e8 77 0d 00 00       	call   299d <driver_post>
    1c26:	48 83 c4 10          	add    $0x10,%rsp
    1c2a:	85 c0                	test   %eax,%eax
    1c2c:	78 09                	js     1c37 <send_msg+0xc2>
    1c2e:	48 81 c4 00 40 00 00 	add    $0x4000,%rsp
    1c35:	5b                   	pop    %rbx
    1c36:	c3                   	ret
    1c37:	48 89 e7             	mov    %rsp,%rdi
    1c3a:	e8 d1 f5 ff ff       	call   1210 <puts@plt>
    1c3f:	bf 00 00 00 00       	mov    $0x0,%edi
    1c44:	e8 c7 f6 ff ff       	call   1310 <exit@plt>

0000000000001c49 <explode_bomb>:
    1c49:	f3 0f 1e fa          	endbr64
    1c4d:	50                   	push   %rax
    1c4e:	58                   	pop    %rax
    1c4f:	48 83 ec 08          	sub    $0x8,%rsp
    1c53:	48 8d 3d 60 17 00 00 	lea    0x1760(%rip),%rdi        # 33ba <array.0+0x1ba>
    1c5a:	e8 b1 f5 ff ff       	call   1210 <puts@plt>
    1c5f:	48 8d 3d 5d 17 00 00 	lea    0x175d(%rip),%rdi        # 33c3 <array.0+0x1c3>
    1c66:	e8 a5 f5 ff ff       	call   1210 <puts@plt>
    1c6b:	83 3d 2e 48 00 00 00 	cmpl   $0x0,0x482e(%rip)        # 64a0 <grade_bomb>
    1c72:	74 0a                	je     1c7e <explode_bomb+0x35>
    1c74:	bf 08 00 00 00       	mov    $0x8,%edi
    1c79:	e8 92 f6 ff ff       	call   1310 <exit@plt>
    1c7e:	bf 00 00 00 00       	mov    $0x0,%edi
    1c83:	e8 ed fe ff ff       	call   1b75 <send_msg>
    1c88:	48 8d 3d e9 15 00 00 	lea    0x15e9(%rip),%rdi        # 3278 <array.0+0x78>
    1c8f:	e8 7c f5 ff ff       	call   1210 <puts@plt>
    1c94:	eb de                	jmp    1c74 <explode_bomb+0x2b>

0000000000001c96 <read_six_numbers>:
    1c96:	f3 0f 1e fa          	endbr64
    1c9a:	48 83 ec 08          	sub    $0x8,%rsp
    1c9e:	48 89 f2             	mov    %rsi,%rdx
    1ca1:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1ca5:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1ca9:	50                   	push   %rax
    1caa:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1cae:	50                   	push   %rax
    1caf:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1cb3:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1cb7:	48 8d 35 1c 17 00 00 	lea    0x171c(%rip),%rsi        # 33da <array.0+0x1da>
    1cbe:	b8 00 00 00 00       	mov    $0x0,%eax
    1cc3:	e8 18 f6 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1cc8:	48 83 c4 10          	add    $0x10,%rsp
    1ccc:	83 f8 05             	cmp    $0x5,%eax
    1ccf:	7e 05                	jle    1cd6 <read_six_numbers+0x40>
    1cd1:	48 83 c4 08          	add    $0x8,%rsp
    1cd5:	c3                   	ret
    1cd6:	e8 6e ff ff ff       	call   1c49 <explode_bomb>

0000000000001cdb <read_line>:
    1cdb:	f3 0f 1e fa          	endbr64
    1cdf:	55                   	push   %rbp
    1ce0:	53                   	push   %rbx
    1ce1:	48 83 ec 08          	sub    $0x8,%rsp
    1ce5:	b8 00 00 00 00       	mov    $0x0,%eax
    1cea:	e8 30 fe ff ff       	call   1b1f <skip>
    1cef:	48 85 c0             	test   %rax,%rax
    1cf2:	74 63                	je     1d57 <read_line+0x7c>
    1cf4:	8b 1d 3e 3e 00 00    	mov    0x3e3e(%rip),%ebx        # 5b38 <num_input_strings>
    1cfa:	48 63 d3             	movslq %ebx,%rdx
    1cfd:	48 89 d0             	mov    %rdx,%rax
    1d00:	48 c1 e0 04          	shl    $0x4,%rax
    1d04:	48 29 d0             	sub    %rdx,%rax
    1d07:	48 8d 15 32 3e 00 00 	lea    0x3e32(%rip),%rdx        # 5b40 <input_strings>
    1d0e:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    1d12:	48 89 ef             	mov    %rbp,%rdi
    1d15:	e8 16 f5 ff ff       	call   1230 <strlen@plt>
    1d1a:	83 f8 76             	cmp    $0x76,%eax
    1d1d:	0f 8f 9d 00 00 00    	jg     1dc0 <read_line+0xe5>
    1d23:	83 e8 01             	sub    $0x1,%eax
    1d26:	48 98                	cltq
    1d28:	48 63 cb             	movslq %ebx,%rcx
    1d2b:	48 89 ca             	mov    %rcx,%rdx
    1d2e:	48 c1 e2 04          	shl    $0x4,%rdx
    1d32:	48 29 ca             	sub    %rcx,%rdx
    1d35:	48 8d 0d 04 3e 00 00 	lea    0x3e04(%rip),%rcx        # 5b40 <input_strings>
    1d3c:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    1d40:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d44:	83 c3 01             	add    $0x1,%ebx
    1d47:	89 1d eb 3d 00 00    	mov    %ebx,0x3deb(%rip)        # 5b38 <num_input_strings>
    1d4d:	48 89 e8             	mov    %rbp,%rax
    1d50:	48 83 c4 08          	add    $0x8,%rsp
    1d54:	5b                   	pop    %rbx
    1d55:	5d                   	pop    %rbp
    1d56:	c3                   	ret
    1d57:	48 8b 05 32 3d 00 00 	mov    0x3d32(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1d5e:	48 39 05 4b 3d 00 00 	cmp    %rax,0x3d4b(%rip)        # 5ab0 <infile>
    1d65:	74 13                	je     1d7a <read_line+0x9f>
    1d67:	83 3d 32 47 00 00 00 	cmpl   $0x0,0x4732(%rip)        # 64a0 <grade_bomb>
    1d6e:	74 20                	je     1d90 <read_line+0xb5>
    1d70:	bf 00 00 00 00       	mov    $0x0,%edi
    1d75:	e8 96 f5 ff ff       	call   1310 <exit@plt>
    1d7a:	48 8d 3d 6b 16 00 00 	lea    0x166b(%rip),%rdi        # 33ec <array.0+0x1ec>
    1d81:	e8 8a f4 ff ff       	call   1210 <puts@plt>
    1d86:	bf 08 00 00 00       	mov    $0x8,%edi
    1d8b:	e8 80 f5 ff ff       	call   1310 <exit@plt>
    1d90:	48 89 05 19 3d 00 00 	mov    %rax,0x3d19(%rip)        # 5ab0 <infile>
    1d97:	b8 00 00 00 00       	mov    $0x0,%eax
    1d9c:	e8 7e fd ff ff       	call   1b1f <skip>
    1da1:	48 85 c0             	test   %rax,%rax
    1da4:	0f 85 4a ff ff ff    	jne    1cf4 <read_line+0x19>
    1daa:	48 8d 3d 3b 16 00 00 	lea    0x163b(%rip),%rdi        # 33ec <array.0+0x1ec>
    1db1:	e8 5a f4 ff ff       	call   1210 <puts@plt>
    1db6:	bf 00 00 00 00       	mov    $0x0,%edi
    1dbb:	e8 50 f5 ff ff       	call   1310 <exit@plt>
    1dc0:	48 8d 3d 43 16 00 00 	lea    0x1643(%rip),%rdi        # 340a <array.0+0x20a>
    1dc7:	e8 44 f4 ff ff       	call   1210 <puts@plt>
    1dcc:	8b 05 66 3d 00 00    	mov    0x3d66(%rip),%eax        # 5b38 <num_input_strings>
    1dd2:	8d 50 01             	lea    0x1(%rax),%edx
    1dd5:	89 15 5d 3d 00 00    	mov    %edx,0x3d5d(%rip)        # 5b38 <num_input_strings>
    1ddb:	48 98                	cltq
    1ddd:	48 6b c0 78          	imul   $0x78,%rax,%rax
    1de1:	48 8d 15 58 3d 00 00 	lea    0x3d58(%rip),%rdx        # 5b40 <input_strings>
    1de8:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1def:	75 6e 63 
    1df2:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1df9:	2a 2a 00 
    1dfc:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e00:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e05:	e8 3f fe ff ff       	call   1c49 <explode_bomb>

0000000000001e0a <phase_defused>:
    1e0a:	f3 0f 1e fa          	endbr64
    1e0e:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1e15:	83 3d 84 46 00 00 00 	cmpl   $0x0,0x4684(%rip)        # 64a0 <grade_bomb>
    1e1c:	74 11                	je     1e2f <phase_defused+0x25>
    1e1e:	83 3d 13 3d 00 00 06 	cmpl   $0x6,0x3d13(%rip)        # 5b38 <num_input_strings>
    1e25:	74 14                	je     1e3b <phase_defused+0x31>
    1e27:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1e2e:	c3                   	ret
    1e2f:	bf 01 00 00 00       	mov    $0x1,%edi
    1e34:	e8 3c fd ff ff       	call   1b75 <send_msg>
    1e39:	eb e3                	jmp    1e1e <phase_defused+0x14>
    1e3b:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1e40:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1e45:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e4a:	48 8d 35 d4 15 00 00 	lea    0x15d4(%rip),%rsi        # 3425 <array.0+0x225>
    1e51:	48 8d 3d 50 3e 00 00 	lea    0x3e50(%rip),%rdi        # 5ca8 <input_strings+0x168>
    1e58:	b8 00 00 00 00       	mov    $0x0,%eax
    1e5d:	e8 7e f4 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1e62:	83 f8 03             	cmp    $0x3,%eax
    1e65:	74 23                	je     1e8a <phase_defused+0x80>
    1e67:	48 8d 3d 92 14 00 00 	lea    0x1492(%rip),%rdi        # 3300 <array.0+0x100>
    1e6e:	e8 9d f3 ff ff       	call   1210 <puts@plt>
    1e73:	83 3d 26 46 00 00 00 	cmpl   $0x0,0x4626(%rip)        # 64a0 <grade_bomb>
    1e7a:	75 ab                	jne    1e27 <phase_defused+0x1d>
    1e7c:	48 8d 3d ad 14 00 00 	lea    0x14ad(%rip),%rdi        # 3330 <array.0+0x130>
    1e83:	e8 88 f3 ff ff       	call   1210 <puts@plt>
    1e88:	eb 9d                	jmp    1e27 <phase_defused+0x1d>
    1e8a:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e8f:	48 8d 35 98 15 00 00 	lea    0x1598(%rip),%rsi        # 342e <array.0+0x22e>
    1e96:	e8 95 fb ff ff       	call   1a30 <strings_not_equal>
    1e9b:	85 c0                	test   %eax,%eax
    1e9d:	75 c8                	jne    1e67 <phase_defused+0x5d>
    1e9f:	48 8d 3d fa 13 00 00 	lea    0x13fa(%rip),%rdi        # 32a0 <array.0+0xa0>
    1ea6:	e8 65 f3 ff ff       	call   1210 <puts@plt>
    1eab:	48 8d 3d 16 14 00 00 	lea    0x1416(%rip),%rdi        # 32c8 <array.0+0xc8>
    1eb2:	e8 59 f3 ff ff       	call   1210 <puts@plt>
    1eb7:	b8 00 00 00 00       	mov    $0x0,%eax
    1ebc:	e8 63 fa ff ff       	call   1924 <secret_phase>
    1ec1:	eb a4                	jmp    1e67 <phase_defused+0x5d>

0000000000001ec3 <sigalrm_handler>:
    1ec3:	f3 0f 1e fa          	endbr64
    1ec7:	50                   	push   %rax
    1ec8:	58                   	pop    %rax
    1ec9:	48 83 ec 08          	sub    $0x8,%rsp
    1ecd:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ed2:	48 8d 15 af 15 00 00 	lea    0x15af(%rip),%rdx        # 3488 <array.0+0x288>
    1ed9:	be 01 00 00 00       	mov    $0x1,%esi
    1ede:	48 8b 3d bb 3b 00 00 	mov    0x3bbb(%rip),%rdi        # 5aa0 <stderr@GLIBC_2.2.5>
    1ee5:	b8 00 00 00 00       	mov    $0x0,%eax
    1eea:	e8 41 f4 ff ff       	call   1330 <__fprintf_chk@plt>
    1eef:	bf 01 00 00 00       	mov    $0x1,%edi
    1ef4:	e8 17 f4 ff ff       	call   1310 <exit@plt>

0000000000001ef9 <rio_readlineb>:
    1ef9:	41 56                	push   %r14
    1efb:	41 55                	push   %r13
    1efd:	41 54                	push   %r12
    1eff:	55                   	push   %rbp
    1f00:	53                   	push   %rbx
    1f01:	49 89 f4             	mov    %rsi,%r12
    1f04:	48 83 fa 01          	cmp    $0x1,%rdx
    1f08:	0f 86 92 00 00 00    	jbe    1fa0 <rio_readlineb+0xa7>
    1f0e:	48 89 fb             	mov    %rdi,%rbx
    1f11:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1f16:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f1c:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1f20:	eb 56                	jmp    1f78 <rio_readlineb+0x7f>
    1f22:	e8 c9 f2 ff ff       	call   11f0 <__errno_location@plt>
    1f27:	83 38 04             	cmpl   $0x4,(%rax)
    1f2a:	75 55                	jne    1f81 <rio_readlineb+0x88>
    1f2c:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f31:	48 89 ee             	mov    %rbp,%rsi
    1f34:	8b 3b                	mov    (%rbx),%edi
    1f36:	e8 25 f3 ff ff       	call   1260 <read@plt>
    1f3b:	89 c2                	mov    %eax,%edx
    1f3d:	89 43 04             	mov    %eax,0x4(%rbx)
    1f40:	85 c0                	test   %eax,%eax
    1f42:	78 de                	js     1f22 <rio_readlineb+0x29>
    1f44:	85 c0                	test   %eax,%eax
    1f46:	74 42                	je     1f8a <rio_readlineb+0x91>
    1f48:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f4c:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1f50:	0f b6 08             	movzbl (%rax),%ecx
    1f53:	48 83 c0 01          	add    $0x1,%rax
    1f57:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1f5b:	83 ea 01             	sub    $0x1,%edx
    1f5e:	89 53 04             	mov    %edx,0x4(%rbx)
    1f61:	49 83 c4 01          	add    $0x1,%r12
    1f65:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f6a:	80 f9 0a             	cmp    $0xa,%cl
    1f6d:	74 3c                	je     1fab <rio_readlineb+0xb2>
    1f6f:	41 83 c5 01          	add    $0x1,%r13d
    1f73:	4d 39 f4             	cmp    %r14,%r12
    1f76:	74 30                	je     1fa8 <rio_readlineb+0xaf>
    1f78:	8b 53 04             	mov    0x4(%rbx),%edx
    1f7b:	85 d2                	test   %edx,%edx
    1f7d:	7e ad                	jle    1f2c <rio_readlineb+0x33>
    1f7f:	eb cb                	jmp    1f4c <rio_readlineb+0x53>
    1f81:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f88:	eb 05                	jmp    1f8f <rio_readlineb+0x96>
    1f8a:	b8 00 00 00 00       	mov    $0x0,%eax
    1f8f:	85 c0                	test   %eax,%eax
    1f91:	75 29                	jne    1fbc <rio_readlineb+0xc3>
    1f93:	b8 00 00 00 00       	mov    $0x0,%eax
    1f98:	41 83 fd 01          	cmp    $0x1,%r13d
    1f9c:	75 0d                	jne    1fab <rio_readlineb+0xb2>
    1f9e:	eb 13                	jmp    1fb3 <rio_readlineb+0xba>
    1fa0:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1fa6:	eb 03                	jmp    1fab <rio_readlineb+0xb2>
    1fa8:	4d 89 f4             	mov    %r14,%r12
    1fab:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1fb0:	49 63 c5             	movslq %r13d,%rax
    1fb3:	5b                   	pop    %rbx
    1fb4:	5d                   	pop    %rbp
    1fb5:	41 5c                	pop    %r12
    1fb7:	41 5d                	pop    %r13
    1fb9:	41 5e                	pop    %r14
    1fbb:	c3                   	ret
    1fbc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fc3:	eb ee                	jmp    1fb3 <rio_readlineb+0xba>

0000000000001fc5 <submitr>:
    1fc5:	f3 0f 1e fa          	endbr64
    1fc9:	41 57                	push   %r15
    1fcb:	41 56                	push   %r14
    1fcd:	41 55                	push   %r13
    1fcf:	41 54                	push   %r12
    1fd1:	55                   	push   %rbp
    1fd2:	53                   	push   %rbx
    1fd3:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    1fda:	ff 
    1fdb:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1fe2:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1fe7:	4c 39 dc             	cmp    %r11,%rsp
    1fea:	75 ef                	jne    1fdb <submitr+0x16>
    1fec:	48 83 ec 68          	sub    $0x68,%rsp
    1ff0:	49 89 fd             	mov    %rdi,%r13
    1ff3:	89 f5                	mov    %esi,%ebp
    1ff5:	48 89 14 24          	mov    %rdx,(%rsp)
    1ff9:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1ffe:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2003:	4c 89 cb             	mov    %r9,%rbx
    2006:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
    200d:	00 
    200e:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    2015:	00 00 00 00 
    2019:	ba 00 00 00 00       	mov    $0x0,%edx
    201e:	be 01 00 00 00       	mov    $0x1,%esi
    2023:	bf 02 00 00 00       	mov    $0x2,%edi
    2028:	e8 43 f3 ff ff       	call   1370 <socket@plt>
    202d:	85 c0                	test   %eax,%eax
    202f:	0f 88 20 01 00 00    	js     2155 <submitr+0x190>
    2035:	41 89 c4             	mov    %eax,%r12d
    2038:	4c 89 ef             	mov    %r13,%rdi
    203b:	e8 60 f2 ff ff       	call   12a0 <gethostbyname@plt>
    2040:	48 85 c0             	test   %rax,%rax
    2043:	0f 84 5c 01 00 00    	je     21a5 <submitr+0x1e0>
    2049:	4c 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%r13
    2050:	00 
    2051:	48 c7 84 24 50 a0 00 	movq   $0x0,0xa050(%rsp)
    2058:	00 00 00 00 00 
    205d:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    2064:	00 00 00 00 00 
    2069:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    2070:	00 02 00 
    2073:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2077:	48 8b 40 18          	mov    0x18(%rax),%rax
    207b:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    2082:	00 
    2083:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2088:	48 8b 30             	mov    (%rax),%rsi
    208b:	e8 20 f2 ff ff       	call   12b0 <__memmove_chk@plt>
    2090:	66 c1 c5 08          	rol    $0x8,%bp
    2094:	66 89 ac 24 52 a0 00 	mov    %bp,0xa052(%rsp)
    209b:	00 
    209c:	ba 10 00 00 00       	mov    $0x10,%edx
    20a1:	4c 89 ee             	mov    %r13,%rsi
    20a4:	44 89 e7             	mov    %r12d,%edi
    20a7:	e8 74 f2 ff ff       	call   1320 <connect@plt>
    20ac:	85 c0                	test   %eax,%eax
    20ae:	0f 88 5c 01 00 00    	js     2210 <submitr+0x24b>
    20b4:	48 89 df             	mov    %rbx,%rdi
    20b7:	e8 74 f1 ff ff       	call   1230 <strlen@plt>
    20bc:	48 89 c5             	mov    %rax,%rbp
    20bf:	48 8b 3c 24          	mov    (%rsp),%rdi
    20c3:	e8 68 f1 ff ff       	call   1230 <strlen@plt>
    20c8:	49 89 c6             	mov    %rax,%r14
    20cb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    20d0:	e8 5b f1 ff ff       	call   1230 <strlen@plt>
    20d5:	49 89 c5             	mov    %rax,%r13
    20d8:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20dd:	e8 4e f1 ff ff       	call   1230 <strlen@plt>
    20e2:	48 89 c2             	mov    %rax,%rdx
    20e5:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    20ec:	00 
    20ed:	48 01 d0             	add    %rdx,%rax
    20f0:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    20f5:	48 01 d0             	add    %rdx,%rax
    20f8:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    20fe:	0f 87 69 01 00 00    	ja     226d <submitr+0x2a8>
    2104:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    210b:	00 
    210c:	b9 00 04 00 00       	mov    $0x400,%ecx
    2111:	b8 00 00 00 00       	mov    $0x0,%eax
    2116:	48 89 d7             	mov    %rdx,%rdi
    2119:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    211c:	48 89 df             	mov    %rbx,%rdi
    211f:	e8 0c f1 ff ff       	call   1230 <strlen@plt>
    2124:	85 c0                	test   %eax,%eax
    2126:	0f 84 e1 04 00 00    	je     260d <submitr+0x648>
    212c:	8d 40 ff             	lea    -0x1(%rax),%eax
    212f:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2134:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    213b:	00 
    213c:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    2141:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2146:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    214d:	00 20 00 
    2150:	e9 a6 01 00 00       	jmp    22fb <submitr+0x336>
    2155:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    215c:	3a 20 43 
    215f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2166:	20 75 6e 
    2169:	49 89 07             	mov    %rax,(%r15)
    216c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2170:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2177:	74 6f 20 
    217a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2181:	65 20 73 
    2184:	49 89 47 10          	mov    %rax,0x10(%r15)
    2188:	49 89 57 18          	mov    %rdx,0x18(%r15)
    218c:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2193:	65 
    2194:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    219b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21a0:	e9 f7 02 00 00       	jmp    249c <submitr+0x4d7>
    21a5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    21ac:	3a 20 44 
    21af:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    21b6:	20 75 6e 
    21b9:	49 89 07             	mov    %rax,(%r15)
    21bc:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21c0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21c7:	74 6f 20 
    21ca:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    21d1:	76 65 20 
    21d4:	49 89 47 10          	mov    %rax,0x10(%r15)
    21d8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21dc:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    21e3:	72 20 61 
    21e6:	49 89 47 20          	mov    %rax,0x20(%r15)
    21ea:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    21f1:	65 
    21f2:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    21f9:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    21fe:	44 89 e7             	mov    %r12d,%edi
    2201:	e8 4a f0 ff ff       	call   1250 <close@plt>
    2206:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    220b:	e9 8c 02 00 00       	jmp    249c <submitr+0x4d7>
    2210:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2217:	3a 20 55 
    221a:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2221:	20 74 6f 
    2224:	49 89 07             	mov    %rax,(%r15)
    2227:	49 89 57 08          	mov    %rdx,0x8(%r15)
    222b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2232:	65 63 74 
    2235:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    223c:	68 65 20 
    223f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2243:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2247:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    224e:	76 
    224f:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2256:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    225b:	44 89 e7             	mov    %r12d,%edi
    225e:	e8 ed ef ff ff       	call   1250 <close@plt>
    2263:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2268:	e9 2f 02 00 00       	jmp    249c <submitr+0x4d7>
    226d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2274:	3a 20 52 
    2277:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    227e:	20 73 74 
    2281:	49 89 07             	mov    %rax,(%r15)
    2284:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2288:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    228f:	74 6f 6f 
    2292:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2299:	65 2e 20 
    229c:	49 89 47 10          	mov    %rax,0x10(%r15)
    22a0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22a4:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    22ab:	61 73 65 
    22ae:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    22b5:	49 54 52 
    22b8:	49 89 47 20          	mov    %rax,0x20(%r15)
    22bc:	49 89 57 28          	mov    %rdx,0x28(%r15)
    22c0:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    22c7:	55 46 00 
    22ca:	49 89 47 30          	mov    %rax,0x30(%r15)
    22ce:	44 89 e7             	mov    %r12d,%edi
    22d1:	e8 7a ef ff ff       	call   1250 <close@plt>
    22d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22db:	e9 bc 01 00 00       	jmp    249c <submitr+0x4d7>
    22e0:	49 0f a3 c6          	bt     %rax,%r14
    22e4:	73 21                	jae    2307 <submitr+0x342>
    22e6:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    22ea:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22ee:	48 83 c3 01          	add    $0x1,%rbx
    22f2:	4c 39 eb             	cmp    %r13,%rbx
    22f5:	0f 84 12 03 00 00    	je     260d <submitr+0x648>
    22fb:	44 0f b6 03          	movzbl (%rbx),%r8d
    22ff:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2303:	3c 35                	cmp    $0x35,%al
    2305:	76 d9                	jbe    22e0 <submitr+0x31b>
    2307:	44 89 c0             	mov    %r8d,%eax
    230a:	83 e0 df             	and    $0xffffffdf,%eax
    230d:	83 e8 41             	sub    $0x41,%eax
    2310:	3c 19                	cmp    $0x19,%al
    2312:	76 d2                	jbe    22e6 <submitr+0x321>
    2314:	41 80 f8 20          	cmp    $0x20,%r8b
    2318:	74 54                	je     236e <submitr+0x3a9>
    231a:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    231e:	3c 5f                	cmp    $0x5f,%al
    2320:	76 0a                	jbe    232c <submitr+0x367>
    2322:	41 80 f8 09          	cmp    $0x9,%r8b
    2326:	0f 85 54 02 00 00    	jne    2580 <submitr+0x5bb>
    232c:	45 0f b6 c0          	movzbl %r8b,%r8d
    2330:	48 8d 0d 1f 12 00 00 	lea    0x121f(%rip),%rcx        # 3556 <array.0+0x356>
    2337:	ba 08 00 00 00       	mov    $0x8,%edx
    233c:	be 01 00 00 00       	mov    $0x1,%esi
    2341:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2346:	b8 00 00 00 00       	mov    $0x0,%eax
    234b:	e8 10 f0 ff ff       	call   1360 <__sprintf_chk@plt>
    2350:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    2355:	88 45 00             	mov    %al,0x0(%rbp)
    2358:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    235d:	88 45 01             	mov    %al,0x1(%rbp)
    2360:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    2365:	88 45 02             	mov    %al,0x2(%rbp)
    2368:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    236c:	eb 80                	jmp    22ee <submitr+0x329>
    236e:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2372:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2376:	e9 73 ff ff ff       	jmp    22ee <submitr+0x329>
    237b:	48 01 c5             	add    %rax,%rbp
    237e:	48 29 c3             	sub    %rax,%rbx
    2381:	0f 84 e9 02 00 00    	je     2670 <submitr+0x6ab>
    2387:	48 89 da             	mov    %rbx,%rdx
    238a:	48 89 ee             	mov    %rbp,%rsi
    238d:	44 89 e7             	mov    %r12d,%edi
    2390:	e8 8b ee ff ff       	call   1220 <write@plt>
    2395:	48 85 c0             	test   %rax,%rax
    2398:	7f e1                	jg     237b <submitr+0x3b6>
    239a:	e8 51 ee ff ff       	call   11f0 <__errno_location@plt>
    239f:	83 38 04             	cmpl   $0x4,(%rax)
    23a2:	0f 85 79 01 00 00    	jne    2521 <submitr+0x55c>
    23a8:	4c 89 e8             	mov    %r13,%rax
    23ab:	eb ce                	jmp    237b <submitr+0x3b6>
    23ad:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23b4:	3a 20 43 
    23b7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23be:	20 75 6e 
    23c1:	49 89 07             	mov    %rax,(%r15)
    23c4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23c8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23cf:	74 6f 20 
    23d2:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    23d9:	66 69 72 
    23dc:	49 89 47 10          	mov    %rax,0x10(%r15)
    23e0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23e4:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    23eb:	61 64 65 
    23ee:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    23f5:	6d 20 73 
    23f8:	49 89 47 20          	mov    %rax,0x20(%r15)
    23fc:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2400:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2407:	65 
    2408:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    240f:	44 89 e7             	mov    %r12d,%edi
    2412:	e8 39 ee ff ff       	call   1250 <close@plt>
    2417:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    241c:	eb 7e                	jmp    249c <submitr+0x4d7>
    241e:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
    2423:	48 8d 0d 86 10 00 00 	lea    0x1086(%rip),%rcx        # 34b0 <array.0+0x2b0>
    242a:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2431:	be 01 00 00 00       	mov    $0x1,%esi
    2436:	4c 89 ff             	mov    %r15,%rdi
    2439:	b8 00 00 00 00       	mov    $0x0,%eax
    243e:	e8 1d ef ff ff       	call   1360 <__sprintf_chk@plt>
    2443:	44 89 e7             	mov    %r12d,%edi
    2446:	e8 05 ee ff ff       	call   1250 <close@plt>
    244b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2450:	eb 4a                	jmp    249c <submitr+0x4d7>
    2452:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2459:	00 
    245a:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2461:	00 
    2462:	ba 00 20 00 00       	mov    $0x2000,%edx
    2467:	e8 8d fa ff ff       	call   1ef9 <rio_readlineb>
    246c:	48 85 c0             	test   %rax,%rax
    246f:	7e 3d                	jle    24ae <submitr+0x4e9>
    2471:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2478:	00 
    2479:	4c 89 ff             	mov    %r15,%rdi
    247c:	e8 7f ed ff ff       	call   1200 <strcpy@plt>
    2481:	44 89 e7             	mov    %r12d,%edi
    2484:	e8 c7 ed ff ff       	call   1250 <close@plt>
    2489:	48 8d 35 e1 10 00 00 	lea    0x10e1(%rip),%rsi        # 3571 <array.0+0x371>
    2490:	4c 89 ff             	mov    %r15,%rdi
    2493:	e8 e8 ed ff ff       	call   1280 <strcmp@plt>
    2498:	f7 d8                	neg    %eax
    249a:	19 c0                	sbb    %eax,%eax
    249c:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    24a3:	5b                   	pop    %rbx
    24a4:	5d                   	pop    %rbp
    24a5:	41 5c                	pop    %r12
    24a7:	41 5d                	pop    %r13
    24a9:	41 5e                	pop    %r14
    24ab:	41 5f                	pop    %r15
    24ad:	c3                   	ret
    24ae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24b5:	3a 20 43 
    24b8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24bf:	20 75 6e 
    24c2:	49 89 07             	mov    %rax,(%r15)
    24c5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24c9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24d0:	74 6f 20 
    24d3:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    24da:	73 74 61 
    24dd:	49 89 47 10          	mov    %rax,0x10(%r15)
    24e1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24e5:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    24ec:	65 73 73 
    24ef:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    24f6:	72 6f 6d 
    24f9:	49 89 47 20          	mov    %rax,0x20(%r15)
    24fd:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2501:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2508:	65 72 00 
    250b:	49 89 47 30          	mov    %rax,0x30(%r15)
    250f:	44 89 e7             	mov    %r12d,%edi
    2512:	e8 39 ed ff ff       	call   1250 <close@plt>
    2517:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    251c:	e9 7b ff ff ff       	jmp    249c <submitr+0x4d7>
    2521:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2528:	3a 20 43 
    252b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2532:	20 75 6e 
    2535:	49 89 07             	mov    %rax,(%r15)
    2538:	49 89 57 08          	mov    %rdx,0x8(%r15)
    253c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2543:	74 6f 20 
    2546:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    254d:	20 74 6f 
    2550:	49 89 47 10          	mov    %rax,0x10(%r15)
    2554:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2558:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    255f:	73 65 72 
    2562:	49 89 47 20          	mov    %rax,0x20(%r15)
    2566:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    256d:	00 
    256e:	44 89 e7             	mov    %r12d,%edi
    2571:	e8 da ec ff ff       	call   1250 <close@plt>
    2576:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    257b:	e9 1c ff ff ff       	jmp    249c <submitr+0x4d7>
    2580:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2587:	3a 20 52 
    258a:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2591:	20 73 74 
    2594:	49 89 07             	mov    %rax,(%r15)
    2597:	49 89 57 08          	mov    %rdx,0x8(%r15)
    259b:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    25a2:	63 6f 6e 
    25a5:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    25ac:	20 61 6e 
    25af:	49 89 47 10          	mov    %rax,0x10(%r15)
    25b3:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25b7:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    25be:	67 61 6c 
    25c1:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    25c8:	6e 70 72 
    25cb:	49 89 47 20          	mov    %rax,0x20(%r15)
    25cf:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25d3:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    25da:	6c 65 20 
    25dd:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    25e4:	63 74 65 
    25e7:	49 89 47 30          	mov    %rax,0x30(%r15)
    25eb:	49 89 57 38          	mov    %rdx,0x38(%r15)
    25ef:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    25f6:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    25fb:	44 89 e7             	mov    %r12d,%edi
    25fe:	e8 4d ec ff ff       	call   1250 <close@plt>
    2603:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2608:	e9 8f fe ff ff       	jmp    249c <submitr+0x4d7>
    260d:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    2614:	00 
    2615:	48 8d 84 24 40 40 00 	lea    0x4040(%rsp),%rax
    261c:	00 
    261d:	50                   	push   %rax
    261e:	ff 74 24 18          	push   0x18(%rsp)
    2622:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    2627:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    262c:	48 8d 0d ad 0e 00 00 	lea    0xead(%rip),%rcx        # 34e0 <array.0+0x2e0>
    2633:	ba 00 20 00 00       	mov    $0x2000,%edx
    2638:	be 01 00 00 00       	mov    $0x1,%esi
    263d:	48 89 df             	mov    %rbx,%rdi
    2640:	b8 00 00 00 00       	mov    $0x0,%eax
    2645:	e8 16 ed ff ff       	call   1360 <__sprintf_chk@plt>
    264a:	48 89 df             	mov    %rbx,%rdi
    264d:	e8 de eb ff ff       	call   1230 <strlen@plt>
    2652:	48 89 c3             	mov    %rax,%rbx
    2655:	48 83 c4 10          	add    $0x10,%rsp
    2659:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    2660:	00 
    2661:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2667:	48 85 c0             	test   %rax,%rax
    266a:	0f 85 17 fd ff ff    	jne    2387 <submitr+0x3c2>
    2670:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    2677:	00 
    2678:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    267f:	00 00 00 00 
    2683:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    268a:	00 
    268b:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    2692:	00 
    2693:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    269a:	00 
    269b:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    26a2:	00 
    26a3:	ba 00 20 00 00       	mov    $0x2000,%edx
    26a8:	e8 4c f8 ff ff       	call   1ef9 <rio_readlineb>
    26ad:	48 85 c0             	test   %rax,%rax
    26b0:	0f 8e f7 fc ff ff    	jle    23ad <submitr+0x3e8>
    26b6:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    26bd:	00 
    26be:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    26c5:	00 
    26c6:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    26cd:	00 
    26ce:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    26d3:	48 8d 35 83 0e 00 00 	lea    0xe83(%rip),%rsi        # 355d <array.0+0x35d>
    26da:	b8 00 00 00 00       	mov    $0x0,%eax
    26df:	e8 fc eb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    26e4:	44 8b 84 24 3c 20 00 	mov    0x203c(%rsp),%r8d
    26eb:	00 
    26ec:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    26f3:	0f 85 25 fd ff ff    	jne    241e <submitr+0x459>
    26f9:	48 8d 1d 6e 0e 00 00 	lea    0xe6e(%rip),%rbx        # 356e <array.0+0x36e>
    2700:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2707:	00 
    2708:	48 89 de             	mov    %rbx,%rsi
    270b:	e8 70 eb ff ff       	call   1280 <strcmp@plt>
    2710:	85 c0                	test   %eax,%eax
    2712:	0f 84 3a fd ff ff    	je     2452 <submitr+0x48d>
    2718:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    271f:	00 
    2720:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2727:	00 
    2728:	ba 00 20 00 00       	mov    $0x2000,%edx
    272d:	e8 c7 f7 ff ff       	call   1ef9 <rio_readlineb>
    2732:	48 85 c0             	test   %rax,%rax
    2735:	7f c9                	jg     2700 <submitr+0x73b>
    2737:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    273e:	3a 20 43 
    2741:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2748:	20 75 6e 
    274b:	49 89 07             	mov    %rax,(%r15)
    274e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2752:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2759:	74 6f 20 
    275c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2763:	68 65 61 
    2766:	49 89 47 10          	mov    %rax,0x10(%r15)
    276a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    276e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2775:	66 72 6f 
    2778:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    277f:	76 65 72 
    2782:	49 89 47 20          	mov    %rax,0x20(%r15)
    2786:	49 89 57 28          	mov    %rdx,0x28(%r15)
    278a:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    278f:	44 89 e7             	mov    %r12d,%edi
    2792:	e8 b9 ea ff ff       	call   1250 <close@plt>
    2797:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    279c:	e9 fb fc ff ff       	jmp    249c <submitr+0x4d7>

00000000000027a1 <init_timeout>:
    27a1:	f3 0f 1e fa          	endbr64
    27a5:	85 ff                	test   %edi,%edi
    27a7:	75 01                	jne    27aa <init_timeout+0x9>
    27a9:	c3                   	ret
    27aa:	53                   	push   %rbx
    27ab:	89 fb                	mov    %edi,%ebx
    27ad:	48 8d 35 0f f7 ff ff 	lea    -0x8f1(%rip),%rsi        # 1ec3 <sigalrm_handler>
    27b4:	bf 0e 00 00 00       	mov    $0xe,%edi
    27b9:	e8 d2 ea ff ff       	call   1290 <signal@plt>
    27be:	85 db                	test   %ebx,%ebx
    27c0:	b8 00 00 00 00       	mov    $0x0,%eax
    27c5:	0f 49 c3             	cmovns %ebx,%eax
    27c8:	89 c7                	mov    %eax,%edi
    27ca:	e8 71 ea ff ff       	call   1240 <alarm@plt>
    27cf:	5b                   	pop    %rbx
    27d0:	c3                   	ret

00000000000027d1 <init_driver>:
    27d1:	f3 0f 1e fa          	endbr64
    27d5:	41 54                	push   %r12
    27d7:	55                   	push   %rbp
    27d8:	53                   	push   %rbx
    27d9:	48 83 ec 10          	sub    $0x10,%rsp
    27dd:	48 89 fd             	mov    %rdi,%rbp
    27e0:	be 01 00 00 00       	mov    $0x1,%esi
    27e5:	bf 0d 00 00 00       	mov    $0xd,%edi
    27ea:	e8 a1 ea ff ff       	call   1290 <signal@plt>
    27ef:	be 01 00 00 00       	mov    $0x1,%esi
    27f4:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27f9:	e8 92 ea ff ff       	call   1290 <signal@plt>
    27fe:	be 01 00 00 00       	mov    $0x1,%esi
    2803:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2808:	e8 83 ea ff ff       	call   1290 <signal@plt>
    280d:	ba 00 00 00 00       	mov    $0x0,%edx
    2812:	be 01 00 00 00       	mov    $0x1,%esi
    2817:	bf 02 00 00 00       	mov    $0x2,%edi
    281c:	e8 4f eb ff ff       	call   1370 <socket@plt>
    2821:	85 c0                	test   %eax,%eax
    2823:	0f 88 88 00 00 00    	js     28b1 <init_driver+0xe0>
    2829:	89 c3                	mov    %eax,%ebx
    282b:	48 8d 3d 42 0d 00 00 	lea    0xd42(%rip),%rdi        # 3574 <array.0+0x374>
    2832:	e8 69 ea ff ff       	call   12a0 <gethostbyname@plt>
    2837:	48 85 c0             	test   %rax,%rax
    283a:	0f 84 bd 00 00 00    	je     28fd <init_driver+0x12c>
    2840:	49 89 e4             	mov    %rsp,%r12
    2843:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    284a:	00 
    284b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2852:	00 00 
    2854:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    285a:	48 63 50 14          	movslq 0x14(%rax),%rdx
    285e:	48 8b 40 18          	mov    0x18(%rax),%rax
    2862:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2867:	b9 0c 00 00 00       	mov    $0xc,%ecx
    286c:	48 8b 30             	mov    (%rax),%rsi
    286f:	e8 3c ea ff ff       	call   12b0 <__memmove_chk@plt>
    2874:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    287b:	ba 10 00 00 00       	mov    $0x10,%edx
    2880:	4c 89 e6             	mov    %r12,%rsi
    2883:	89 df                	mov    %ebx,%edi
    2885:	e8 96 ea ff ff       	call   1320 <connect@plt>
    288a:	85 c0                	test   %eax,%eax
    288c:	0f 88 d3 00 00 00    	js     2965 <init_driver+0x194>
    2892:	89 df                	mov    %ebx,%edi
    2894:	e8 b7 e9 ff ff       	call   1250 <close@plt>
    2899:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    289f:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    28a3:	b8 00 00 00 00       	mov    $0x0,%eax
    28a8:	48 83 c4 10          	add    $0x10,%rsp
    28ac:	5b                   	pop    %rbx
    28ad:	5d                   	pop    %rbp
    28ae:	41 5c                	pop    %r12
    28b0:	c3                   	ret
    28b1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28b8:	3a 20 43 
    28bb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28c2:	20 75 6e 
    28c5:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28c9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28cd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28d4:	74 6f 20 
    28d7:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    28de:	65 20 73 
    28e1:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28e5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28e9:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    28f0:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    28f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28fb:	eb ab                	jmp    28a8 <init_driver+0xd7>
    28fd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2904:	3a 20 44 
    2907:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    290e:	20 75 6e 
    2911:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2915:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2919:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2920:	74 6f 20 
    2923:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    292a:	76 65 20 
    292d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2931:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2935:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    293c:	72 20 61 
    293f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2943:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    294a:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2950:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2954:	89 df                	mov    %ebx,%edi
    2956:	e8 f5 e8 ff ff       	call   1250 <close@plt>
    295b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2960:	e9 43 ff ff ff       	jmp    28a8 <init_driver+0xd7>
    2965:	4c 8d 05 08 0c 00 00 	lea    0xc08(%rip),%r8        # 3574 <array.0+0x374>
    296c:	48 8d 0d bd 0b 00 00 	lea    0xbbd(%rip),%rcx        # 3530 <array.0+0x330>
    2973:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    297a:	be 01 00 00 00       	mov    $0x1,%esi
    297f:	48 89 ef             	mov    %rbp,%rdi
    2982:	b8 00 00 00 00       	mov    $0x0,%eax
    2987:	e8 d4 e9 ff ff       	call   1360 <__sprintf_chk@plt>
    298c:	89 df                	mov    %ebx,%edi
    298e:	e8 bd e8 ff ff       	call   1250 <close@plt>
    2993:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2998:	e9 0b ff ff ff       	jmp    28a8 <init_driver+0xd7>

000000000000299d <driver_post>:
    299d:	f3 0f 1e fa          	endbr64
    29a1:	53                   	push   %rbx
    29a2:	48 89 cb             	mov    %rcx,%rbx
    29a5:	85 d2                	test   %edx,%edx
    29a7:	75 17                	jne    29c0 <driver_post+0x23>
    29a9:	48 85 ff             	test   %rdi,%rdi
    29ac:	74 05                	je     29b3 <driver_post+0x16>
    29ae:	80 3f 00             	cmpb   $0x0,(%rdi)
    29b1:	75 36                	jne    29e9 <driver_post+0x4c>
    29b3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29b8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29bc:	89 d0                	mov    %edx,%eax
    29be:	5b                   	pop    %rbx
    29bf:	c3                   	ret
    29c0:	48 89 f2             	mov    %rsi,%rdx
    29c3:	48 8d 35 c1 0b 00 00 	lea    0xbc1(%rip),%rsi        # 358b <array.0+0x38b>
    29ca:	bf 01 00 00 00       	mov    $0x1,%edi
    29cf:	b8 00 00 00 00       	mov    $0x0,%eax
    29d4:	e8 17 e9 ff ff       	call   12f0 <__printf_chk@plt>
    29d9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29de:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29e2:	b8 00 00 00 00       	mov    $0x0,%eax
    29e7:	eb d5                	jmp    29be <driver_post+0x21>
    29e9:	48 83 ec 08          	sub    $0x8,%rsp
    29ed:	51                   	push   %rcx
    29ee:	49 89 f1             	mov    %rsi,%r9
    29f1:	4c 8d 05 aa 0b 00 00 	lea    0xbaa(%rip),%r8        # 35a2 <array.0+0x3a2>
    29f8:	48 89 f9             	mov    %rdi,%rcx
    29fb:	48 8d 15 ad 0b 00 00 	lea    0xbad(%rip),%rdx        # 35af <array.0+0x3af>
    2a02:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a07:	48 8d 3d 66 0b 00 00 	lea    0xb66(%rip),%rdi        # 3574 <array.0+0x374>
    2a0e:	e8 b2 f5 ff ff       	call   1fc5 <submitr>
    2a13:	48 83 c4 10          	add    $0x10,%rsp
    2a17:	eb a5                	jmp    29be <driver_post+0x21>

Disassembly of section .fini:

0000000000002a1c <_fini>:
    2a1c:	f3 0f 1e fa          	endbr64
    2a20:	48 83 ec 08          	sub    $0x8,%rsp
    2a24:	48 83 c4 08          	add    $0x8,%rsp
    2a28:	c3                   	ret
