
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	pushq  0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmpq *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	pushq  $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmpq 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	pushq  $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmpq 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	pushq  $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmpq 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	pushq  $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmpq 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	pushq  $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmpq 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	pushq  $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmpq 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	pushq  $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmpq 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	pushq  $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmpq 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	pushq  $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmpq 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	pushq  $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmpq 1020 <.plt>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	pushq  $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmpq 1020 <.plt>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	pushq  $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmpq 1020 <.plt>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmpq *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmpq *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcasecmp@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmpq *0x3cfd(%rip)        # 4f08 <strcasecmp@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <__errno_location@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmpq *0x3cf5(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <strcpy@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmpq *0x3ced(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <puts@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmpq *0x3ce5(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <write@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmpq *0x3cdd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmpq *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmpq *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmpq *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmpq *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmpq *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <signal@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmpq *0x3cad(%rip)        # 4f58 <signal@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <gethostbyname@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmpq *0x3ca5(%rip)        # 4f60 <gethostbyname@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <__memmove_chk@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmpq *0x3c9d(%rip)        # 4f68 <__memmove_chk@GLIBC_2.3.4>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strtol@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmpq *0x3c95(%rip)        # 4f70 <strtol@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <fflush@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmpq *0x3c8d(%rip)        # 4f78 <fflush@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__isoc99_sscanf@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmpq *0x3c85(%rip)        # 4f80 <__isoc99_sscanf@GLIBC_2.7>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__printf_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmpq *0x3c7d(%rip)        # 4f88 <__printf_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <fopen@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmpq *0x3c75(%rip)        # 4f90 <fopen@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <gethostname@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmpq *0x3c6d(%rip)        # 4f98 <gethostname@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmpq *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmpq *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmpq *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmpq *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmpq *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmpq *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmpq *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	4c 8d 05 b6 19 00 00 	lea    0x19b6(%rip),%r8        # 2d70 <__libc_csu_fini>
    13ba:	48 8d 0d 3f 19 00 00 	lea    0x193f(%rip),%rcx        # 2d00 <__libc_csu_init>
    13c1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1489 <main>
    13c8:	ff 15 12 3c 00 00    	callq  *0x3c12(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    13ce:	f4                   	hlt    
    13cf:	90                   	nop

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d a9 42 00 00 	lea    0x42a9(%rip),%rdi        # 5680 <stdout@@GLIBC_2.2.5>
    13d7:	48 8d 05 a2 42 00 00 	lea    0x42a2(%rip),%rax        # 5680 <stdout@@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 ee 3b 00 00 	mov    0x3bee(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmpq   *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	retq   
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 79 42 00 00 	lea    0x4279(%rip),%rdi        # 5680 <stdout@@GLIBC_2.2.5>
    1407:	48 8d 35 72 42 00 00 	lea    0x4272(%rip),%rsi        # 5680 <stdout@@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmpq   *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	retq   
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 5d 42 00 00 00 	cmpb   $0x0,0x425d(%rip)        # 56a8 <completed.8061>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	callq  11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	callq  13d0 <deregister_tm_clones>
    146c:	c6 05 35 42 00 00 01 	movb   $0x1,0x4235(%rip)        # 56a8 <completed.8061>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	retq   
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	retq   
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmpq   1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 f8 00 00 00    	je     158f <main+0x106>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 21 01 00 00    	jne    15c4 <main+0x13b>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 5d fe ff ff       	callq  1310 <fopen@plt>
    14b3:	48 89 05 f6 41 00 00 	mov    %rax,0x41f6(%rip)        # 56b0 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 df 00 00 00    	je     15a2 <main+0x119>
    14c3:	e8 45 07 00 00       	callq  1c0d <initialize_bomb>
    14c8:	48 8d 3d b9 1b 00 00 	lea    0x1bb9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14cf:	e8 5c fd ff ff       	callq  1230 <puts@plt>
    14d4:	48 8d 3d ed 1b 00 00 	lea    0x1bed(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14db:	e8 50 fd ff ff       	callq  1230 <puts@plt>
    14e0:	e8 3f 0a 00 00       	callq  1f24 <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 fa 00 00 00       	callq  15e7 <phase_1>
    14ed:	e8 7a 0b 00 00       	callq  206c <phase_defused>
    14f2:	48 8d 3d ff 1b 00 00 	lea    0x1bff(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14f9:	e8 32 fd ff ff       	callq  1230 <puts@plt>
    14fe:	e8 21 0a 00 00       	callq  1f24 <read_line>
    1503:	48 89 c7             	mov    %rax,%rdi
    1506:	e8 00 01 00 00       	callq  160b <phase_2>
    150b:	e8 5c 0b 00 00       	callq  206c <phase_defused>
    1510:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1517:	e8 14 fd ff ff       	callq  1230 <puts@plt>
    151c:	e8 03 0a 00 00       	callq  1f24 <read_line>
    1521:	48 89 c7             	mov    %rax,%rdi
    1524:	e8 50 01 00 00       	callq  1679 <phase_3>
    1529:	e8 3e 0b 00 00       	callq  206c <phase_defused>
    152e:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1535:	e8 f6 fc ff ff       	callq  1230 <puts@plt>
    153a:	e8 e5 09 00 00       	callq  1f24 <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 e4 02 00 00       	callq  182b <phase_4>
    1547:	e8 20 0b 00 00       	callq  206c <phase_defused>
    154c:	48 8d 3d d5 1b 00 00 	lea    0x1bd5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1553:	e8 d8 fc ff ff       	callq  1230 <puts@plt>
    1558:	e8 c7 09 00 00       	callq  1f24 <read_line>
    155d:	48 89 c7             	mov    %rax,%rdi
    1560:	e8 3b 03 00 00       	callq  18a0 <phase_5>
    1565:	e8 02 0b 00 00       	callq  206c <phase_defused>
    156a:	48 8d 3d f9 1a 00 00 	lea    0x1af9(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1571:	e8 ba fc ff ff       	callq  1230 <puts@plt>
    1576:	e8 a9 09 00 00       	callq  1f24 <read_line>
    157b:	48 89 c7             	mov    %rax,%rdi
    157e:	e8 b4 03 00 00       	callq  1937 <phase_6>
    1583:	e8 e4 0a 00 00       	callq  206c <phase_defused>
    1588:	b8 00 00 00 00       	mov    $0x0,%eax
    158d:	5b                   	pop    %rbx
    158e:	c3                   	retq   
    158f:	48 8b 05 fa 40 00 00 	mov    0x40fa(%rip),%rax        # 5690 <stdin@@GLIBC_2.2.5>
    1596:	48 89 05 13 41 00 00 	mov    %rax,0x4113(%rip)        # 56b0 <infile>
    159d:	e9 21 ff ff ff       	jmpq   14c3 <main+0x3a>
    15a2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    15a6:	48 8b 13             	mov    (%rbx),%rdx
    15a9:	48 8d 35 56 1a 00 00 	lea    0x1a56(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    15b0:	bf 01 00 00 00       	mov    $0x1,%edi
    15b5:	e8 46 fd ff ff       	callq  1300 <__printf_chk@plt>
    15ba:	bf 08 00 00 00       	mov    $0x8,%edi
    15bf:	e8 6c fd ff ff       	callq  1330 <exit@plt>
    15c4:	48 8b 16             	mov    (%rsi),%rdx
    15c7:	48 8d 35 55 1a 00 00 	lea    0x1a55(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ce:	bf 01 00 00 00       	mov    $0x1,%edi
    15d3:	b8 00 00 00 00       	mov    $0x0,%eax
    15d8:	e8 23 fd ff ff       	callq  1300 <__printf_chk@plt>
    15dd:	bf 08 00 00 00       	mov    $0x8,%edi
    15e2:	e8 49 fd ff ff       	callq  1330 <exit@plt>

00000000000015e7 <phase_1>:
    15e7:	f3 0f 1e fa          	endbr64 
    15eb:	48 83 ec 08          	sub    $0x8,%rsp
    15ef:	48 8d 35 5a 1b 00 00 	lea    0x1b5a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15f6:	e8 b2 05 00 00       	callq  1bad <strings_not_equal>
    15fb:	85 c0                	test   %eax,%eax
    15fd:	75 05                	jne    1604 <phase_1+0x1d>
    15ff:	48 83 c4 08          	add    $0x8,%rsp
    1603:	c3                   	retq   
    1604:	e8 94 08 00 00       	callq  1e9d <explode_bomb>
    1609:	eb f4                	jmp    15ff <phase_1+0x18>

000000000000160b <phase_2>:
    160b:	f3 0f 1e fa          	endbr64 
    160f:	55                   	push   %rbp
    1610:	53                   	push   %rbx
    1611:	48 83 ec 28          	sub    $0x28,%rsp
    1615:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    161c:	00 00 
    161e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1623:	31 c0                	xor    %eax,%eax
    1625:	48 89 e6             	mov    %rsp,%rsi
    1628:	e8 b2 08 00 00       	callq  1edf <read_six_numbers>
    162d:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    1631:	75 0a                	jne    163d <phase_2+0x32>
    1633:	48 89 e3             	mov    %rsp,%rbx
    1636:	48 8d 6c 24 14       	lea    0x14(%rsp),%rbp
    163b:	eb 15                	jmp    1652 <phase_2+0x47>
    163d:	e8 5b 08 00 00       	callq  1e9d <explode_bomb>
    1642:	eb ef                	jmp    1633 <phase_2+0x28>
    1644:	e8 54 08 00 00       	callq  1e9d <explode_bomb>
    1649:	48 83 c3 04          	add    $0x4,%rbx
    164d:	48 39 eb             	cmp    %rbp,%rbx
    1650:	74 0b                	je     165d <phase_2+0x52>
    1652:	8b 03                	mov    (%rbx),%eax
    1654:	01 c0                	add    %eax,%eax
    1656:	39 43 04             	cmp    %eax,0x4(%rbx)
    1659:	74 ee                	je     1649 <phase_2+0x3e>
    165b:	eb e7                	jmp    1644 <phase_2+0x39>
    165d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1662:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1669:	00 00 
    166b:	75 07                	jne    1674 <phase_2+0x69>
    166d:	48 83 c4 28          	add    $0x28,%rsp
    1671:	5b                   	pop    %rbx
    1672:	5d                   	pop    %rbp
    1673:	c3                   	retq   
    1674:	e8 d7 fb ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001679 <phase_3>:
    1679:	f3 0f 1e fa          	endbr64 
    167d:	48 83 ec 28          	sub    $0x28,%rsp
    1681:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1688:	00 00 
    168a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    168f:	31 c0                	xor    %eax,%eax
    1691:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    1696:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    169b:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    16a0:	48 8d 35 ef 1a 00 00 	lea    0x1aef(%rip),%rsi        # 3196 <_IO_stdin_used+0x196>
    16a7:	e8 44 fc ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    16ac:	83 f8 02             	cmp    $0x2,%eax
    16af:	7e 20                	jle    16d1 <phase_3+0x58>
    16b1:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    16b6:	0f 87 03 01 00 00    	ja     17bf <phase_3+0x146>
    16bc:	8b 44 24 10          	mov    0x10(%rsp),%eax
    16c0:	48 8d 15 d9 1a 00 00 	lea    0x1ad9(%rip),%rdx        # 31a0 <_IO_stdin_used+0x1a0>
    16c7:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    16cb:	48 01 d0             	add    %rdx,%rax
    16ce:	3e ff e0             	notrack jmpq *%rax
    16d1:	e8 c7 07 00 00       	callq  1e9d <explode_bomb>
    16d6:	eb d9                	jmp    16b1 <phase_3+0x38>
    16d8:	b8 69 00 00 00       	mov    $0x69,%eax
    16dd:	83 7c 24 14 7e       	cmpl   $0x7e,0x14(%rsp)
    16e2:	0f 84 e1 00 00 00    	je     17c9 <phase_3+0x150>
    16e8:	e8 b0 07 00 00       	callq  1e9d <explode_bomb>
    16ed:	b8 69 00 00 00       	mov    $0x69,%eax
    16f2:	e9 d2 00 00 00       	jmpq   17c9 <phase_3+0x150>
    16f7:	b8 78 00 00 00       	mov    $0x78,%eax
    16fc:	81 7c 24 14 ad 02 00 	cmpl   $0x2ad,0x14(%rsp)
    1703:	00 
    1704:	0f 84 bf 00 00 00    	je     17c9 <phase_3+0x150>
    170a:	e8 8e 07 00 00       	callq  1e9d <explode_bomb>
    170f:	b8 78 00 00 00       	mov    $0x78,%eax
    1714:	e9 b0 00 00 00       	jmpq   17c9 <phase_3+0x150>
    1719:	b8 64 00 00 00       	mov    $0x64,%eax
    171e:	81 7c 24 14 b1 02 00 	cmpl   $0x2b1,0x14(%rsp)
    1725:	00 
    1726:	0f 84 9d 00 00 00    	je     17c9 <phase_3+0x150>
    172c:	e8 6c 07 00 00       	callq  1e9d <explode_bomb>
    1731:	b8 64 00 00 00       	mov    $0x64,%eax
    1736:	e9 8e 00 00 00       	jmpq   17c9 <phase_3+0x150>
    173b:	b8 78 00 00 00       	mov    $0x78,%eax
    1740:	81 7c 24 14 f3 02 00 	cmpl   $0x2f3,0x14(%rsp)
    1747:	00 
    1748:	74 7f                	je     17c9 <phase_3+0x150>
    174a:	e8 4e 07 00 00       	callq  1e9d <explode_bomb>
    174f:	b8 78 00 00 00       	mov    $0x78,%eax
    1754:	eb 73                	jmp    17c9 <phase_3+0x150>
    1756:	b8 64 00 00 00       	mov    $0x64,%eax
    175b:	81 7c 24 14 a1 02 00 	cmpl   $0x2a1,0x14(%rsp)
    1762:	00 
    1763:	74 64                	je     17c9 <phase_3+0x150>
    1765:	e8 33 07 00 00       	callq  1e9d <explode_bomb>
    176a:	b8 64 00 00 00       	mov    $0x64,%eax
    176f:	eb 58                	jmp    17c9 <phase_3+0x150>
    1771:	b8 6a 00 00 00       	mov    $0x6a,%eax
    1776:	81 7c 24 14 67 01 00 	cmpl   $0x167,0x14(%rsp)
    177d:	00 
    177e:	74 49                	je     17c9 <phase_3+0x150>
    1780:	e8 18 07 00 00       	callq  1e9d <explode_bomb>
    1785:	b8 6a 00 00 00       	mov    $0x6a,%eax
    178a:	eb 3d                	jmp    17c9 <phase_3+0x150>
    178c:	b8 77 00 00 00       	mov    $0x77,%eax
    1791:	83 7c 24 14 37       	cmpl   $0x37,0x14(%rsp)
    1796:	74 31                	je     17c9 <phase_3+0x150>
    1798:	e8 00 07 00 00       	callq  1e9d <explode_bomb>
    179d:	b8 77 00 00 00       	mov    $0x77,%eax
    17a2:	eb 25                	jmp    17c9 <phase_3+0x150>
    17a4:	b8 68 00 00 00       	mov    $0x68,%eax
    17a9:	81 7c 24 14 7c 02 00 	cmpl   $0x27c,0x14(%rsp)
    17b0:	00 
    17b1:	74 16                	je     17c9 <phase_3+0x150>
    17b3:	e8 e5 06 00 00       	callq  1e9d <explode_bomb>
    17b8:	b8 68 00 00 00       	mov    $0x68,%eax
    17bd:	eb 0a                	jmp    17c9 <phase_3+0x150>
    17bf:	e8 d9 06 00 00       	callq  1e9d <explode_bomb>
    17c4:	b8 75 00 00 00       	mov    $0x75,%eax
    17c9:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    17cd:	75 15                	jne    17e4 <phase_3+0x16b>
    17cf:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    17d4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    17db:	00 00 
    17dd:	75 0c                	jne    17eb <phase_3+0x172>
    17df:	48 83 c4 28          	add    $0x28,%rsp
    17e3:	c3                   	retq   
    17e4:	e8 b4 06 00 00       	callq  1e9d <explode_bomb>
    17e9:	eb e4                	jmp    17cf <phase_3+0x156>
    17eb:	e8 60 fa ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000017f0 <func4>:
    17f0:	f3 0f 1e fa          	endbr64 
    17f4:	b8 00 00 00 00       	mov    $0x0,%eax
    17f9:	85 ff                	test   %edi,%edi
    17fb:	7e 2d                	jle    182a <func4+0x3a>
    17fd:	41 54                	push   %r12
    17ff:	55                   	push   %rbp
    1800:	53                   	push   %rbx
    1801:	89 fb                	mov    %edi,%ebx
    1803:	89 f5                	mov    %esi,%ebp
    1805:	89 f0                	mov    %esi,%eax
    1807:	83 ff 01             	cmp    $0x1,%edi
    180a:	74 19                	je     1825 <func4+0x35>
    180c:	8d 7f ff             	lea    -0x1(%rdi),%edi
    180f:	e8 dc ff ff ff       	callq  17f0 <func4>
    1814:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
    1818:	8d 7b fe             	lea    -0x2(%rbx),%edi
    181b:	89 ee                	mov    %ebp,%esi
    181d:	e8 ce ff ff ff       	callq  17f0 <func4>
    1822:	44 01 e0             	add    %r12d,%eax
    1825:	5b                   	pop    %rbx
    1826:	5d                   	pop    %rbp
    1827:	41 5c                	pop    %r12
    1829:	c3                   	retq   
    182a:	c3                   	retq   

000000000000182b <phase_4>:
    182b:	f3 0f 1e fa          	endbr64 
    182f:	48 83 ec 18          	sub    $0x18,%rsp
    1833:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    183a:	00 00 
    183c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1841:	31 c0                	xor    %eax,%eax
    1843:	48 89 e1             	mov    %rsp,%rcx
    1846:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    184b:	48 8d 35 d3 1b 00 00 	lea    0x1bd3(%rip),%rsi        # 3425 <array.3472+0x265>
    1852:	e8 99 fa ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    1857:	83 f8 02             	cmp    $0x2,%eax
    185a:	75 0b                	jne    1867 <phase_4+0x3c>
    185c:	8b 04 24             	mov    (%rsp),%eax
    185f:	83 e8 02             	sub    $0x2,%eax
    1862:	83 f8 02             	cmp    $0x2,%eax
    1865:	76 05                	jbe    186c <phase_4+0x41>
    1867:	e8 31 06 00 00       	callq  1e9d <explode_bomb>
    186c:	8b 34 24             	mov    (%rsp),%esi
    186f:	bf 08 00 00 00       	mov    $0x8,%edi
    1874:	e8 77 ff ff ff       	callq  17f0 <func4>
    1879:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    187d:	75 15                	jne    1894 <phase_4+0x69>
    187f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1884:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    188b:	00 00 
    188d:	75 0c                	jne    189b <phase_4+0x70>
    188f:	48 83 c4 18          	add    $0x18,%rsp
    1893:	c3                   	retq   
    1894:	e8 04 06 00 00       	callq  1e9d <explode_bomb>
    1899:	eb e4                	jmp    187f <phase_4+0x54>
    189b:	e8 b0 f9 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000018a0 <phase_5>:
    18a0:	f3 0f 1e fa          	endbr64 
    18a4:	48 83 ec 18          	sub    $0x18,%rsp
    18a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18af:	00 00 
    18b1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    18b6:	31 c0                	xor    %eax,%eax
    18b8:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    18bd:	48 89 e2             	mov    %rsp,%rdx
    18c0:	48 8d 35 5e 1b 00 00 	lea    0x1b5e(%rip),%rsi        # 3425 <array.3472+0x265>
    18c7:	e8 24 fa ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    18cc:	83 f8 01             	cmp    $0x1,%eax
    18cf:	7e 5a                	jle    192b <phase_5+0x8b>
    18d1:	8b 04 24             	mov    (%rsp),%eax
    18d4:	83 e0 0f             	and    $0xf,%eax
    18d7:	89 04 24             	mov    %eax,(%rsp)
    18da:	83 f8 0f             	cmp    $0xf,%eax
    18dd:	74 32                	je     1911 <phase_5+0x71>
    18df:	b9 00 00 00 00       	mov    $0x0,%ecx
    18e4:	ba 00 00 00 00       	mov    $0x0,%edx
    18e9:	48 8d 35 d0 18 00 00 	lea    0x18d0(%rip),%rsi        # 31c0 <array.3472>
    18f0:	83 c2 01             	add    $0x1,%edx
    18f3:	48 98                	cltq   
    18f5:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    18f8:	01 c1                	add    %eax,%ecx
    18fa:	83 f8 0f             	cmp    $0xf,%eax
    18fd:	75 f1                	jne    18f0 <phase_5+0x50>
    18ff:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1906:	83 fa 0f             	cmp    $0xf,%edx
    1909:	75 06                	jne    1911 <phase_5+0x71>
    190b:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    190f:	74 05                	je     1916 <phase_5+0x76>
    1911:	e8 87 05 00 00       	callq  1e9d <explode_bomb>
    1916:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    191b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1922:	00 00 
    1924:	75 0c                	jne    1932 <phase_5+0x92>
    1926:	48 83 c4 18          	add    $0x18,%rsp
    192a:	c3                   	retq   
    192b:	e8 6d 05 00 00       	callq  1e9d <explode_bomb>
    1930:	eb 9f                	jmp    18d1 <phase_5+0x31>
    1932:	e8 19 f9 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001937 <phase_6>:
    1937:	f3 0f 1e fa          	endbr64 
    193b:	41 56                	push   %r14
    193d:	41 55                	push   %r13
    193f:	41 54                	push   %r12
    1941:	55                   	push   %rbp
    1942:	53                   	push   %rbx
    1943:	48 83 ec 60          	sub    $0x60,%rsp
    1947:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    194e:	00 00 
    1950:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1955:	31 c0                	xor    %eax,%eax
    1957:	49 89 e5             	mov    %rsp,%r13
    195a:	4c 89 ee             	mov    %r13,%rsi
    195d:	e8 7d 05 00 00       	callq  1edf <read_six_numbers>
    1962:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1968:	49 89 e4             	mov    %rsp,%r12
    196b:	eb 28                	jmp    1995 <phase_6+0x5e>
    196d:	e8 2b 05 00 00       	callq  1e9d <explode_bomb>
    1972:	eb 30                	jmp    19a4 <phase_6+0x6d>
    1974:	48 83 c3 01          	add    $0x1,%rbx
    1978:	83 fb 05             	cmp    $0x5,%ebx
    197b:	7f 10                	jg     198d <phase_6+0x56>
    197d:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    1981:	39 45 00             	cmp    %eax,0x0(%rbp)
    1984:	75 ee                	jne    1974 <phase_6+0x3d>
    1986:	e8 12 05 00 00       	callq  1e9d <explode_bomb>
    198b:	eb e7                	jmp    1974 <phase_6+0x3d>
    198d:	49 83 c6 01          	add    $0x1,%r14
    1991:	49 83 c5 04          	add    $0x4,%r13
    1995:	4c 89 ed             	mov    %r13,%rbp
    1998:	41 8b 45 00          	mov    0x0(%r13),%eax
    199c:	83 e8 01             	sub    $0x1,%eax
    199f:	83 f8 05             	cmp    $0x5,%eax
    19a2:	77 c9                	ja     196d <phase_6+0x36>
    19a4:	41 83 fe 05          	cmp    $0x5,%r14d
    19a8:	7f 05                	jg     19af <phase_6+0x78>
    19aa:	4c 89 f3             	mov    %r14,%rbx
    19ad:	eb ce                	jmp    197d <phase_6+0x46>
    19af:	be 00 00 00 00       	mov    $0x0,%esi
    19b4:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    19b7:	b8 01 00 00 00       	mov    $0x1,%eax
    19bc:	48 8d 15 5d 38 00 00 	lea    0x385d(%rip),%rdx        # 5220 <node1>
    19c3:	83 f9 01             	cmp    $0x1,%ecx
    19c6:	7e 0b                	jle    19d3 <phase_6+0x9c>
    19c8:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    19cc:	83 c0 01             	add    $0x1,%eax
    19cf:	39 c8                	cmp    %ecx,%eax
    19d1:	75 f5                	jne    19c8 <phase_6+0x91>
    19d3:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    19d8:	48 83 c6 01          	add    $0x1,%rsi
    19dc:	48 83 fe 06          	cmp    $0x6,%rsi
    19e0:	75 d2                	jne    19b4 <phase_6+0x7d>
    19e2:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    19e7:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    19ec:	48 89 43 08          	mov    %rax,0x8(%rbx)
    19f0:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    19f5:	48 89 50 08          	mov    %rdx,0x8(%rax)
    19f9:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    19fe:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1a02:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1a07:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1a0b:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1a10:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1a14:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1a1b:	00 
    1a1c:	bd 05 00 00 00       	mov    $0x5,%ebp
    1a21:	eb 09                	jmp    1a2c <phase_6+0xf5>
    1a23:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1a27:	83 ed 01             	sub    $0x1,%ebp
    1a2a:	74 11                	je     1a3d <phase_6+0x106>
    1a2c:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1a30:	8b 00                	mov    (%rax),%eax
    1a32:	39 03                	cmp    %eax,(%rbx)
    1a34:	7e ed                	jle    1a23 <phase_6+0xec>
    1a36:	e8 62 04 00 00       	callq  1e9d <explode_bomb>
    1a3b:	eb e6                	jmp    1a23 <phase_6+0xec>
    1a3d:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1a42:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a49:	00 00 
    1a4b:	75 0d                	jne    1a5a <phase_6+0x123>
    1a4d:	48 83 c4 60          	add    $0x60,%rsp
    1a51:	5b                   	pop    %rbx
    1a52:	5d                   	pop    %rbp
    1a53:	41 5c                	pop    %r12
    1a55:	41 5d                	pop    %r13
    1a57:	41 5e                	pop    %r14
    1a59:	c3                   	retq   
    1a5a:	e8 f1 f7 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001a5f <fun7>:
    1a5f:	f3 0f 1e fa          	endbr64 
    1a63:	48 85 ff             	test   %rdi,%rdi
    1a66:	74 32                	je     1a9a <fun7+0x3b>
    1a68:	48 83 ec 08          	sub    $0x8,%rsp
    1a6c:	8b 17                	mov    (%rdi),%edx
    1a6e:	39 f2                	cmp    %esi,%edx
    1a70:	7f 0c                	jg     1a7e <fun7+0x1f>
    1a72:	b8 00 00 00 00       	mov    $0x0,%eax
    1a77:	75 12                	jne    1a8b <fun7+0x2c>
    1a79:	48 83 c4 08          	add    $0x8,%rsp
    1a7d:	c3                   	retq   
    1a7e:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1a82:	e8 d8 ff ff ff       	callq  1a5f <fun7>
    1a87:	01 c0                	add    %eax,%eax
    1a89:	eb ee                	jmp    1a79 <fun7+0x1a>
    1a8b:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1a8f:	e8 cb ff ff ff       	callq  1a5f <fun7>
    1a94:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1a98:	eb df                	jmp    1a79 <fun7+0x1a>
    1a9a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1a9f:	c3                   	retq   

0000000000001aa0 <secret_phase>:
    1aa0:	f3 0f 1e fa          	endbr64 
    1aa4:	53                   	push   %rbx
    1aa5:	e8 7a 04 00 00       	callq  1f24 <read_line>
    1aaa:	48 89 c7             	mov    %rax,%rdi
    1aad:	ba 0a 00 00 00       	mov    $0xa,%edx
    1ab2:	be 00 00 00 00       	mov    $0x0,%esi
    1ab7:	e8 14 f8 ff ff       	callq  12d0 <strtol@plt>
    1abc:	48 89 c3             	mov    %rax,%rbx
    1abf:	8d 40 ff             	lea    -0x1(%rax),%eax
    1ac2:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1ac7:	77 26                	ja     1aef <secret_phase+0x4f>
    1ac9:	89 de                	mov    %ebx,%esi
    1acb:	48 8d 3d 6e 36 00 00 	lea    0x366e(%rip),%rdi        # 5140 <n1>
    1ad2:	e8 88 ff ff ff       	callq  1a5f <fun7>
    1ad7:	83 f8 06             	cmp    $0x6,%eax
    1ada:	75 1a                	jne    1af6 <secret_phase+0x56>
    1adc:	48 8d 3d 8d 16 00 00 	lea    0x168d(%rip),%rdi        # 3170 <_IO_stdin_used+0x170>
    1ae3:	e8 48 f7 ff ff       	callq  1230 <puts@plt>
    1ae8:	e8 7f 05 00 00       	callq  206c <phase_defused>
    1aed:	5b                   	pop    %rbx
    1aee:	c3                   	retq   
    1aef:	e8 a9 03 00 00       	callq  1e9d <explode_bomb>
    1af4:	eb d3                	jmp    1ac9 <secret_phase+0x29>
    1af6:	e8 a2 03 00 00       	callq  1e9d <explode_bomb>
    1afb:	eb df                	jmp    1adc <secret_phase+0x3c>

0000000000001afd <sig_handler>:
    1afd:	f3 0f 1e fa          	endbr64 
    1b01:	50                   	push   %rax
    1b02:	58                   	pop    %rax
    1b03:	48 83 ec 08          	sub    $0x8,%rsp
    1b07:	48 8d 3d f2 16 00 00 	lea    0x16f2(%rip),%rdi        # 3200 <array.3472+0x40>
    1b0e:	e8 1d f7 ff ff       	callq  1230 <puts@plt>
    1b13:	bf 03 00 00 00       	mov    $0x3,%edi
    1b18:	e8 43 f8 ff ff       	callq  1360 <sleep@plt>
    1b1d:	48 8d 35 7d 18 00 00 	lea    0x187d(%rip),%rsi        # 33a1 <array.3472+0x1e1>
    1b24:	bf 01 00 00 00       	mov    $0x1,%edi
    1b29:	b8 00 00 00 00       	mov    $0x0,%eax
    1b2e:	e8 cd f7 ff ff       	callq  1300 <__printf_chk@plt>
    1b33:	48 8b 3d 46 3b 00 00 	mov    0x3b46(%rip),%rdi        # 5680 <stdout@@GLIBC_2.2.5>
    1b3a:	e8 a1 f7 ff ff       	callq  12e0 <fflush@plt>
    1b3f:	bf 01 00 00 00       	mov    $0x1,%edi
    1b44:	e8 17 f8 ff ff       	callq  1360 <sleep@plt>
    1b49:	48 8d 3d 59 18 00 00 	lea    0x1859(%rip),%rdi        # 33a9 <array.3472+0x1e9>
    1b50:	e8 db f6 ff ff       	callq  1230 <puts@plt>
    1b55:	bf 10 00 00 00       	mov    $0x10,%edi
    1b5a:	e8 d1 f7 ff ff       	callq  1330 <exit@plt>

0000000000001b5f <invalid_phase>:
    1b5f:	f3 0f 1e fa          	endbr64 
    1b63:	50                   	push   %rax
    1b64:	58                   	pop    %rax
    1b65:	48 83 ec 08          	sub    $0x8,%rsp
    1b69:	48 89 fa             	mov    %rdi,%rdx
    1b6c:	48 8d 35 3e 18 00 00 	lea    0x183e(%rip),%rsi        # 33b1 <array.3472+0x1f1>
    1b73:	bf 01 00 00 00       	mov    $0x1,%edi
    1b78:	b8 00 00 00 00       	mov    $0x0,%eax
    1b7d:	e8 7e f7 ff ff       	callq  1300 <__printf_chk@plt>
    1b82:	bf 08 00 00 00       	mov    $0x8,%edi
    1b87:	e8 a4 f7 ff ff       	callq  1330 <exit@plt>

0000000000001b8c <string_length>:
    1b8c:	f3 0f 1e fa          	endbr64 
    1b90:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b93:	74 12                	je     1ba7 <string_length+0x1b>
    1b95:	b8 00 00 00 00       	mov    $0x0,%eax
    1b9a:	48 83 c7 01          	add    $0x1,%rdi
    1b9e:	83 c0 01             	add    $0x1,%eax
    1ba1:	80 3f 00             	cmpb   $0x0,(%rdi)
    1ba4:	75 f4                	jne    1b9a <string_length+0xe>
    1ba6:	c3                   	retq   
    1ba7:	b8 00 00 00 00       	mov    $0x0,%eax
    1bac:	c3                   	retq   

0000000000001bad <strings_not_equal>:
    1bad:	f3 0f 1e fa          	endbr64 
    1bb1:	41 54                	push   %r12
    1bb3:	55                   	push   %rbp
    1bb4:	53                   	push   %rbx
    1bb5:	48 89 fb             	mov    %rdi,%rbx
    1bb8:	48 89 f5             	mov    %rsi,%rbp
    1bbb:	e8 cc ff ff ff       	callq  1b8c <string_length>
    1bc0:	41 89 c4             	mov    %eax,%r12d
    1bc3:	48 89 ef             	mov    %rbp,%rdi
    1bc6:	e8 c1 ff ff ff       	callq  1b8c <string_length>
    1bcb:	89 c2                	mov    %eax,%edx
    1bcd:	b8 01 00 00 00       	mov    $0x1,%eax
    1bd2:	41 39 d4             	cmp    %edx,%r12d
    1bd5:	75 31                	jne    1c08 <strings_not_equal+0x5b>
    1bd7:	0f b6 13             	movzbl (%rbx),%edx
    1bda:	84 d2                	test   %dl,%dl
    1bdc:	74 1e                	je     1bfc <strings_not_equal+0x4f>
    1bde:	b8 00 00 00 00       	mov    $0x0,%eax
    1be3:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1be7:	75 1a                	jne    1c03 <strings_not_equal+0x56>
    1be9:	48 83 c0 01          	add    $0x1,%rax
    1bed:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1bf1:	84 d2                	test   %dl,%dl
    1bf3:	75 ee                	jne    1be3 <strings_not_equal+0x36>
    1bf5:	b8 00 00 00 00       	mov    $0x0,%eax
    1bfa:	eb 0c                	jmp    1c08 <strings_not_equal+0x5b>
    1bfc:	b8 00 00 00 00       	mov    $0x0,%eax
    1c01:	eb 05                	jmp    1c08 <strings_not_equal+0x5b>
    1c03:	b8 01 00 00 00       	mov    $0x1,%eax
    1c08:	5b                   	pop    %rbx
    1c09:	5d                   	pop    %rbp
    1c0a:	41 5c                	pop    %r12
    1c0c:	c3                   	retq   

0000000000001c0d <initialize_bomb>:
    1c0d:	f3 0f 1e fa          	endbr64 
    1c11:	55                   	push   %rbp
    1c12:	53                   	push   %rbx
    1c13:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c1a:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c1f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1c26:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1c2b:	48 83 ec 58          	sub    $0x58,%rsp
    1c2f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c36:	00 00 
    1c38:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1c3f:	00 
    1c40:	31 c0                	xor    %eax,%eax
    1c42:	48 8d 35 b4 fe ff ff 	lea    -0x14c(%rip),%rsi        # 1afd <sig_handler>
    1c49:	bf 02 00 00 00       	mov    $0x2,%edi
    1c4e:	e8 4d f6 ff ff       	callq  12a0 <signal@plt>
    1c53:	48 89 e7             	mov    %rsp,%rdi
    1c56:	be 40 00 00 00       	mov    $0x40,%esi
    1c5b:	e8 c0 f6 ff ff       	callq  1320 <gethostname@plt>
    1c60:	85 c0                	test   %eax,%eax
    1c62:	75 45                	jne    1ca9 <initialize_bomb+0x9c>
    1c64:	48 8b 3d 15 36 00 00 	mov    0x3615(%rip),%rdi        # 5280 <host_table>
    1c6b:	48 8d 1d 16 36 00 00 	lea    0x3616(%rip),%rbx        # 5288 <host_table+0x8>
    1c72:	48 89 e5             	mov    %rsp,%rbp
    1c75:	48 85 ff             	test   %rdi,%rdi
    1c78:	74 19                	je     1c93 <initialize_bomb+0x86>
    1c7a:	48 89 ee             	mov    %rbp,%rsi
    1c7d:	e8 7e f5 ff ff       	callq  1200 <strcasecmp@plt>
    1c82:	85 c0                	test   %eax,%eax
    1c84:	74 5e                	je     1ce4 <initialize_bomb+0xd7>
    1c86:	48 83 c3 08          	add    $0x8,%rbx
    1c8a:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1c8e:	48 85 ff             	test   %rdi,%rdi
    1c91:	75 e7                	jne    1c7a <initialize_bomb+0x6d>
    1c93:	48 8d 3d d6 15 00 00 	lea    0x15d6(%rip),%rdi        # 3270 <array.3472+0xb0>
    1c9a:	e8 91 f5 ff ff       	callq  1230 <puts@plt>
    1c9f:	bf 08 00 00 00       	mov    $0x8,%edi
    1ca4:	e8 87 f6 ff ff       	callq  1330 <exit@plt>
    1ca9:	48 8d 3d 88 15 00 00 	lea    0x1588(%rip),%rdi        # 3238 <array.3472+0x78>
    1cb0:	e8 7b f5 ff ff       	callq  1230 <puts@plt>
    1cb5:	bf 08 00 00 00       	mov    $0x8,%edi
    1cba:	e8 71 f6 ff ff       	callq  1330 <exit@plt>
    1cbf:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1cc4:	48 8d 35 f7 16 00 00 	lea    0x16f7(%rip),%rsi        # 33c2 <array.3472+0x202>
    1ccb:	bf 01 00 00 00       	mov    $0x1,%edi
    1cd0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd5:	e8 26 f6 ff ff       	callq  1300 <__printf_chk@plt>
    1cda:	bf 08 00 00 00       	mov    $0x8,%edi
    1cdf:	e8 4c f6 ff ff       	callq  1330 <exit@plt>
    1ce4:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1ce9:	e8 a2 0d 00 00       	callq  2a90 <init_driver>
    1cee:	85 c0                	test   %eax,%eax
    1cf0:	78 cd                	js     1cbf <initialize_bomb+0xb2>
    1cf2:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1cf9:	00 
    1cfa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d01:	00 00 
    1d03:	75 0a                	jne    1d0f <initialize_bomb+0x102>
    1d05:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1d0c:	5b                   	pop    %rbx
    1d0d:	5d                   	pop    %rbp
    1d0e:	c3                   	retq   
    1d0f:	e8 3c f5 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001d14 <initialize_bomb_solve>:
    1d14:	f3 0f 1e fa          	endbr64 
    1d18:	c3                   	retq   

0000000000001d19 <blank_line>:
    1d19:	f3 0f 1e fa          	endbr64 
    1d1d:	55                   	push   %rbp
    1d1e:	53                   	push   %rbx
    1d1f:	48 83 ec 08          	sub    $0x8,%rsp
    1d23:	48 89 fd             	mov    %rdi,%rbp
    1d26:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1d2a:	84 db                	test   %bl,%bl
    1d2c:	74 1e                	je     1d4c <blank_line+0x33>
    1d2e:	e8 3d f6 ff ff       	callq  1370 <__ctype_b_loc@plt>
    1d33:	48 83 c5 01          	add    $0x1,%rbp
    1d37:	48 0f be db          	movsbq %bl,%rbx
    1d3b:	48 8b 00             	mov    (%rax),%rax
    1d3e:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1d43:	75 e1                	jne    1d26 <blank_line+0xd>
    1d45:	b8 00 00 00 00       	mov    $0x0,%eax
    1d4a:	eb 05                	jmp    1d51 <blank_line+0x38>
    1d4c:	b8 01 00 00 00       	mov    $0x1,%eax
    1d51:	48 83 c4 08          	add    $0x8,%rsp
    1d55:	5b                   	pop    %rbx
    1d56:	5d                   	pop    %rbp
    1d57:	c3                   	retq   

0000000000001d58 <skip>:
    1d58:	f3 0f 1e fa          	endbr64 
    1d5c:	55                   	push   %rbp
    1d5d:	53                   	push   %rbx
    1d5e:	48 83 ec 08          	sub    $0x8,%rsp
    1d62:	48 8d 2d 57 39 00 00 	lea    0x3957(%rip),%rbp        # 56c0 <input_strings>
    1d69:	48 63 05 3c 39 00 00 	movslq 0x393c(%rip),%rax        # 56ac <num_input_strings>
    1d70:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1d74:	48 c1 e7 04          	shl    $0x4,%rdi
    1d78:	48 01 ef             	add    %rbp,%rdi
    1d7b:	48 8b 15 2e 39 00 00 	mov    0x392e(%rip),%rdx        # 56b0 <infile>
    1d82:	be 50 00 00 00       	mov    $0x50,%esi
    1d87:	e8 04 f5 ff ff       	callq  1290 <fgets@plt>
    1d8c:	48 89 c3             	mov    %rax,%rbx
    1d8f:	48 85 c0             	test   %rax,%rax
    1d92:	74 0c                	je     1da0 <skip+0x48>
    1d94:	48 89 c7             	mov    %rax,%rdi
    1d97:	e8 7d ff ff ff       	callq  1d19 <blank_line>
    1d9c:	85 c0                	test   %eax,%eax
    1d9e:	75 c9                	jne    1d69 <skip+0x11>
    1da0:	48 89 d8             	mov    %rbx,%rax
    1da3:	48 83 c4 08          	add    $0x8,%rsp
    1da7:	5b                   	pop    %rbx
    1da8:	5d                   	pop    %rbp
    1da9:	c3                   	retq   

0000000000001daa <send_msg>:
    1daa:	f3 0f 1e fa          	endbr64 
    1dae:	53                   	push   %rbx
    1daf:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1db6:	ff 
    1db7:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1dbe:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1dc3:	4c 39 dc             	cmp    %r11,%rsp
    1dc6:	75 ef                	jne    1db7 <send_msg+0xd>
    1dc8:	48 83 ec 10          	sub    $0x10,%rsp
    1dcc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dd3:	00 00 
    1dd5:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1ddc:	00 
    1ddd:	31 c0                	xor    %eax,%eax
    1ddf:	8b 15 c7 38 00 00    	mov    0x38c7(%rip),%edx        # 56ac <num_input_strings>
    1de5:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1de8:	48 98                	cltq   
    1dea:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1dee:	48 c1 e0 04          	shl    $0x4,%rax
    1df2:	48 8d 0d c7 38 00 00 	lea    0x38c7(%rip),%rcx        # 56c0 <input_strings>
    1df9:	48 01 c8             	add    %rcx,%rax
    1dfc:	85 ff                	test   %edi,%edi
    1dfe:	4c 8d 0d d7 15 00 00 	lea    0x15d7(%rip),%r9        # 33dc <array.3472+0x21c>
    1e05:	48 8d 0d d8 15 00 00 	lea    0x15d8(%rip),%rcx        # 33e4 <array.3472+0x224>
    1e0c:	4c 0f 44 c9          	cmove  %rcx,%r9
    1e10:	48 89 e3             	mov    %rsp,%rbx
    1e13:	50                   	push   %rax
    1e14:	52                   	push   %rdx
    1e15:	44 8b 05 20 33 00 00 	mov    0x3320(%rip),%r8d        # 513c <bomb_id>
    1e1c:	48 8d 0d ca 15 00 00 	lea    0x15ca(%rip),%rcx        # 33ed <array.3472+0x22d>
    1e23:	ba 00 20 00 00       	mov    $0x2000,%edx
    1e28:	be 01 00 00 00       	mov    $0x1,%esi
    1e2d:	48 89 df             	mov    %rbx,%rdi
    1e30:	b8 00 00 00 00       	mov    $0x0,%eax
    1e35:	e8 46 f5 ff ff       	callq  1380 <__sprintf_chk@plt>
    1e3a:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1e41:	00 
    1e42:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e47:	48 89 da             	mov    %rbx,%rdx
    1e4a:	48 8d 35 cf 32 00 00 	lea    0x32cf(%rip),%rsi        # 5120 <user_password>
    1e51:	48 8d 3d dd 32 00 00 	lea    0x32dd(%rip),%rdi        # 5135 <userid>
    1e58:	e8 28 0e 00 00       	callq  2c85 <driver_post>
    1e5d:	48 83 c4 10          	add    $0x10,%rsp
    1e61:	85 c0                	test   %eax,%eax
    1e63:	78 1c                	js     1e81 <send_msg+0xd7>
    1e65:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1e6c:	00 
    1e6d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1e74:	00 00 
    1e76:	75 20                	jne    1e98 <send_msg+0xee>
    1e78:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1e7f:	5b                   	pop    %rbx
    1e80:	c3                   	retq   
    1e81:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1e88:	00 
    1e89:	e8 a2 f3 ff ff       	callq  1230 <puts@plt>
    1e8e:	bf 00 00 00 00       	mov    $0x0,%edi
    1e93:	e8 98 f4 ff ff       	callq  1330 <exit@plt>
    1e98:	e8 b3 f3 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001e9d <explode_bomb>:
    1e9d:	f3 0f 1e fa          	endbr64 
    1ea1:	50                   	push   %rax
    1ea2:	58                   	pop    %rax
    1ea3:	48 83 ec 08          	sub    $0x8,%rsp
    1ea7:	48 8d 3d 4b 15 00 00 	lea    0x154b(%rip),%rdi        # 33f9 <array.3472+0x239>
    1eae:	e8 7d f3 ff ff       	callq  1230 <puts@plt>
    1eb3:	48 8d 3d 48 15 00 00 	lea    0x1548(%rip),%rdi        # 3402 <array.3472+0x242>
    1eba:	e8 71 f3 ff ff       	callq  1230 <puts@plt>
    1ebf:	bf 00 00 00 00       	mov    $0x0,%edi
    1ec4:	e8 e1 fe ff ff       	callq  1daa <send_msg>
    1ec9:	48 8d 3d d8 13 00 00 	lea    0x13d8(%rip),%rdi        # 32a8 <array.3472+0xe8>
    1ed0:	e8 5b f3 ff ff       	callq  1230 <puts@plt>
    1ed5:	bf 08 00 00 00       	mov    $0x8,%edi
    1eda:	e8 51 f4 ff ff       	callq  1330 <exit@plt>

0000000000001edf <read_six_numbers>:
    1edf:	f3 0f 1e fa          	endbr64 
    1ee3:	48 83 ec 08          	sub    $0x8,%rsp
    1ee7:	48 89 f2             	mov    %rsi,%rdx
    1eea:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1eee:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1ef2:	50                   	push   %rax
    1ef3:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1ef7:	50                   	push   %rax
    1ef8:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1efc:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1f00:	48 8d 35 12 15 00 00 	lea    0x1512(%rip),%rsi        # 3419 <array.3472+0x259>
    1f07:	b8 00 00 00 00       	mov    $0x0,%eax
    1f0c:	e8 df f3 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    1f11:	48 83 c4 10          	add    $0x10,%rsp
    1f15:	83 f8 05             	cmp    $0x5,%eax
    1f18:	7e 05                	jle    1f1f <read_six_numbers+0x40>
    1f1a:	48 83 c4 08          	add    $0x8,%rsp
    1f1e:	c3                   	retq   
    1f1f:	e8 79 ff ff ff       	callq  1e9d <explode_bomb>

0000000000001f24 <read_line>:
    1f24:	f3 0f 1e fa          	endbr64 
    1f28:	48 83 ec 08          	sub    $0x8,%rsp
    1f2c:	b8 00 00 00 00       	mov    $0x0,%eax
    1f31:	e8 22 fe ff ff       	callq  1d58 <skip>
    1f36:	48 85 c0             	test   %rax,%rax
    1f39:	74 6f                	je     1faa <read_line+0x86>
    1f3b:	8b 35 6b 37 00 00    	mov    0x376b(%rip),%esi        # 56ac <num_input_strings>
    1f41:	48 63 c6             	movslq %esi,%rax
    1f44:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1f48:	48 c1 e2 04          	shl    $0x4,%rdx
    1f4c:	48 8d 05 6d 37 00 00 	lea    0x376d(%rip),%rax        # 56c0 <input_strings>
    1f53:	48 01 c2             	add    %rax,%rdx
    1f56:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1f5d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f62:	48 89 d7             	mov    %rdx,%rdi
    1f65:	f2 ae                	repnz scas %es:(%rdi),%al
    1f67:	48 f7 d1             	not    %rcx
    1f6a:	48 83 e9 01          	sub    $0x1,%rcx
    1f6e:	83 f9 4e             	cmp    $0x4e,%ecx
    1f71:	0f 8f ab 00 00 00    	jg     2022 <read_line+0xfe>
    1f77:	83 e9 01             	sub    $0x1,%ecx
    1f7a:	48 63 c9             	movslq %ecx,%rcx
    1f7d:	48 63 c6             	movslq %esi,%rax
    1f80:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1f84:	48 c1 e0 04          	shl    $0x4,%rax
    1f88:	48 89 c7             	mov    %rax,%rdi
    1f8b:	48 8d 05 2e 37 00 00 	lea    0x372e(%rip),%rax        # 56c0 <input_strings>
    1f92:	48 01 f8             	add    %rdi,%rax
    1f95:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1f99:	83 c6 01             	add    $0x1,%esi
    1f9c:	89 35 0a 37 00 00    	mov    %esi,0x370a(%rip)        # 56ac <num_input_strings>
    1fa2:	48 89 d0             	mov    %rdx,%rax
    1fa5:	48 83 c4 08          	add    $0x8,%rsp
    1fa9:	c3                   	retq   
    1faa:	48 8b 05 df 36 00 00 	mov    0x36df(%rip),%rax        # 5690 <stdin@@GLIBC_2.2.5>
    1fb1:	48 39 05 f8 36 00 00 	cmp    %rax,0x36f8(%rip)        # 56b0 <infile>
    1fb8:	74 1b                	je     1fd5 <read_line+0xb1>
    1fba:	48 8d 3d 88 14 00 00 	lea    0x1488(%rip),%rdi        # 3449 <array.3472+0x289>
    1fc1:	e8 2a f2 ff ff       	callq  11f0 <getenv@plt>
    1fc6:	48 85 c0             	test   %rax,%rax
    1fc9:	74 20                	je     1feb <read_line+0xc7>
    1fcb:	bf 00 00 00 00       	mov    $0x0,%edi
    1fd0:	e8 5b f3 ff ff       	callq  1330 <exit@plt>
    1fd5:	48 8d 3d 4f 14 00 00 	lea    0x144f(%rip),%rdi        # 342b <array.3472+0x26b>
    1fdc:	e8 4f f2 ff ff       	callq  1230 <puts@plt>
    1fe1:	bf 08 00 00 00       	mov    $0x8,%edi
    1fe6:	e8 45 f3 ff ff       	callq  1330 <exit@plt>
    1feb:	48 8b 05 9e 36 00 00 	mov    0x369e(%rip),%rax        # 5690 <stdin@@GLIBC_2.2.5>
    1ff2:	48 89 05 b7 36 00 00 	mov    %rax,0x36b7(%rip)        # 56b0 <infile>
    1ff9:	b8 00 00 00 00       	mov    $0x0,%eax
    1ffe:	e8 55 fd ff ff       	callq  1d58 <skip>
    2003:	48 85 c0             	test   %rax,%rax
    2006:	0f 85 2f ff ff ff    	jne    1f3b <read_line+0x17>
    200c:	48 8d 3d 18 14 00 00 	lea    0x1418(%rip),%rdi        # 342b <array.3472+0x26b>
    2013:	e8 18 f2 ff ff       	callq  1230 <puts@plt>
    2018:	bf 00 00 00 00       	mov    $0x0,%edi
    201d:	e8 0e f3 ff ff       	callq  1330 <exit@plt>
    2022:	48 8d 3d 2b 14 00 00 	lea    0x142b(%rip),%rdi        # 3454 <array.3472+0x294>
    2029:	e8 02 f2 ff ff       	callq  1230 <puts@plt>
    202e:	8b 05 78 36 00 00    	mov    0x3678(%rip),%eax        # 56ac <num_input_strings>
    2034:	8d 50 01             	lea    0x1(%rax),%edx
    2037:	89 15 6f 36 00 00    	mov    %edx,0x366f(%rip)        # 56ac <num_input_strings>
    203d:	48 98                	cltq   
    203f:	48 6b c0 50          	imul   $0x50,%rax,%rax
    2043:	48 8d 15 76 36 00 00 	lea    0x3676(%rip),%rdx        # 56c0 <input_strings>
    204a:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2051:	75 6e 63 
    2054:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    205b:	2a 2a 00 
    205e:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2062:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2067:	e8 31 fe ff ff       	callq  1e9d <explode_bomb>

000000000000206c <phase_defused>:
    206c:	f3 0f 1e fa          	endbr64 
    2070:	48 83 ec 78          	sub    $0x78,%rsp
    2074:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    207b:	00 00 
    207d:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    2082:	31 c0                	xor    %eax,%eax
    2084:	bf 01 00 00 00       	mov    $0x1,%edi
    2089:	e8 1c fd ff ff       	callq  1daa <send_msg>
    208e:	83 3d 17 36 00 00 06 	cmpl   $0x6,0x3617(%rip)        # 56ac <num_input_strings>
    2095:	74 19                	je     20b0 <phase_defused+0x44>
    2097:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    209c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    20a3:	00 00 
    20a5:	0f 85 84 00 00 00    	jne    212f <phase_defused+0xc3>
    20ab:	48 83 c4 78          	add    $0x78,%rsp
    20af:	c3                   	retq   
    20b0:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    20b5:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    20ba:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    20bf:	48 8d 35 a9 13 00 00 	lea    0x13a9(%rip),%rsi        # 346f <array.3472+0x2af>
    20c6:	48 8d 3d e3 36 00 00 	lea    0x36e3(%rip),%rdi        # 57b0 <input_strings+0xf0>
    20cd:	b8 00 00 00 00       	mov    $0x0,%eax
    20d2:	e8 19 f2 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    20d7:	83 f8 03             	cmp    $0x3,%eax
    20da:	74 1a                	je     20f6 <phase_defused+0x8a>
    20dc:	48 8d 3d 4d 12 00 00 	lea    0x124d(%rip),%rdi        # 3330 <array.3472+0x170>
    20e3:	e8 48 f1 ff ff       	callq  1230 <puts@plt>
    20e8:	48 8d 3d 71 12 00 00 	lea    0x1271(%rip),%rdi        # 3360 <array.3472+0x1a0>
    20ef:	e8 3c f1 ff ff       	callq  1230 <puts@plt>
    20f4:	eb a1                	jmp    2097 <phase_defused+0x2b>
    20f6:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    20fb:	48 8d 35 76 13 00 00 	lea    0x1376(%rip),%rsi        # 3478 <array.3472+0x2b8>
    2102:	e8 a6 fa ff ff       	callq  1bad <strings_not_equal>
    2107:	85 c0                	test   %eax,%eax
    2109:	75 d1                	jne    20dc <phase_defused+0x70>
    210b:	48 8d 3d be 11 00 00 	lea    0x11be(%rip),%rdi        # 32d0 <array.3472+0x110>
    2112:	e8 19 f1 ff ff       	callq  1230 <puts@plt>
    2117:	48 8d 3d da 11 00 00 	lea    0x11da(%rip),%rdi        # 32f8 <array.3472+0x138>
    211e:	e8 0d f1 ff ff       	callq  1230 <puts@plt>
    2123:	b8 00 00 00 00       	mov    $0x0,%eax
    2128:	e8 73 f9 ff ff       	callq  1aa0 <secret_phase>
    212d:	eb ad                	jmp    20dc <phase_defused+0x70>
    212f:	e8 1c f1 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002134 <sigalrm_handler>:
    2134:	f3 0f 1e fa          	endbr64 
    2138:	50                   	push   %rax
    2139:	58                   	pop    %rax
    213a:	48 83 ec 08          	sub    $0x8,%rsp
    213e:	b9 00 00 00 00       	mov    $0x0,%ecx
    2143:	48 8d 15 9e 13 00 00 	lea    0x139e(%rip),%rdx        # 34e8 <array.3472+0x328>
    214a:	be 01 00 00 00       	mov    $0x1,%esi
    214f:	48 8b 3d 4a 35 00 00 	mov    0x354a(%rip),%rdi        # 56a0 <stderr@@GLIBC_2.2.5>
    2156:	b8 00 00 00 00       	mov    $0x0,%eax
    215b:	e8 f0 f1 ff ff       	callq  1350 <__fprintf_chk@plt>
    2160:	bf 01 00 00 00       	mov    $0x1,%edi
    2165:	e8 c6 f1 ff ff       	callq  1330 <exit@plt>

000000000000216a <rio_readlineb>:
    216a:	41 56                	push   %r14
    216c:	41 55                	push   %r13
    216e:	41 54                	push   %r12
    2170:	55                   	push   %rbp
    2171:	53                   	push   %rbx
    2172:	48 89 f5             	mov    %rsi,%rbp
    2175:	48 83 fa 01          	cmp    $0x1,%rdx
    2179:	0f 86 90 00 00 00    	jbe    220f <rio_readlineb+0xa5>
    217f:	48 89 fb             	mov    %rdi,%rbx
    2182:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    2187:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    218d:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    2191:	eb 54                	jmp    21e7 <rio_readlineb+0x7d>
    2193:	e8 78 f0 ff ff       	callq  1210 <__errno_location@plt>
    2198:	83 38 04             	cmpl   $0x4,(%rax)
    219b:	75 53                	jne    21f0 <rio_readlineb+0x86>
    219d:	ba 00 20 00 00       	mov    $0x2000,%edx
    21a2:	4c 89 e6             	mov    %r12,%rsi
    21a5:	8b 3b                	mov    (%rbx),%edi
    21a7:	e8 d4 f0 ff ff       	callq  1280 <read@plt>
    21ac:	89 c2                	mov    %eax,%edx
    21ae:	89 43 04             	mov    %eax,0x4(%rbx)
    21b1:	85 c0                	test   %eax,%eax
    21b3:	78 de                	js     2193 <rio_readlineb+0x29>
    21b5:	85 c0                	test   %eax,%eax
    21b7:	74 40                	je     21f9 <rio_readlineb+0x8f>
    21b9:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    21bd:	48 8b 43 08          	mov    0x8(%rbx),%rax
    21c1:	0f b6 08             	movzbl (%rax),%ecx
    21c4:	48 83 c0 01          	add    $0x1,%rax
    21c8:	48 89 43 08          	mov    %rax,0x8(%rbx)
    21cc:	83 ea 01             	sub    $0x1,%edx
    21cf:	89 53 04             	mov    %edx,0x4(%rbx)
    21d2:	48 83 c5 01          	add    $0x1,%rbp
    21d6:	88 4d ff             	mov    %cl,-0x1(%rbp)
    21d9:	80 f9 0a             	cmp    $0xa,%cl
    21dc:	74 3c                	je     221a <rio_readlineb+0xb0>
    21de:	41 83 c5 01          	add    $0x1,%r13d
    21e2:	4c 39 f5             	cmp    %r14,%rbp
    21e5:	74 30                	je     2217 <rio_readlineb+0xad>
    21e7:	8b 53 04             	mov    0x4(%rbx),%edx
    21ea:	85 d2                	test   %edx,%edx
    21ec:	7e af                	jle    219d <rio_readlineb+0x33>
    21ee:	eb cd                	jmp    21bd <rio_readlineb+0x53>
    21f0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    21f7:	eb 05                	jmp    21fe <rio_readlineb+0x94>
    21f9:	b8 00 00 00 00       	mov    $0x0,%eax
    21fe:	85 c0                	test   %eax,%eax
    2200:	75 28                	jne    222a <rio_readlineb+0xc0>
    2202:	b8 00 00 00 00       	mov    $0x0,%eax
    2207:	41 83 fd 01          	cmp    $0x1,%r13d
    220b:	75 0d                	jne    221a <rio_readlineb+0xb0>
    220d:	eb 12                	jmp    2221 <rio_readlineb+0xb7>
    220f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2215:	eb 03                	jmp    221a <rio_readlineb+0xb0>
    2217:	4c 89 f5             	mov    %r14,%rbp
    221a:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    221e:	49 63 c5             	movslq %r13d,%rax
    2221:	5b                   	pop    %rbx
    2222:	5d                   	pop    %rbp
    2223:	41 5c                	pop    %r12
    2225:	41 5d                	pop    %r13
    2227:	41 5e                	pop    %r14
    2229:	c3                   	retq   
    222a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2231:	eb ee                	jmp    2221 <rio_readlineb+0xb7>

0000000000002233 <submitr>:
    2233:	f3 0f 1e fa          	endbr64 
    2237:	41 57                	push   %r15
    2239:	41 56                	push   %r14
    223b:	41 55                	push   %r13
    223d:	41 54                	push   %r12
    223f:	55                   	push   %rbp
    2240:	53                   	push   %rbx
    2241:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    2248:	ff 
    2249:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2250:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2255:	4c 39 dc             	cmp    %r11,%rsp
    2258:	75 ef                	jne    2249 <submitr+0x16>
    225a:	48 83 ec 68          	sub    $0x68,%rsp
    225e:	49 89 fd             	mov    %rdi,%r13
    2261:	89 f5                	mov    %esi,%ebp
    2263:	48 89 14 24          	mov    %rdx,(%rsp)
    2267:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    226c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2271:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    2276:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    227d:	00 
    227e:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    2285:	00 
    2286:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    228d:	00 00 
    228f:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    2296:	00 
    2297:	31 c0                	xor    %eax,%eax
    2299:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    22a0:	00 
    22a1:	ba 00 00 00 00       	mov    $0x0,%edx
    22a6:	be 01 00 00 00       	mov    $0x1,%esi
    22ab:	bf 02 00 00 00       	mov    $0x2,%edi
    22b0:	e8 db f0 ff ff       	callq  1390 <socket@plt>
    22b5:	85 c0                	test   %eax,%eax
    22b7:	0f 88 17 01 00 00    	js     23d4 <submitr+0x1a1>
    22bd:	41 89 c4             	mov    %eax,%r12d
    22c0:	4c 89 ef             	mov    %r13,%rdi
    22c3:	e8 e8 ef ff ff       	callq  12b0 <gethostbyname@plt>
    22c8:	48 85 c0             	test   %rax,%rax
    22cb:	0f 84 53 01 00 00    	je     2424 <submitr+0x1f1>
    22d1:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    22d6:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    22dd:	00 00 
    22df:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    22e6:	00 00 
    22e8:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    22ef:	48 63 50 14          	movslq 0x14(%rax),%rdx
    22f3:	48 8b 40 18          	mov    0x18(%rax),%rax
    22f7:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    22fc:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2301:	48 8b 30             	mov    (%rax),%rsi
    2304:	e8 b7 ef ff ff       	callq  12c0 <__memmove_chk@plt>
    2309:	66 c1 c5 08          	rol    $0x8,%bp
    230d:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    2312:	ba 10 00 00 00       	mov    $0x10,%edx
    2317:	4c 89 ee             	mov    %r13,%rsi
    231a:	44 89 e7             	mov    %r12d,%edi
    231d:	e8 1e f0 ff ff       	callq  1340 <connect@plt>
    2322:	85 c0                	test   %eax,%eax
    2324:	0f 88 65 01 00 00    	js     248f <submitr+0x25c>
    232a:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    2331:	b8 00 00 00 00       	mov    $0x0,%eax
    2336:	4c 89 c9             	mov    %r9,%rcx
    2339:	48 89 df             	mov    %rbx,%rdi
    233c:	f2 ae                	repnz scas %es:(%rdi),%al
    233e:	48 f7 d1             	not    %rcx
    2341:	48 89 ce             	mov    %rcx,%rsi
    2344:	4c 89 c9             	mov    %r9,%rcx
    2347:	48 8b 3c 24          	mov    (%rsp),%rdi
    234b:	f2 ae                	repnz scas %es:(%rdi),%al
    234d:	49 89 c8             	mov    %rcx,%r8
    2350:	4c 89 c9             	mov    %r9,%rcx
    2353:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2358:	f2 ae                	repnz scas %es:(%rdi),%al
    235a:	48 89 ca             	mov    %rcx,%rdx
    235d:	48 f7 d2             	not    %rdx
    2360:	4c 89 c9             	mov    %r9,%rcx
    2363:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2368:	f2 ae                	repnz scas %es:(%rdi),%al
    236a:	4c 29 c2             	sub    %r8,%rdx
    236d:	48 29 ca             	sub    %rcx,%rdx
    2370:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    2375:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    237a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2380:	0f 87 66 01 00 00    	ja     24ec <submitr+0x2b9>
    2386:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    238d:	00 
    238e:	b9 00 04 00 00       	mov    $0x400,%ecx
    2393:	b8 00 00 00 00       	mov    $0x0,%eax
    2398:	48 89 d7             	mov    %rdx,%rdi
    239b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    239e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23a5:	48 89 df             	mov    %rbx,%rdi
    23a8:	f2 ae                	repnz scas %es:(%rdi),%al
    23aa:	48 f7 d1             	not    %rcx
    23ad:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    23b1:	83 f9 01             	cmp    $0x1,%ecx
    23b4:	0f 84 08 05 00 00    	je     28c2 <submitr+0x68f>
    23ba:	8d 40 ff             	lea    -0x1(%rax),%eax
    23bd:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    23c2:	48 89 d5             	mov    %rdx,%rbp
    23c5:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    23cc:	00 20 00 
    23cf:	e9 a6 01 00 00       	jmpq   257a <submitr+0x347>
    23d4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23db:	3a 20 43 
    23de:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23e5:	20 75 6e 
    23e8:	49 89 07             	mov    %rax,(%r15)
    23eb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23ef:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23f6:	74 6f 20 
    23f9:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2400:	65 20 73 
    2403:	49 89 47 10          	mov    %rax,0x10(%r15)
    2407:	49 89 57 18          	mov    %rdx,0x18(%r15)
    240b:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2412:	65 
    2413:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    241a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    241f:	e9 16 03 00 00       	jmpq   273a <submitr+0x507>
    2424:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    242b:	3a 20 44 
    242e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2435:	20 75 6e 
    2438:	49 89 07             	mov    %rax,(%r15)
    243b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    243f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2446:	74 6f 20 
    2449:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2450:	76 65 20 
    2453:	49 89 47 10          	mov    %rax,0x10(%r15)
    2457:	49 89 57 18          	mov    %rdx,0x18(%r15)
    245b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2462:	72 20 61 
    2465:	49 89 47 20          	mov    %rax,0x20(%r15)
    2469:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2470:	65 
    2471:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2478:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    247d:	44 89 e7             	mov    %r12d,%edi
    2480:	e8 eb ed ff ff       	callq  1270 <close@plt>
    2485:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    248a:	e9 ab 02 00 00       	jmpq   273a <submitr+0x507>
    248f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2496:	3a 20 55 
    2499:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    24a0:	20 74 6f 
    24a3:	49 89 07             	mov    %rax,(%r15)
    24a6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24aa:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    24b1:	65 63 74 
    24b4:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    24bb:	68 65 20 
    24be:	49 89 47 10          	mov    %rax,0x10(%r15)
    24c2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24c6:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    24cd:	76 
    24ce:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    24d5:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    24da:	44 89 e7             	mov    %r12d,%edi
    24dd:	e8 8e ed ff ff       	callq  1270 <close@plt>
    24e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24e7:	e9 4e 02 00 00       	jmpq   273a <submitr+0x507>
    24ec:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    24f3:	3a 20 52 
    24f6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    24fd:	20 73 74 
    2500:	49 89 07             	mov    %rax,(%r15)
    2503:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2507:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    250e:	74 6f 6f 
    2511:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2518:	65 2e 20 
    251b:	49 89 47 10          	mov    %rax,0x10(%r15)
    251f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2523:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    252a:	61 73 65 
    252d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2534:	49 54 52 
    2537:	49 89 47 20          	mov    %rax,0x20(%r15)
    253b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    253f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2546:	55 46 00 
    2549:	49 89 47 30          	mov    %rax,0x30(%r15)
    254d:	44 89 e7             	mov    %r12d,%edi
    2550:	e8 1b ed ff ff       	callq  1270 <close@plt>
    2555:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    255a:	e9 db 01 00 00       	jmpq   273a <submitr+0x507>
    255f:	49 0f a3 c5          	bt     %rax,%r13
    2563:	73 21                	jae    2586 <submitr+0x353>
    2565:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2569:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    256d:	48 83 c3 01          	add    $0x1,%rbx
    2571:	4c 39 f3             	cmp    %r14,%rbx
    2574:	0f 84 48 03 00 00    	je     28c2 <submitr+0x68f>
    257a:	44 0f b6 03          	movzbl (%rbx),%r8d
    257e:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2582:	3c 35                	cmp    $0x35,%al
    2584:	76 d9                	jbe    255f <submitr+0x32c>
    2586:	44 89 c0             	mov    %r8d,%eax
    2589:	83 e0 df             	and    $0xffffffdf,%eax
    258c:	83 e8 41             	sub    $0x41,%eax
    258f:	3c 19                	cmp    $0x19,%al
    2591:	76 d2                	jbe    2565 <submitr+0x332>
    2593:	41 80 f8 20          	cmp    $0x20,%r8b
    2597:	74 63                	je     25fc <submitr+0x3c9>
    2599:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    259d:	3c 5f                	cmp    $0x5f,%al
    259f:	76 0a                	jbe    25ab <submitr+0x378>
    25a1:	41 80 f8 09          	cmp    $0x9,%r8b
    25a5:	0f 85 8a 02 00 00    	jne    2835 <submitr+0x602>
    25ab:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    25b2:	00 
    25b3:	45 0f b6 c0          	movzbl %r8b,%r8d
    25b7:	48 8d 0d 00 10 00 00 	lea    0x1000(%rip),%rcx        # 35be <array.3472+0x3fe>
    25be:	ba 08 00 00 00       	mov    $0x8,%edx
    25c3:	be 01 00 00 00       	mov    $0x1,%esi
    25c8:	b8 00 00 00 00       	mov    $0x0,%eax
    25cd:	e8 ae ed ff ff       	callq  1380 <__sprintf_chk@plt>
    25d2:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    25d9:	00 
    25da:	88 45 00             	mov    %al,0x0(%rbp)
    25dd:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    25e4:	00 
    25e5:	88 45 01             	mov    %al,0x1(%rbp)
    25e8:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    25ef:	00 
    25f0:	88 45 02             	mov    %al,0x2(%rbp)
    25f3:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    25f7:	e9 71 ff ff ff       	jmpq   256d <submitr+0x33a>
    25fc:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2600:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2604:	e9 64 ff ff ff       	jmpq   256d <submitr+0x33a>
    2609:	48 01 c5             	add    %rax,%rbp
    260c:	48 29 c3             	sub    %rax,%rbx
    260f:	0f 84 25 03 00 00    	je     293a <submitr+0x707>
    2615:	48 89 da             	mov    %rbx,%rdx
    2618:	48 89 ee             	mov    %rbp,%rsi
    261b:	44 89 e7             	mov    %r12d,%edi
    261e:	e8 1d ec ff ff       	callq  1240 <write@plt>
    2623:	48 85 c0             	test   %rax,%rax
    2626:	7f e1                	jg     2609 <submitr+0x3d6>
    2628:	e8 e3 eb ff ff       	callq  1210 <__errno_location@plt>
    262d:	83 38 04             	cmpl   $0x4,(%rax)
    2630:	0f 85 a0 01 00 00    	jne    27d6 <submitr+0x5a3>
    2636:	4c 89 e8             	mov    %r13,%rax
    2639:	eb ce                	jmp    2609 <submitr+0x3d6>
    263b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2642:	3a 20 43 
    2645:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    264c:	20 75 6e 
    264f:	49 89 07             	mov    %rax,(%r15)
    2652:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2656:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    265d:	74 6f 20 
    2660:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2667:	66 69 72 
    266a:	49 89 47 10          	mov    %rax,0x10(%r15)
    266e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2672:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2679:	61 64 65 
    267c:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2683:	6d 20 73 
    2686:	49 89 47 20          	mov    %rax,0x20(%r15)
    268a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    268e:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2695:	65 
    2696:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    269d:	44 89 e7             	mov    %r12d,%edi
    26a0:	e8 cb eb ff ff       	callq  1270 <close@plt>
    26a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26aa:	e9 8b 00 00 00       	jmpq   273a <submitr+0x507>
    26af:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    26b6:	00 
    26b7:	48 8d 0d 52 0e 00 00 	lea    0xe52(%rip),%rcx        # 3510 <array.3472+0x350>
    26be:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    26c5:	be 01 00 00 00       	mov    $0x1,%esi
    26ca:	4c 89 ff             	mov    %r15,%rdi
    26cd:	b8 00 00 00 00       	mov    $0x0,%eax
    26d2:	e8 a9 ec ff ff       	callq  1380 <__sprintf_chk@plt>
    26d7:	44 89 e7             	mov    %r12d,%edi
    26da:	e8 91 eb ff ff       	callq  1270 <close@plt>
    26df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26e4:	eb 54                	jmp    273a <submitr+0x507>
    26e6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    26ed:	00 
    26ee:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    26f3:	ba 00 20 00 00       	mov    $0x2000,%edx
    26f8:	e8 6d fa ff ff       	callq  216a <rio_readlineb>
    26fd:	48 85 c0             	test   %rax,%rax
    2700:	7e 61                	jle    2763 <submitr+0x530>
    2702:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2709:	00 
    270a:	4c 89 ff             	mov    %r15,%rdi
    270d:	e8 0e eb ff ff       	callq  1220 <strcpy@plt>
    2712:	44 89 e7             	mov    %r12d,%edi
    2715:	e8 56 eb ff ff       	callq  1270 <close@plt>
    271a:	b9 03 00 00 00       	mov    $0x3,%ecx
    271f:	48 8d 3d b3 0e 00 00 	lea    0xeb3(%rip),%rdi        # 35d9 <array.3472+0x419>
    2726:	4c 89 fe             	mov    %r15,%rsi
    2729:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    272b:	0f 97 c0             	seta   %al
    272e:	1c 00                	sbb    $0x0,%al
    2730:	84 c0                	test   %al,%al
    2732:	0f 95 c0             	setne  %al
    2735:	0f b6 c0             	movzbl %al,%eax
    2738:	f7 d8                	neg    %eax
    273a:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    2741:	00 
    2742:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    2749:	00 00 
    274b:	0f 85 0c 03 00 00    	jne    2a5d <submitr+0x82a>
    2751:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2758:	5b                   	pop    %rbx
    2759:	5d                   	pop    %rbp
    275a:	41 5c                	pop    %r12
    275c:	41 5d                	pop    %r13
    275e:	41 5e                	pop    %r14
    2760:	41 5f                	pop    %r15
    2762:	c3                   	retq   
    2763:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    276a:	3a 20 43 
    276d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2774:	20 75 6e 
    2777:	49 89 07             	mov    %rax,(%r15)
    277a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    277e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2785:	74 6f 20 
    2788:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    278f:	73 74 61 
    2792:	49 89 47 10          	mov    %rax,0x10(%r15)
    2796:	49 89 57 18          	mov    %rdx,0x18(%r15)
    279a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    27a1:	65 73 73 
    27a4:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    27ab:	72 6f 6d 
    27ae:	49 89 47 20          	mov    %rax,0x20(%r15)
    27b2:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27b6:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    27bd:	65 72 00 
    27c0:	49 89 47 30          	mov    %rax,0x30(%r15)
    27c4:	44 89 e7             	mov    %r12d,%edi
    27c7:	e8 a4 ea ff ff       	callq  1270 <close@plt>
    27cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27d1:	e9 64 ff ff ff       	jmpq   273a <submitr+0x507>
    27d6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27dd:	3a 20 43 
    27e0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27e7:	20 75 6e 
    27ea:	49 89 07             	mov    %rax,(%r15)
    27ed:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27f1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27f8:	74 6f 20 
    27fb:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2802:	20 74 6f 
    2805:	49 89 47 10          	mov    %rax,0x10(%r15)
    2809:	49 89 57 18          	mov    %rdx,0x18(%r15)
    280d:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2814:	73 65 72 
    2817:	49 89 47 20          	mov    %rax,0x20(%r15)
    281b:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2822:	00 
    2823:	44 89 e7             	mov    %r12d,%edi
    2826:	e8 45 ea ff ff       	callq  1270 <close@plt>
    282b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2830:	e9 05 ff ff ff       	jmpq   273a <submitr+0x507>
    2835:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    283c:	3a 20 52 
    283f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2846:	20 73 74 
    2849:	49 89 07             	mov    %rax,(%r15)
    284c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2850:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2857:	63 6f 6e 
    285a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2861:	20 61 6e 
    2864:	49 89 47 10          	mov    %rax,0x10(%r15)
    2868:	49 89 57 18          	mov    %rdx,0x18(%r15)
    286c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2873:	67 61 6c 
    2876:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    287d:	6e 70 72 
    2880:	49 89 47 20          	mov    %rax,0x20(%r15)
    2884:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2888:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    288f:	6c 65 20 
    2892:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2899:	63 74 65 
    289c:	49 89 47 30          	mov    %rax,0x30(%r15)
    28a0:	49 89 57 38          	mov    %rdx,0x38(%r15)
    28a4:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    28ab:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    28b0:	44 89 e7             	mov    %r12d,%edi
    28b3:	e8 b8 e9 ff ff       	callq  1270 <close@plt>
    28b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28bd:	e9 78 fe ff ff       	jmpq   273a <submitr+0x507>
    28c2:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
    28c9:	00 
    28ca:	48 83 ec 08          	sub    $0x8,%rsp
    28ce:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    28d5:	00 
    28d6:	50                   	push   %rax
    28d7:	ff 74 24 20          	pushq  0x20(%rsp)
    28db:	ff 74 24 30          	pushq  0x30(%rsp)
    28df:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    28e4:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    28e9:	48 8d 0d 50 0c 00 00 	lea    0xc50(%rip),%rcx        # 3540 <array.3472+0x380>
    28f0:	ba 00 20 00 00       	mov    $0x2000,%edx
    28f5:	be 01 00 00 00       	mov    $0x1,%esi
    28fa:	48 89 df             	mov    %rbx,%rdi
    28fd:	b8 00 00 00 00       	mov    $0x0,%eax
    2902:	e8 79 ea ff ff       	callq  1380 <__sprintf_chk@plt>
    2907:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    290e:	b8 00 00 00 00       	mov    $0x0,%eax
    2913:	48 89 df             	mov    %rbx,%rdi
    2916:	f2 ae                	repnz scas %es:(%rdi),%al
    2918:	48 f7 d1             	not    %rcx
    291b:	48 83 c4 20          	add    $0x20,%rsp
    291f:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    2926:	00 
    2927:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    292d:	48 89 cb             	mov    %rcx,%rbx
    2930:	48 83 eb 01          	sub    $0x1,%rbx
    2934:	0f 85 db fc ff ff    	jne    2615 <submitr+0x3e2>
    293a:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    293f:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    2946:	00 
    2947:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    294c:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    2951:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    2956:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    295d:	00 
    295e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2963:	e8 02 f8 ff ff       	callq  216a <rio_readlineb>
    2968:	48 85 c0             	test   %rax,%rax
    296b:	0f 8e ca fc ff ff    	jle    263b <submitr+0x408>
    2971:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2976:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    297d:	00 
    297e:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2985:	00 
    2986:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    298d:	00 
    298e:	48 8d 35 30 0c 00 00 	lea    0xc30(%rip),%rsi        # 35c5 <array.3472+0x405>
    2995:	b8 00 00 00 00       	mov    $0x0,%eax
    299a:	e8 51 e9 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    299f:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    29a4:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    29ab:	0f 85 fe fc ff ff    	jne    26af <submitr+0x47c>
    29b1:	48 8d 1d 1e 0c 00 00 	lea    0xc1e(%rip),%rbx        # 35d6 <array.3472+0x416>
    29b8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    29bf:	00 
    29c0:	b9 03 00 00 00       	mov    $0x3,%ecx
    29c5:	48 89 df             	mov    %rbx,%rdi
    29c8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    29ca:	0f 97 c0             	seta   %al
    29cd:	1c 00                	sbb    $0x0,%al
    29cf:	84 c0                	test   %al,%al
    29d1:	0f 84 0f fd ff ff    	je     26e6 <submitr+0x4b3>
    29d7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    29de:	00 
    29df:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    29e4:	ba 00 20 00 00       	mov    $0x2000,%edx
    29e9:	e8 7c f7 ff ff       	callq  216a <rio_readlineb>
    29ee:	48 85 c0             	test   %rax,%rax
    29f1:	7f c5                	jg     29b8 <submitr+0x785>
    29f3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    29fa:	3a 20 43 
    29fd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a04:	20 75 6e 
    2a07:	49 89 07             	mov    %rax,(%r15)
    2a0a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2a0e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a15:	74 6f 20 
    2a18:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2a1f:	68 65 61 
    2a22:	49 89 47 10          	mov    %rax,0x10(%r15)
    2a26:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2a2a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2a31:	66 72 6f 
    2a34:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2a3b:	76 65 72 
    2a3e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2a42:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2a46:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2a4b:	44 89 e7             	mov    %r12d,%edi
    2a4e:	e8 1d e8 ff ff       	callq  1270 <close@plt>
    2a53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a58:	e9 dd fc ff ff       	jmpq   273a <submitr+0x507>
    2a5d:	e8 ee e7 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002a62 <init_timeout>:
    2a62:	f3 0f 1e fa          	endbr64 
    2a66:	85 ff                	test   %edi,%edi
    2a68:	75 01                	jne    2a6b <init_timeout+0x9>
    2a6a:	c3                   	retq   
    2a6b:	53                   	push   %rbx
    2a6c:	89 fb                	mov    %edi,%ebx
    2a6e:	48 8d 35 bf f6 ff ff 	lea    -0x941(%rip),%rsi        # 2134 <sigalrm_handler>
    2a75:	bf 0e 00 00 00       	mov    $0xe,%edi
    2a7a:	e8 21 e8 ff ff       	callq  12a0 <signal@plt>
    2a7f:	85 db                	test   %ebx,%ebx
    2a81:	bf 00 00 00 00       	mov    $0x0,%edi
    2a86:	0f 49 fb             	cmovns %ebx,%edi
    2a89:	e8 d2 e7 ff ff       	callq  1260 <alarm@plt>
    2a8e:	5b                   	pop    %rbx
    2a8f:	c3                   	retq   

0000000000002a90 <init_driver>:
    2a90:	f3 0f 1e fa          	endbr64 
    2a94:	41 54                	push   %r12
    2a96:	55                   	push   %rbp
    2a97:	53                   	push   %rbx
    2a98:	48 83 ec 20          	sub    $0x20,%rsp
    2a9c:	48 89 fd             	mov    %rdi,%rbp
    2a9f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2aa6:	00 00 
    2aa8:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2aad:	31 c0                	xor    %eax,%eax
    2aaf:	be 01 00 00 00       	mov    $0x1,%esi
    2ab4:	bf 0d 00 00 00       	mov    $0xd,%edi
    2ab9:	e8 e2 e7 ff ff       	callq  12a0 <signal@plt>
    2abe:	be 01 00 00 00       	mov    $0x1,%esi
    2ac3:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2ac8:	e8 d3 e7 ff ff       	callq  12a0 <signal@plt>
    2acd:	be 01 00 00 00       	mov    $0x1,%esi
    2ad2:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2ad7:	e8 c4 e7 ff ff       	callq  12a0 <signal@plt>
    2adc:	ba 00 00 00 00       	mov    $0x0,%edx
    2ae1:	be 01 00 00 00       	mov    $0x1,%esi
    2ae6:	bf 02 00 00 00       	mov    $0x2,%edi
    2aeb:	e8 a0 e8 ff ff       	callq  1390 <socket@plt>
    2af0:	85 c0                	test   %eax,%eax
    2af2:	0f 88 9c 00 00 00    	js     2b94 <init_driver+0x104>
    2af8:	89 c3                	mov    %eax,%ebx
    2afa:	48 8d 3d bd 09 00 00 	lea    0x9bd(%rip),%rdi        # 34be <array.3472+0x2fe>
    2b01:	e8 aa e7 ff ff       	callq  12b0 <gethostbyname@plt>
    2b06:	48 85 c0             	test   %rax,%rax
    2b09:	0f 84 d1 00 00 00    	je     2be0 <init_driver+0x150>
    2b0f:	49 89 e4             	mov    %rsp,%r12
    2b12:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2b19:	00 
    2b1a:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2b21:	00 00 
    2b23:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2b29:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2b2d:	48 8b 40 18          	mov    0x18(%rax),%rax
    2b31:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2b36:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2b3b:	48 8b 30             	mov    (%rax),%rsi
    2b3e:	e8 7d e7 ff ff       	callq  12c0 <__memmove_chk@plt>
    2b43:	66 c7 44 24 02 5a ac 	movw   $0xac5a,0x2(%rsp)
    2b4a:	ba 10 00 00 00       	mov    $0x10,%edx
    2b4f:	4c 89 e6             	mov    %r12,%rsi
    2b52:	89 df                	mov    %ebx,%edi
    2b54:	e8 e7 e7 ff ff       	callq  1340 <connect@plt>
    2b59:	85 c0                	test   %eax,%eax
    2b5b:	0f 88 e7 00 00 00    	js     2c48 <init_driver+0x1b8>
    2b61:	89 df                	mov    %ebx,%edi
    2b63:	e8 08 e7 ff ff       	callq  1270 <close@plt>
    2b68:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2b6e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2b72:	b8 00 00 00 00       	mov    $0x0,%eax
    2b77:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2b7c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2b83:	00 00 
    2b85:	0f 85 f5 00 00 00    	jne    2c80 <init_driver+0x1f0>
    2b8b:	48 83 c4 20          	add    $0x20,%rsp
    2b8f:	5b                   	pop    %rbx
    2b90:	5d                   	pop    %rbp
    2b91:	41 5c                	pop    %r12
    2b93:	c3                   	retq   
    2b94:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b9b:	3a 20 43 
    2b9e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ba5:	20 75 6e 
    2ba8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bac:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bb0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bb7:	74 6f 20 
    2bba:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2bc1:	65 20 73 
    2bc4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bc8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bcc:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2bd3:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2bd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bde:	eb 97                	jmp    2b77 <init_driver+0xe7>
    2be0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2be7:	3a 20 44 
    2bea:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2bf1:	20 75 6e 
    2bf4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bf8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bfc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c03:	74 6f 20 
    2c06:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2c0d:	76 65 20 
    2c10:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c14:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c18:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2c1f:	72 20 61 
    2c22:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c26:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2c2d:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2c33:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2c37:	89 df                	mov    %ebx,%edi
    2c39:	e8 32 e6 ff ff       	callq  1270 <close@plt>
    2c3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c43:	e9 2f ff ff ff       	jmpq   2b77 <init_driver+0xe7>
    2c48:	4c 8d 05 6f 08 00 00 	lea    0x86f(%rip),%r8        # 34be <array.3472+0x2fe>
    2c4f:	48 8d 0d 42 09 00 00 	lea    0x942(%rip),%rcx        # 3598 <array.3472+0x3d8>
    2c56:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2c5d:	be 01 00 00 00       	mov    $0x1,%esi
    2c62:	48 89 ef             	mov    %rbp,%rdi
    2c65:	b8 00 00 00 00       	mov    $0x0,%eax
    2c6a:	e8 11 e7 ff ff       	callq  1380 <__sprintf_chk@plt>
    2c6f:	89 df                	mov    %ebx,%edi
    2c71:	e8 fa e5 ff ff       	callq  1270 <close@plt>
    2c76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c7b:	e9 f7 fe ff ff       	jmpq   2b77 <init_driver+0xe7>
    2c80:	e8 cb e5 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002c85 <driver_post>:
    2c85:	f3 0f 1e fa          	endbr64 
    2c89:	53                   	push   %rbx
    2c8a:	4c 89 c3             	mov    %r8,%rbx
    2c8d:	85 c9                	test   %ecx,%ecx
    2c8f:	75 17                	jne    2ca8 <driver_post+0x23>
    2c91:	48 85 ff             	test   %rdi,%rdi
    2c94:	74 05                	je     2c9b <driver_post+0x16>
    2c96:	80 3f 00             	cmpb   $0x0,(%rdi)
    2c99:	75 33                	jne    2cce <driver_post+0x49>
    2c9b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2ca0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2ca4:	89 c8                	mov    %ecx,%eax
    2ca6:	5b                   	pop    %rbx
    2ca7:	c3                   	retq   
    2ca8:	48 8d 35 2d 09 00 00 	lea    0x92d(%rip),%rsi        # 35dc <array.3472+0x41c>
    2caf:	bf 01 00 00 00       	mov    $0x1,%edi
    2cb4:	b8 00 00 00 00       	mov    $0x0,%eax
    2cb9:	e8 42 e6 ff ff       	callq  1300 <__printf_chk@plt>
    2cbe:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2cc3:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2cc7:	b8 00 00 00 00       	mov    $0x0,%eax
    2ccc:	eb d8                	jmp    2ca6 <driver_post+0x21>
    2cce:	41 50                	push   %r8
    2cd0:	52                   	push   %rdx
    2cd1:	4c 8d 0d 1b 09 00 00 	lea    0x91b(%rip),%r9        # 35f3 <array.3472+0x433>
    2cd8:	49 89 f0             	mov    %rsi,%r8
    2cdb:	48 89 f9             	mov    %rdi,%rcx
    2cde:	48 8d 15 1a 09 00 00 	lea    0x91a(%rip),%rdx        # 35ff <array.3472+0x43f>
    2ce5:	be ac 5a 00 00       	mov    $0x5aac,%esi
    2cea:	48 8d 3d cd 07 00 00 	lea    0x7cd(%rip),%rdi        # 34be <array.3472+0x2fe>
    2cf1:	e8 3d f5 ff ff       	callq  2233 <submitr>
    2cf6:	48 83 c4 10          	add    $0x10,%rsp
    2cfa:	eb aa                	jmp    2ca6 <driver_post+0x21>
    2cfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002d00 <__libc_csu_init>:
    2d00:	f3 0f 1e fa          	endbr64 
    2d04:	41 57                	push   %r15
    2d06:	4c 8d 3d db 1f 00 00 	lea    0x1fdb(%rip),%r15        # 4ce8 <__frame_dummy_init_array_entry>
    2d0d:	41 56                	push   %r14
    2d0f:	49 89 d6             	mov    %rdx,%r14
    2d12:	41 55                	push   %r13
    2d14:	49 89 f5             	mov    %rsi,%r13
    2d17:	41 54                	push   %r12
    2d19:	41 89 fc             	mov    %edi,%r12d
    2d1c:	55                   	push   %rbp
    2d1d:	48 8d 2d cc 1f 00 00 	lea    0x1fcc(%rip),%rbp        # 4cf0 <__do_global_dtors_aux_fini_array_entry>
    2d24:	53                   	push   %rbx
    2d25:	4c 29 fd             	sub    %r15,%rbp
    2d28:	48 83 ec 08          	sub    $0x8,%rsp
    2d2c:	e8 cf e2 ff ff       	callq  1000 <_init>
    2d31:	48 c1 fd 03          	sar    $0x3,%rbp
    2d35:	74 1f                	je     2d56 <__libc_csu_init+0x56>
    2d37:	31 db                	xor    %ebx,%ebx
    2d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2d40:	4c 89 f2             	mov    %r14,%rdx
    2d43:	4c 89 ee             	mov    %r13,%rsi
    2d46:	44 89 e7             	mov    %r12d,%edi
    2d49:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2d4d:	48 83 c3 01          	add    $0x1,%rbx
    2d51:	48 39 dd             	cmp    %rbx,%rbp
    2d54:	75 ea                	jne    2d40 <__libc_csu_init+0x40>
    2d56:	48 83 c4 08          	add    $0x8,%rsp
    2d5a:	5b                   	pop    %rbx
    2d5b:	5d                   	pop    %rbp
    2d5c:	41 5c                	pop    %r12
    2d5e:	41 5d                	pop    %r13
    2d60:	41 5e                	pop    %r14
    2d62:	41 5f                	pop    %r15
    2d64:	c3                   	retq   
    2d65:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2d6c:	00 00 00 00 

0000000000002d70 <__libc_csu_fini>:
    2d70:	f3 0f 1e fa          	endbr64 
    2d74:	c3                   	retq   

Disassembly of section .fini:

0000000000002d78 <_fini>:
    2d78:	f3 0f 1e fa          	endbr64 
    2d7c:	48 83 ec 08          	sub    $0x8,%rsp
    2d80:	48 83 c4 08          	add    $0x8,%rsp
    2d84:	c3                   	retq   
