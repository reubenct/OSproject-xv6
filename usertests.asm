
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
      11:	68 6e 4d 00 00       	push   $0x4d6e
      16:	6a 01                	push   $0x1
      18:	e8 f3 39 00 00       	call   3a10 <printf>
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 82 4d 00 00       	push   $0x4d82
      26:	e8 b7 38 00 00       	call   38e2 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 14                	js     46 <main+0x46>
      32:	83 ec 08             	sub    $0x8,%esp
      35:	68 ec 54 00 00       	push   $0x54ec
      3a:	6a 01                	push   $0x1
      3c:	e8 cf 39 00 00       	call   3a10 <printf>
      41:	e8 5c 38 00 00       	call   38a2 <exit>
      46:	50                   	push   %eax
      47:	50                   	push   %eax
      48:	68 00 02 00 00       	push   $0x200
      4d:	68 82 4d 00 00       	push   $0x4d82
      52:	e8 8b 38 00 00       	call   38e2 <open>
      57:	89 04 24             	mov    %eax,(%esp)
      5a:	e8 6b 38 00 00       	call   38ca <close>
      5f:	e8 6c 35 00 00       	call   35d0 <argptest>
      64:	e8 87 11 00 00       	call   11f0 <createdelete>
      69:	e8 42 1a 00 00       	call   1ab0 <linkunlink>
      6e:	e8 2d 17 00 00       	call   17a0 <concreate>
      73:	e8 88 0f 00 00       	call   1000 <fourfiles>
      78:	e8 c3 0d 00 00       	call   e40 <sharedfd>
      7d:	e8 ee 31 00 00       	call   3270 <bigargtest>
      82:	e8 49 23 00 00       	call   23d0 <bigwrite>
      87:	e8 e4 31 00 00       	call   3270 <bigargtest>
      8c:	e8 6f 31 00 00       	call   3200 <bsstest>
      91:	e8 8a 2c 00 00       	call   2d20 <sbrktest>
      96:	e8 b5 30 00 00       	call   3150 <validatetest>
      9b:	e8 50 03 00 00       	call   3f0 <opentest>
      a0:	e8 db 03 00 00       	call   480 <writetest>
      a5:	e8 b6 05 00 00       	call   660 <writetest1>
      aa:	e8 81 07 00 00       	call   830 <createtest>
      af:	e8 3c 02 00 00       	call   2f0 <openiputtest>
      b4:	e8 47 01 00 00       	call   200 <exitiputtest>
      b9:	e8 62 00 00 00       	call   120 <iputtest>
      be:	e8 ad 0c 00 00       	call   d70 <mem>
      c3:	e8 48 09 00 00       	call   a10 <pipe1>
      c8:	e8 d3 0a 00 00       	call   ba0 <preempt>
      cd:	e8 0e 0c 00 00       	call   ce0 <exitwait>
      d2:	e8 e9 26 00 00       	call   27c0 <rmdot>
      d7:	e8 a4 25 00 00       	call   2680 <fourteen>
      dc:	e8 cf 23 00 00       	call   24b0 <bigfile>
      e1:	e8 0a 1c 00 00       	call   1cf0 <subdir>
      e6:	e8 a5 14 00 00       	call   1590 <linktest>
      eb:	e8 10 13 00 00       	call   1400 <unlinkread>
      f0:	e8 4b 28 00 00       	call   2940 <dirfile>
      f5:	e8 46 2a 00 00       	call   2b40 <iref>
      fa:	e8 61 2b 00 00       	call   2c60 <forktest>
      ff:	e8 bc 1a 00 00       	call   1bc0 <bigdir>
     104:	e8 57 34 00 00       	call   3560 <uio>
     109:	e8 b2 08 00 00       	call   9c0 <exectest>
     10e:	e8 8f 37 00 00       	call   38a2 <exit>
     113:	66 90                	xchg   %ax,%ax
     115:	66 90                	xchg   %ax,%ax
     117:	66 90                	xchg   %ax,%ax
     119:	66 90                	xchg   %ax,%ax
     11b:	66 90                	xchg   %ax,%ax
     11d:	66 90                	xchg   %ax,%ax
     11f:	90                   	nop

00000120 <iputtest>:
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
     126:	68 14 3e 00 00       	push   $0x3e14
     12b:	ff 35 10 5e 00 00    	pushl  0x5e10
     131:	e8 da 38 00 00       	call   3a10 <printf>
     136:	c7 04 24 a7 3d 00 00 	movl   $0x3da7,(%esp)
     13d:	e8 c8 37 00 00       	call   390a <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 a7 3d 00 00       	push   $0x3da7
     151:	e8 bc 37 00 00       	call   3912 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 85 00 00 00    	js     1e6 <iputtest+0xc6>
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 a4 3d 00 00       	push   $0x3da4
     169:	e8 84 37 00 00       	call   38f2 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 5a                	js     1cf <iputtest+0xaf>
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 c9 3d 00 00       	push   $0x3dc9
     17d:	e8 90 37 00 00       	call   3912 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 2f                	js     1b8 <iputtest+0x98>
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 4c 3e 00 00       	push   $0x3e4c
     191:	ff 35 10 5e 00 00    	pushl  0x5e10
     197:	e8 74 38 00 00       	call   3a10 <printf>
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 80 3d 00 00       	push   $0x3d80
     1a8:	ff 35 10 5e 00 00    	pushl  0x5e10
     1ae:	e8 5d 38 00 00       	call   3a10 <printf>
     1b3:	e8 ea 36 00 00       	call   38a2 <exit>
     1b8:	50                   	push   %eax
     1b9:	50                   	push   %eax
     1ba:	68 cb 3d 00 00       	push   $0x3dcb
     1bf:	ff 35 10 5e 00 00    	pushl  0x5e10
     1c5:	e8 46 38 00 00       	call   3a10 <printf>
     1ca:	e8 d3 36 00 00       	call   38a2 <exit>
     1cf:	52                   	push   %edx
     1d0:	52                   	push   %edx
     1d1:	68 af 3d 00 00       	push   $0x3daf
     1d6:	ff 35 10 5e 00 00    	pushl  0x5e10
     1dc:	e8 2f 38 00 00       	call   3a10 <printf>
     1e1:	e8 bc 36 00 00       	call   38a2 <exit>
     1e6:	51                   	push   %ecx
     1e7:	51                   	push   %ecx
     1e8:	68 8e 3d 00 00       	push   $0x3d8e
     1ed:	ff 35 10 5e 00 00    	pushl  0x5e10
     1f3:	e8 18 38 00 00       	call   3a10 <printf>
     1f8:	e8 a5 36 00 00       	call   38a2 <exit>
     1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
     206:	68 db 3d 00 00       	push   $0x3ddb
     20b:	ff 35 10 5e 00 00    	pushl  0x5e10
     211:	e8 fa 37 00 00       	call   3a10 <printf>
     216:	e8 7f 36 00 00       	call   389a <fork>
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 82 00 00 00    	js     2a8 <exitiputtest+0xa8>
     226:	75 48                	jne    270 <exitiputtest+0x70>
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 a7 3d 00 00       	push   $0x3da7
     230:	e8 d5 36 00 00       	call   390a <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 96 00 00 00    	js     2d6 <exitiputtest+0xd6>
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 a7 3d 00 00       	push   $0x3da7
     248:	e8 c5 36 00 00       	call   3912 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	78 6b                	js     2bf <exitiputtest+0xbf>
     254:	83 ec 0c             	sub    $0xc,%esp
     257:	68 a4 3d 00 00       	push   $0x3da4
     25c:	e8 91 36 00 00       	call   38f2 <unlink>
     261:	83 c4 10             	add    $0x10,%esp
     264:	85 c0                	test   %eax,%eax
     266:	78 28                	js     290 <exitiputtest+0x90>
     268:	e8 35 36 00 00       	call   38a2 <exit>
     26d:	8d 76 00             	lea    0x0(%esi),%esi
     270:	e8 35 36 00 00       	call   38aa <wait>
     275:	83 ec 08             	sub    $0x8,%esp
     278:	68 fe 3d 00 00       	push   $0x3dfe
     27d:	ff 35 10 5e 00 00    	pushl  0x5e10
     283:	e8 88 37 00 00       	call   3a10 <printf>
     288:	83 c4 10             	add    $0x10,%esp
     28b:	c9                   	leave  
     28c:	c3                   	ret    
     28d:	8d 76 00             	lea    0x0(%esi),%esi
     290:	83 ec 08             	sub    $0x8,%esp
     293:	68 af 3d 00 00       	push   $0x3daf
     298:	ff 35 10 5e 00 00    	pushl  0x5e10
     29e:	e8 6d 37 00 00       	call   3a10 <printf>
     2a3:	e8 fa 35 00 00       	call   38a2 <exit>
     2a8:	51                   	push   %ecx
     2a9:	51                   	push   %ecx
     2aa:	68 c1 4c 00 00       	push   $0x4cc1
     2af:	ff 35 10 5e 00 00    	pushl  0x5e10
     2b5:	e8 56 37 00 00       	call   3a10 <printf>
     2ba:	e8 e3 35 00 00       	call   38a2 <exit>
     2bf:	50                   	push   %eax
     2c0:	50                   	push   %eax
     2c1:	68 ea 3d 00 00       	push   $0x3dea
     2c6:	ff 35 10 5e 00 00    	pushl  0x5e10
     2cc:	e8 3f 37 00 00       	call   3a10 <printf>
     2d1:	e8 cc 35 00 00       	call   38a2 <exit>
     2d6:	52                   	push   %edx
     2d7:	52                   	push   %edx
     2d8:	68 80 3d 00 00       	push   $0x3d80
     2dd:	ff 35 10 5e 00 00    	pushl  0x5e10
     2e3:	e8 28 37 00 00       	call   3a10 <printf>
     2e8:	e8 b5 35 00 00       	call   38a2 <exit>
     2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <openiputtest>:
     2f0:	55                   	push   %ebp
     2f1:	89 e5                	mov    %esp,%ebp
     2f3:	83 ec 10             	sub    $0x10,%esp
     2f6:	68 10 3e 00 00       	push   $0x3e10
     2fb:	ff 35 10 5e 00 00    	pushl  0x5e10
     301:	e8 0a 37 00 00       	call   3a10 <printf>
     306:	c7 04 24 1f 3e 00 00 	movl   $0x3e1f,(%esp)
     30d:	e8 f8 35 00 00       	call   390a <mkdir>
     312:	83 c4 10             	add    $0x10,%esp
     315:	85 c0                	test   %eax,%eax
     317:	0f 88 88 00 00 00    	js     3a5 <openiputtest+0xb5>
     31d:	e8 78 35 00 00       	call   389a <fork>
     322:	85 c0                	test   %eax,%eax
     324:	0f 88 92 00 00 00    	js     3bc <openiputtest+0xcc>
     32a:	75 34                	jne    360 <openiputtest+0x70>
     32c:	83 ec 08             	sub    $0x8,%esp
     32f:	6a 02                	push   $0x2
     331:	68 1f 3e 00 00       	push   $0x3e1f
     336:	e8 a7 35 00 00       	call   38e2 <open>
     33b:	83 c4 10             	add    $0x10,%esp
     33e:	85 c0                	test   %eax,%eax
     340:	78 5e                	js     3a0 <openiputtest+0xb0>
     342:	83 ec 08             	sub    $0x8,%esp
     345:	68 a4 4d 00 00       	push   $0x4da4
     34a:	ff 35 10 5e 00 00    	pushl  0x5e10
     350:	e8 bb 36 00 00       	call   3a10 <printf>
     355:	e8 48 35 00 00       	call   38a2 <exit>
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     360:	83 ec 0c             	sub    $0xc,%esp
     363:	6a 01                	push   $0x1
     365:	e8 c8 35 00 00       	call   3932 <sleep>
     36a:	c7 04 24 1f 3e 00 00 	movl   $0x3e1f,(%esp)
     371:	e8 7c 35 00 00       	call   38f2 <unlink>
     376:	83 c4 10             	add    $0x10,%esp
     379:	85 c0                	test   %eax,%eax
     37b:	75 56                	jne    3d3 <openiputtest+0xe3>
     37d:	e8 28 35 00 00       	call   38aa <wait>
     382:	83 ec 08             	sub    $0x8,%esp
     385:	68 48 3e 00 00       	push   $0x3e48
     38a:	ff 35 10 5e 00 00    	pushl  0x5e10
     390:	e8 7b 36 00 00       	call   3a10 <printf>
     395:	83 c4 10             	add    $0x10,%esp
     398:	c9                   	leave  
     399:	c3                   	ret    
     39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3a0:	e8 fd 34 00 00       	call   38a2 <exit>
     3a5:	51                   	push   %ecx
     3a6:	51                   	push   %ecx
     3a7:	68 25 3e 00 00       	push   $0x3e25
     3ac:	ff 35 10 5e 00 00    	pushl  0x5e10
     3b2:	e8 59 36 00 00       	call   3a10 <printf>
     3b7:	e8 e6 34 00 00       	call   38a2 <exit>
     3bc:	52                   	push   %edx
     3bd:	52                   	push   %edx
     3be:	68 c1 4c 00 00       	push   $0x4cc1
     3c3:	ff 35 10 5e 00 00    	pushl  0x5e10
     3c9:	e8 42 36 00 00       	call   3a10 <printf>
     3ce:	e8 cf 34 00 00       	call   38a2 <exit>
     3d3:	50                   	push   %eax
     3d4:	50                   	push   %eax
     3d5:	68 39 3e 00 00       	push   $0x3e39
     3da:	ff 35 10 5e 00 00    	pushl  0x5e10
     3e0:	e8 2b 36 00 00       	call   3a10 <printf>
     3e5:	e8 b8 34 00 00       	call   38a2 <exit>
     3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003f0 <opentest>:
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	83 ec 10             	sub    $0x10,%esp
     3f6:	68 5a 3e 00 00       	push   $0x3e5a
     3fb:	ff 35 10 5e 00 00    	pushl  0x5e10
     401:	e8 0a 36 00 00       	call   3a10 <printf>
     406:	58                   	pop    %eax
     407:	5a                   	pop    %edx
     408:	6a 00                	push   $0x0
     40a:	68 65 3e 00 00       	push   $0x3e65
     40f:	e8 ce 34 00 00       	call   38e2 <open>
     414:	83 c4 10             	add    $0x10,%esp
     417:	85 c0                	test   %eax,%eax
     419:	78 36                	js     451 <opentest+0x61>
     41b:	83 ec 0c             	sub    $0xc,%esp
     41e:	50                   	push   %eax
     41f:	e8 a6 34 00 00       	call   38ca <close>
     424:	5a                   	pop    %edx
     425:	59                   	pop    %ecx
     426:	6a 00                	push   $0x0
     428:	68 7d 3e 00 00       	push   $0x3e7d
     42d:	e8 b0 34 00 00       	call   38e2 <open>
     432:	83 c4 10             	add    $0x10,%esp
     435:	85 c0                	test   %eax,%eax
     437:	79 2f                	jns    468 <opentest+0x78>
     439:	83 ec 08             	sub    $0x8,%esp
     43c:	68 a8 3e 00 00       	push   $0x3ea8
     441:	ff 35 10 5e 00 00    	pushl  0x5e10
     447:	e8 c4 35 00 00       	call   3a10 <printf>
     44c:	83 c4 10             	add    $0x10,%esp
     44f:	c9                   	leave  
     450:	c3                   	ret    
     451:	50                   	push   %eax
     452:	50                   	push   %eax
     453:	68 6a 3e 00 00       	push   $0x3e6a
     458:	ff 35 10 5e 00 00    	pushl  0x5e10
     45e:	e8 ad 35 00 00       	call   3a10 <printf>
     463:	e8 3a 34 00 00       	call   38a2 <exit>
     468:	50                   	push   %eax
     469:	50                   	push   %eax
     46a:	68 8a 3e 00 00       	push   $0x3e8a
     46f:	ff 35 10 5e 00 00    	pushl  0x5e10
     475:	e8 96 35 00 00       	call   3a10 <printf>
     47a:	e8 23 34 00 00       	call   38a2 <exit>
     47f:	90                   	nop

00000480 <writetest>:
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	56                   	push   %esi
     484:	53                   	push   %ebx
     485:	83 ec 08             	sub    $0x8,%esp
     488:	68 b6 3e 00 00       	push   $0x3eb6
     48d:	ff 35 10 5e 00 00    	pushl  0x5e10
     493:	e8 78 35 00 00       	call   3a10 <printf>
     498:	59                   	pop    %ecx
     499:	5b                   	pop    %ebx
     49a:	68 02 02 00 00       	push   $0x202
     49f:	68 c7 3e 00 00       	push   $0x3ec7
     4a4:	e8 39 34 00 00       	call   38e2 <open>
     4a9:	83 c4 10             	add    $0x10,%esp
     4ac:	85 c0                	test   %eax,%eax
     4ae:	0f 88 8b 01 00 00    	js     63f <writetest+0x1bf>
     4b4:	83 ec 08             	sub    $0x8,%esp
     4b7:	89 c6                	mov    %eax,%esi
     4b9:	31 db                	xor    %ebx,%ebx
     4bb:	68 cd 3e 00 00       	push   $0x3ecd
     4c0:	ff 35 10 5e 00 00    	pushl  0x5e10
     4c6:	e8 45 35 00 00       	call   3a10 <printf>
     4cb:	83 c4 10             	add    $0x10,%esp
     4ce:	66 90                	xchg   %ax,%ax
     4d0:	83 ec 04             	sub    $0x4,%esp
     4d3:	6a 0a                	push   $0xa
     4d5:	68 04 3f 00 00       	push   $0x3f04
     4da:	56                   	push   %esi
     4db:	e8 e2 33 00 00       	call   38c2 <write>
     4e0:	83 c4 10             	add    $0x10,%esp
     4e3:	83 f8 0a             	cmp    $0xa,%eax
     4e6:	0f 85 d9 00 00 00    	jne    5c5 <writetest+0x145>
     4ec:	83 ec 04             	sub    $0x4,%esp
     4ef:	6a 0a                	push   $0xa
     4f1:	68 0f 3f 00 00       	push   $0x3f0f
     4f6:	56                   	push   %esi
     4f7:	e8 c6 33 00 00       	call   38c2 <write>
     4fc:	83 c4 10             	add    $0x10,%esp
     4ff:	83 f8 0a             	cmp    $0xa,%eax
     502:	0f 85 d6 00 00 00    	jne    5de <writetest+0x15e>
     508:	83 c3 01             	add    $0x1,%ebx
     50b:	83 fb 64             	cmp    $0x64,%ebx
     50e:	75 c0                	jne    4d0 <writetest+0x50>
     510:	83 ec 08             	sub    $0x8,%esp
     513:	68 1a 3f 00 00       	push   $0x3f1a
     518:	ff 35 10 5e 00 00    	pushl  0x5e10
     51e:	e8 ed 34 00 00       	call   3a10 <printf>
     523:	89 34 24             	mov    %esi,(%esp)
     526:	e8 9f 33 00 00       	call   38ca <close>
     52b:	58                   	pop    %eax
     52c:	5a                   	pop    %edx
     52d:	6a 00                	push   $0x0
     52f:	68 c7 3e 00 00       	push   $0x3ec7
     534:	e8 a9 33 00 00       	call   38e2 <open>
     539:	83 c4 10             	add    $0x10,%esp
     53c:	85 c0                	test   %eax,%eax
     53e:	89 c3                	mov    %eax,%ebx
     540:	0f 88 b1 00 00 00    	js     5f7 <writetest+0x177>
     546:	83 ec 08             	sub    $0x8,%esp
     549:	68 25 3f 00 00       	push   $0x3f25
     54e:	ff 35 10 5e 00 00    	pushl  0x5e10
     554:	e8 b7 34 00 00       	call   3a10 <printf>
     559:	83 c4 0c             	add    $0xc,%esp
     55c:	68 d0 07 00 00       	push   $0x7d0
     561:	68 00 86 00 00       	push   $0x8600
     566:	53                   	push   %ebx
     567:	e8 4e 33 00 00       	call   38ba <read>
     56c:	83 c4 10             	add    $0x10,%esp
     56f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     574:	0f 85 95 00 00 00    	jne    60f <writetest+0x18f>
     57a:	83 ec 08             	sub    $0x8,%esp
     57d:	68 59 3f 00 00       	push   $0x3f59
     582:	ff 35 10 5e 00 00    	pushl  0x5e10
     588:	e8 83 34 00 00       	call   3a10 <printf>
     58d:	89 1c 24             	mov    %ebx,(%esp)
     590:	e8 35 33 00 00       	call   38ca <close>
     595:	c7 04 24 c7 3e 00 00 	movl   $0x3ec7,(%esp)
     59c:	e8 51 33 00 00       	call   38f2 <unlink>
     5a1:	83 c4 10             	add    $0x10,%esp
     5a4:	85 c0                	test   %eax,%eax
     5a6:	78 7f                	js     627 <writetest+0x1a7>
     5a8:	83 ec 08             	sub    $0x8,%esp
     5ab:	68 81 3f 00 00       	push   $0x3f81
     5b0:	ff 35 10 5e 00 00    	pushl  0x5e10
     5b6:	e8 55 34 00 00       	call   3a10 <printf>
     5bb:	83 c4 10             	add    $0x10,%esp
     5be:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5c1:	5b                   	pop    %ebx
     5c2:	5e                   	pop    %esi
     5c3:	5d                   	pop    %ebp
     5c4:	c3                   	ret    
     5c5:	83 ec 04             	sub    $0x4,%esp
     5c8:	53                   	push   %ebx
     5c9:	68 c8 4d 00 00       	push   $0x4dc8
     5ce:	ff 35 10 5e 00 00    	pushl  0x5e10
     5d4:	e8 37 34 00 00       	call   3a10 <printf>
     5d9:	e8 c4 32 00 00       	call   38a2 <exit>
     5de:	83 ec 04             	sub    $0x4,%esp
     5e1:	53                   	push   %ebx
     5e2:	68 ec 4d 00 00       	push   $0x4dec
     5e7:	ff 35 10 5e 00 00    	pushl  0x5e10
     5ed:	e8 1e 34 00 00       	call   3a10 <printf>
     5f2:	e8 ab 32 00 00       	call   38a2 <exit>
     5f7:	83 ec 08             	sub    $0x8,%esp
     5fa:	68 3e 3f 00 00       	push   $0x3f3e
     5ff:	ff 35 10 5e 00 00    	pushl  0x5e10
     605:	e8 06 34 00 00       	call   3a10 <printf>
     60a:	e8 93 32 00 00       	call   38a2 <exit>
     60f:	83 ec 08             	sub    $0x8,%esp
     612:	68 85 42 00 00       	push   $0x4285
     617:	ff 35 10 5e 00 00    	pushl  0x5e10
     61d:	e8 ee 33 00 00       	call   3a10 <printf>
     622:	e8 7b 32 00 00       	call   38a2 <exit>
     627:	83 ec 08             	sub    $0x8,%esp
     62a:	68 6c 3f 00 00       	push   $0x3f6c
     62f:	ff 35 10 5e 00 00    	pushl  0x5e10
     635:	e8 d6 33 00 00       	call   3a10 <printf>
     63a:	e8 63 32 00 00       	call   38a2 <exit>
     63f:	83 ec 08             	sub    $0x8,%esp
     642:	68 e8 3e 00 00       	push   $0x3ee8
     647:	ff 35 10 5e 00 00    	pushl  0x5e10
     64d:	e8 be 33 00 00       	call   3a10 <printf>
     652:	e8 4b 32 00 00       	call   38a2 <exit>
     657:	89 f6                	mov    %esi,%esi
     659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000660 <writetest1>:
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
     665:	83 ec 08             	sub    $0x8,%esp
     668:	68 95 3f 00 00       	push   $0x3f95
     66d:	ff 35 10 5e 00 00    	pushl  0x5e10
     673:	e8 98 33 00 00       	call   3a10 <printf>
     678:	59                   	pop    %ecx
     679:	5b                   	pop    %ebx
     67a:	68 02 02 00 00       	push   $0x202
     67f:	68 0f 40 00 00       	push   $0x400f
     684:	e8 59 32 00 00       	call   38e2 <open>
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	0f 88 64 01 00 00    	js     7f8 <writetest1+0x198>
     694:	89 c6                	mov    %eax,%esi
     696:	31 db                	xor    %ebx,%ebx
     698:	90                   	nop
     699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6a0:	83 ec 04             	sub    $0x4,%esp
     6a3:	89 1d 00 86 00 00    	mov    %ebx,0x8600
     6a9:	68 00 02 00 00       	push   $0x200
     6ae:	68 00 86 00 00       	push   $0x8600
     6b3:	56                   	push   %esi
     6b4:	e8 09 32 00 00       	call   38c2 <write>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c1:	0f 85 b3 00 00 00    	jne    77a <writetest1+0x11a>
     6c7:	83 c3 01             	add    $0x1,%ebx
     6ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d0:	75 ce                	jne    6a0 <writetest1+0x40>
     6d2:	83 ec 0c             	sub    $0xc,%esp
     6d5:	56                   	push   %esi
     6d6:	e8 ef 31 00 00       	call   38ca <close>
     6db:	58                   	pop    %eax
     6dc:	5a                   	pop    %edx
     6dd:	6a 00                	push   $0x0
     6df:	68 0f 40 00 00       	push   $0x400f
     6e4:	e8 f9 31 00 00       	call   38e2 <open>
     6e9:	83 c4 10             	add    $0x10,%esp
     6ec:	85 c0                	test   %eax,%eax
     6ee:	89 c6                	mov    %eax,%esi
     6f0:	0f 88 ea 00 00 00    	js     7e0 <writetest1+0x180>
     6f6:	31 db                	xor    %ebx,%ebx
     6f8:	eb 1d                	jmp    717 <writetest1+0xb7>
     6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 9f 00 00 00    	jne    7aa <writetest1+0x14a>
     70b:	a1 00 86 00 00       	mov    0x8600,%eax
     710:	39 c3                	cmp    %eax,%ebx
     712:	75 7f                	jne    793 <writetest1+0x133>
     714:	83 c3 01             	add    $0x1,%ebx
     717:	83 ec 04             	sub    $0x4,%esp
     71a:	68 00 02 00 00       	push   $0x200
     71f:	68 00 86 00 00       	push   $0x8600
     724:	56                   	push   %esi
     725:	e8 90 31 00 00       	call   38ba <read>
     72a:	83 c4 10             	add    $0x10,%esp
     72d:	85 c0                	test   %eax,%eax
     72f:	75 cf                	jne    700 <writetest1+0xa0>
     731:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     737:	0f 84 86 00 00 00    	je     7c3 <writetest1+0x163>
     73d:	83 ec 0c             	sub    $0xc,%esp
     740:	56                   	push   %esi
     741:	e8 84 31 00 00       	call   38ca <close>
     746:	c7 04 24 0f 40 00 00 	movl   $0x400f,(%esp)
     74d:	e8 a0 31 00 00       	call   38f2 <unlink>
     752:	83 c4 10             	add    $0x10,%esp
     755:	85 c0                	test   %eax,%eax
     757:	0f 88 b3 00 00 00    	js     810 <writetest1+0x1b0>
     75d:	83 ec 08             	sub    $0x8,%esp
     760:	68 36 40 00 00       	push   $0x4036
     765:	ff 35 10 5e 00 00    	pushl  0x5e10
     76b:	e8 a0 32 00 00       	call   3a10 <printf>
     770:	83 c4 10             	add    $0x10,%esp
     773:	8d 65 f8             	lea    -0x8(%ebp),%esp
     776:	5b                   	pop    %ebx
     777:	5e                   	pop    %esi
     778:	5d                   	pop    %ebp
     779:	c3                   	ret    
     77a:	83 ec 04             	sub    $0x4,%esp
     77d:	53                   	push   %ebx
     77e:	68 bf 3f 00 00       	push   $0x3fbf
     783:	ff 35 10 5e 00 00    	pushl  0x5e10
     789:	e8 82 32 00 00       	call   3a10 <printf>
     78e:	e8 0f 31 00 00       	call   38a2 <exit>
     793:	50                   	push   %eax
     794:	53                   	push   %ebx
     795:	68 10 4e 00 00       	push   $0x4e10
     79a:	ff 35 10 5e 00 00    	pushl  0x5e10
     7a0:	e8 6b 32 00 00       	call   3a10 <printf>
     7a5:	e8 f8 30 00 00       	call   38a2 <exit>
     7aa:	83 ec 04             	sub    $0x4,%esp
     7ad:	50                   	push   %eax
     7ae:	68 13 40 00 00       	push   $0x4013
     7b3:	ff 35 10 5e 00 00    	pushl  0x5e10
     7b9:	e8 52 32 00 00       	call   3a10 <printf>
     7be:	e8 df 30 00 00       	call   38a2 <exit>
     7c3:	83 ec 04             	sub    $0x4,%esp
     7c6:	68 8b 00 00 00       	push   $0x8b
     7cb:	68 f6 3f 00 00       	push   $0x3ff6
     7d0:	ff 35 10 5e 00 00    	pushl  0x5e10
     7d6:	e8 35 32 00 00       	call   3a10 <printf>
     7db:	e8 c2 30 00 00       	call   38a2 <exit>
     7e0:	83 ec 08             	sub    $0x8,%esp
     7e3:	68 dd 3f 00 00       	push   $0x3fdd
     7e8:	ff 35 10 5e 00 00    	pushl  0x5e10
     7ee:	e8 1d 32 00 00       	call   3a10 <printf>
     7f3:	e8 aa 30 00 00       	call   38a2 <exit>
     7f8:	83 ec 08             	sub    $0x8,%esp
     7fb:	68 a5 3f 00 00       	push   $0x3fa5
     800:	ff 35 10 5e 00 00    	pushl  0x5e10
     806:	e8 05 32 00 00       	call   3a10 <printf>
     80b:	e8 92 30 00 00       	call   38a2 <exit>
     810:	83 ec 08             	sub    $0x8,%esp
     813:	68 23 40 00 00       	push   $0x4023
     818:	ff 35 10 5e 00 00    	pushl  0x5e10
     81e:	e8 ed 31 00 00       	call   3a10 <printf>
     823:	e8 7a 30 00 00       	call   38a2 <exit>
     828:	90                   	nop
     829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000830 <createtest>:
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
     839:	83 ec 0c             	sub    $0xc,%esp
     83c:	68 30 4e 00 00       	push   $0x4e30
     841:	ff 35 10 5e 00 00    	pushl  0x5e10
     847:	e8 c4 31 00 00       	call   3a10 <printf>
     84c:	c6 05 00 a6 00 00 61 	movb   $0x61,0xa600
     853:	c6 05 02 a6 00 00 00 	movb   $0x0,0xa602
     85a:	83 c4 10             	add    $0x10,%esp
     85d:	8d 76 00             	lea    0x0(%esi),%esi
     860:	83 ec 08             	sub    $0x8,%esp
     863:	88 1d 01 a6 00 00    	mov    %bl,0xa601
     869:	83 c3 01             	add    $0x1,%ebx
     86c:	68 02 02 00 00       	push   $0x202
     871:	68 00 a6 00 00       	push   $0xa600
     876:	e8 67 30 00 00       	call   38e2 <open>
     87b:	89 04 24             	mov    %eax,(%esp)
     87e:	e8 47 30 00 00       	call   38ca <close>
     883:	83 c4 10             	add    $0x10,%esp
     886:	80 fb 64             	cmp    $0x64,%bl
     889:	75 d5                	jne    860 <createtest+0x30>
     88b:	c6 05 00 a6 00 00 61 	movb   $0x61,0xa600
     892:	c6 05 02 a6 00 00 00 	movb   $0x0,0xa602
     899:	bb 30 00 00 00       	mov    $0x30,%ebx
     89e:	66 90                	xchg   %ax,%ax
     8a0:	83 ec 0c             	sub    $0xc,%esp
     8a3:	88 1d 01 a6 00 00    	mov    %bl,0xa601
     8a9:	83 c3 01             	add    $0x1,%ebx
     8ac:	68 00 a6 00 00       	push   $0xa600
     8b1:	e8 3c 30 00 00       	call   38f2 <unlink>
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	80 fb 64             	cmp    $0x64,%bl
     8bc:	75 e2                	jne    8a0 <createtest+0x70>
     8be:	83 ec 08             	sub    $0x8,%esp
     8c1:	68 58 4e 00 00       	push   $0x4e58
     8c6:	ff 35 10 5e 00 00    	pushl  0x5e10
     8cc:	e8 3f 31 00 00       	call   3a10 <printf>
     8d1:	83 c4 10             	add    $0x10,%esp
     8d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8d7:	c9                   	leave  
     8d8:	c3                   	ret    
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008e0 <dirtest>:
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 10             	sub    $0x10,%esp
     8e6:	68 44 40 00 00       	push   $0x4044
     8eb:	ff 35 10 5e 00 00    	pushl  0x5e10
     8f1:	e8 1a 31 00 00       	call   3a10 <printf>
     8f6:	c7 04 24 50 40 00 00 	movl   $0x4050,(%esp)
     8fd:	e8 08 30 00 00       	call   390a <mkdir>
     902:	83 c4 10             	add    $0x10,%esp
     905:	85 c0                	test   %eax,%eax
     907:	78 58                	js     961 <dirtest+0x81>
     909:	83 ec 0c             	sub    $0xc,%esp
     90c:	68 50 40 00 00       	push   $0x4050
     911:	e8 fc 2f 00 00       	call   3912 <chdir>
     916:	83 c4 10             	add    $0x10,%esp
     919:	85 c0                	test   %eax,%eax
     91b:	0f 88 85 00 00 00    	js     9a6 <dirtest+0xc6>
     921:	83 ec 0c             	sub    $0xc,%esp
     924:	68 f5 45 00 00       	push   $0x45f5
     929:	e8 e4 2f 00 00       	call   3912 <chdir>
     92e:	83 c4 10             	add    $0x10,%esp
     931:	85 c0                	test   %eax,%eax
     933:	78 5a                	js     98f <dirtest+0xaf>
     935:	83 ec 0c             	sub    $0xc,%esp
     938:	68 50 40 00 00       	push   $0x4050
     93d:	e8 b0 2f 00 00       	call   38f2 <unlink>
     942:	83 c4 10             	add    $0x10,%esp
     945:	85 c0                	test   %eax,%eax
     947:	78 2f                	js     978 <dirtest+0x98>
     949:	83 ec 08             	sub    $0x8,%esp
     94c:	68 8d 40 00 00       	push   $0x408d
     951:	ff 35 10 5e 00 00    	pushl  0x5e10
     957:	e8 b4 30 00 00       	call   3a10 <printf>
     95c:	83 c4 10             	add    $0x10,%esp
     95f:	c9                   	leave  
     960:	c3                   	ret    
     961:	50                   	push   %eax
     962:	50                   	push   %eax
     963:	68 80 3d 00 00       	push   $0x3d80
     968:	ff 35 10 5e 00 00    	pushl  0x5e10
     96e:	e8 9d 30 00 00       	call   3a10 <printf>
     973:	e8 2a 2f 00 00       	call   38a2 <exit>
     978:	50                   	push   %eax
     979:	50                   	push   %eax
     97a:	68 79 40 00 00       	push   $0x4079
     97f:	ff 35 10 5e 00 00    	pushl  0x5e10
     985:	e8 86 30 00 00       	call   3a10 <printf>
     98a:	e8 13 2f 00 00       	call   38a2 <exit>
     98f:	52                   	push   %edx
     990:	52                   	push   %edx
     991:	68 68 40 00 00       	push   $0x4068
     996:	ff 35 10 5e 00 00    	pushl  0x5e10
     99c:	e8 6f 30 00 00       	call   3a10 <printf>
     9a1:	e8 fc 2e 00 00       	call   38a2 <exit>
     9a6:	51                   	push   %ecx
     9a7:	51                   	push   %ecx
     9a8:	68 55 40 00 00       	push   $0x4055
     9ad:	ff 35 10 5e 00 00    	pushl  0x5e10
     9b3:	e8 58 30 00 00       	call   3a10 <printf>
     9b8:	e8 e5 2e 00 00       	call   38a2 <exit>
     9bd:	8d 76 00             	lea    0x0(%esi),%esi

000009c0 <exectest>:
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 10             	sub    $0x10,%esp
     9c6:	68 9c 40 00 00       	push   $0x409c
     9cb:	ff 35 10 5e 00 00    	pushl  0x5e10
     9d1:	e8 3a 30 00 00       	call   3a10 <printf>
     9d6:	5a                   	pop    %edx
     9d7:	59                   	pop    %ecx
     9d8:	68 14 5e 00 00       	push   $0x5e14
     9dd:	68 65 3e 00 00       	push   $0x3e65
     9e2:	e8 f3 2e 00 00       	call   38da <exec>
     9e7:	83 c4 10             	add    $0x10,%esp
     9ea:	85 c0                	test   %eax,%eax
     9ec:	78 02                	js     9f0 <exectest+0x30>
     9ee:	c9                   	leave  
     9ef:	c3                   	ret    
     9f0:	50                   	push   %eax
     9f1:	50                   	push   %eax
     9f2:	68 a7 40 00 00       	push   $0x40a7
     9f7:	ff 35 10 5e 00 00    	pushl  0x5e10
     9fd:	e8 0e 30 00 00       	call   3a10 <printf>
     a02:	e8 9b 2e 00 00       	call   38a2 <exit>
     a07:	89 f6                	mov    %esi,%esi
     a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a10 <pipe1>:
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
     a15:	53                   	push   %ebx
     a16:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a19:	83 ec 38             	sub    $0x38,%esp
     a1c:	50                   	push   %eax
     a1d:	e8 90 2e 00 00       	call   38b2 <pipe>
     a22:	83 c4 10             	add    $0x10,%esp
     a25:	85 c0                	test   %eax,%eax
     a27:	0f 85 35 01 00 00    	jne    b62 <pipe1+0x152>
     a2d:	e8 68 2e 00 00       	call   389a <fork>
     a32:	83 f8 00             	cmp    $0x0,%eax
     a35:	0f 84 86 00 00 00    	je     ac1 <pipe1+0xb1>
     a3b:	0f 8e 35 01 00 00    	jle    b76 <pipe1+0x166>
     a41:	83 ec 0c             	sub    $0xc,%esp
     a44:	ff 75 e4             	pushl  -0x1c(%ebp)
     a47:	bf 01 00 00 00       	mov    $0x1,%edi
     a4c:	31 db                	xor    %ebx,%ebx
     a4e:	e8 77 2e 00 00       	call   38ca <close>
     a53:	83 c4 10             	add    $0x10,%esp
     a56:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     a5d:	83 ec 04             	sub    $0x4,%esp
     a60:	57                   	push   %edi
     a61:	68 00 86 00 00       	push   $0x8600
     a66:	ff 75 e0             	pushl  -0x20(%ebp)
     a69:	e8 4c 2e 00 00       	call   38ba <read>
     a6e:	83 c4 10             	add    $0x10,%esp
     a71:	85 c0                	test   %eax,%eax
     a73:	0f 8e a3 00 00 00    	jle    b1c <pipe1+0x10c>
     a79:	89 d9                	mov    %ebx,%ecx
     a7b:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     a7e:	f7 d9                	neg    %ecx
     a80:	38 9c 0b 00 86 00 00 	cmp    %bl,0x8600(%ebx,%ecx,1)
     a87:	8d 53 01             	lea    0x1(%ebx),%edx
     a8a:	75 1b                	jne    aa7 <pipe1+0x97>
     a8c:	39 f2                	cmp    %esi,%edx
     a8e:	89 d3                	mov    %edx,%ebx
     a90:	75 ee                	jne    a80 <pipe1+0x70>
     a92:	01 ff                	add    %edi,%edi
     a94:	01 45 d4             	add    %eax,-0x2c(%ebp)
     a97:	b8 00 20 00 00       	mov    $0x2000,%eax
     a9c:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     aa2:	0f 4f f8             	cmovg  %eax,%edi
     aa5:	eb b6                	jmp    a5d <pipe1+0x4d>
     aa7:	83 ec 08             	sub    $0x8,%esp
     aaa:	68 d6 40 00 00       	push   $0x40d6
     aaf:	6a 01                	push   $0x1
     ab1:	e8 5a 2f 00 00       	call   3a10 <printf>
     ab6:	83 c4 10             	add    $0x10,%esp
     ab9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     abc:	5b                   	pop    %ebx
     abd:	5e                   	pop    %esi
     abe:	5f                   	pop    %edi
     abf:	5d                   	pop    %ebp
     ac0:	c3                   	ret    
     ac1:	83 ec 0c             	sub    $0xc,%esp
     ac4:	ff 75 e0             	pushl  -0x20(%ebp)
     ac7:	31 f6                	xor    %esi,%esi
     ac9:	e8 fc 2d 00 00       	call   38ca <close>
     ace:	83 c4 10             	add    $0x10,%esp
     ad1:	89 f0                	mov    %esi,%eax
     ad3:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     ad9:	89 f3                	mov    %esi,%ebx
     adb:	f7 d8                	neg    %eax
     add:	8d 76 00             	lea    0x0(%esi),%esi
     ae0:	88 9c 18 00 86 00 00 	mov    %bl,0x8600(%eax,%ebx,1)
     ae7:	83 c3 01             	add    $0x1,%ebx
     aea:	39 d3                	cmp    %edx,%ebx
     aec:	75 f2                	jne    ae0 <pipe1+0xd0>
     aee:	83 ec 04             	sub    $0x4,%esp
     af1:	89 de                	mov    %ebx,%esi
     af3:	68 09 04 00 00       	push   $0x409
     af8:	68 00 86 00 00       	push   $0x8600
     afd:	ff 75 e4             	pushl  -0x1c(%ebp)
     b00:	e8 bd 2d 00 00       	call   38c2 <write>
     b05:	83 c4 10             	add    $0x10,%esp
     b08:	3d 09 04 00 00       	cmp    $0x409,%eax
     b0d:	75 7b                	jne    b8a <pipe1+0x17a>
     b0f:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b15:	75 ba                	jne    ad1 <pipe1+0xc1>
     b17:	e8 86 2d 00 00       	call   38a2 <exit>
     b1c:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b23:	75 26                	jne    b4b <pipe1+0x13b>
     b25:	83 ec 0c             	sub    $0xc,%esp
     b28:	ff 75 e0             	pushl  -0x20(%ebp)
     b2b:	e8 9a 2d 00 00       	call   38ca <close>
     b30:	e8 75 2d 00 00       	call   38aa <wait>
     b35:	58                   	pop    %eax
     b36:	5a                   	pop    %edx
     b37:	68 fb 40 00 00       	push   $0x40fb
     b3c:	6a 01                	push   $0x1
     b3e:	e8 cd 2e 00 00       	call   3a10 <printf>
     b43:	83 c4 10             	add    $0x10,%esp
     b46:	e9 6e ff ff ff       	jmp    ab9 <pipe1+0xa9>
     b4b:	83 ec 04             	sub    $0x4,%esp
     b4e:	ff 75 d4             	pushl  -0x2c(%ebp)
     b51:	68 e4 40 00 00       	push   $0x40e4
     b56:	6a 01                	push   $0x1
     b58:	e8 b3 2e 00 00       	call   3a10 <printf>
     b5d:	e8 40 2d 00 00       	call   38a2 <exit>
     b62:	83 ec 08             	sub    $0x8,%esp
     b65:	68 b9 40 00 00       	push   $0x40b9
     b6a:	6a 01                	push   $0x1
     b6c:	e8 9f 2e 00 00       	call   3a10 <printf>
     b71:	e8 2c 2d 00 00       	call   38a2 <exit>
     b76:	83 ec 08             	sub    $0x8,%esp
     b79:	68 05 41 00 00       	push   $0x4105
     b7e:	6a 01                	push   $0x1
     b80:	e8 8b 2e 00 00       	call   3a10 <printf>
     b85:	e8 18 2d 00 00       	call   38a2 <exit>
     b8a:	83 ec 08             	sub    $0x8,%esp
     b8d:	68 c8 40 00 00       	push   $0x40c8
     b92:	6a 01                	push   $0x1
     b94:	e8 77 2e 00 00       	call   3a10 <printf>
     b99:	e8 04 2d 00 00       	call   38a2 <exit>
     b9e:	66 90                	xchg   %ax,%ax

00000ba0 <preempt>:
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	57                   	push   %edi
     ba4:	56                   	push   %esi
     ba5:	53                   	push   %ebx
     ba6:	83 ec 24             	sub    $0x24,%esp
     ba9:	68 14 41 00 00       	push   $0x4114
     bae:	6a 01                	push   $0x1
     bb0:	e8 5b 2e 00 00       	call   3a10 <printf>
     bb5:	e8 e0 2c 00 00       	call   389a <fork>
     bba:	83 c4 10             	add    $0x10,%esp
     bbd:	85 c0                	test   %eax,%eax
     bbf:	75 02                	jne    bc3 <preempt+0x23>
     bc1:	eb fe                	jmp    bc1 <preempt+0x21>
     bc3:	89 c7                	mov    %eax,%edi
     bc5:	e8 d0 2c 00 00       	call   389a <fork>
     bca:	85 c0                	test   %eax,%eax
     bcc:	89 c6                	mov    %eax,%esi
     bce:	75 02                	jne    bd2 <preempt+0x32>
     bd0:	eb fe                	jmp    bd0 <preempt+0x30>
     bd2:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bd5:	83 ec 0c             	sub    $0xc,%esp
     bd8:	50                   	push   %eax
     bd9:	e8 d4 2c 00 00       	call   38b2 <pipe>
     bde:	e8 b7 2c 00 00       	call   389a <fork>
     be3:	83 c4 10             	add    $0x10,%esp
     be6:	85 c0                	test   %eax,%eax
     be8:	89 c3                	mov    %eax,%ebx
     bea:	75 47                	jne    c33 <preempt+0x93>
     bec:	83 ec 0c             	sub    $0xc,%esp
     bef:	ff 75 e0             	pushl  -0x20(%ebp)
     bf2:	e8 d3 2c 00 00       	call   38ca <close>
     bf7:	83 c4 0c             	add    $0xc,%esp
     bfa:	6a 01                	push   $0x1
     bfc:	68 d9 46 00 00       	push   $0x46d9
     c01:	ff 75 e4             	pushl  -0x1c(%ebp)
     c04:	e8 b9 2c 00 00       	call   38c2 <write>
     c09:	83 c4 10             	add    $0x10,%esp
     c0c:	83 f8 01             	cmp    $0x1,%eax
     c0f:	74 12                	je     c23 <preempt+0x83>
     c11:	83 ec 08             	sub    $0x8,%esp
     c14:	68 1e 41 00 00       	push   $0x411e
     c19:	6a 01                	push   $0x1
     c1b:	e8 f0 2d 00 00       	call   3a10 <printf>
     c20:	83 c4 10             	add    $0x10,%esp
     c23:	83 ec 0c             	sub    $0xc,%esp
     c26:	ff 75 e4             	pushl  -0x1c(%ebp)
     c29:	e8 9c 2c 00 00       	call   38ca <close>
     c2e:	83 c4 10             	add    $0x10,%esp
     c31:	eb fe                	jmp    c31 <preempt+0x91>
     c33:	83 ec 0c             	sub    $0xc,%esp
     c36:	ff 75 e4             	pushl  -0x1c(%ebp)
     c39:	e8 8c 2c 00 00       	call   38ca <close>
     c3e:	83 c4 0c             	add    $0xc,%esp
     c41:	68 00 20 00 00       	push   $0x2000
     c46:	68 00 86 00 00       	push   $0x8600
     c4b:	ff 75 e0             	pushl  -0x20(%ebp)
     c4e:	e8 67 2c 00 00       	call   38ba <read>
     c53:	83 c4 10             	add    $0x10,%esp
     c56:	83 f8 01             	cmp    $0x1,%eax
     c59:	74 1a                	je     c75 <preempt+0xd5>
     c5b:	83 ec 08             	sub    $0x8,%esp
     c5e:	68 32 41 00 00       	push   $0x4132
     c63:	6a 01                	push   $0x1
     c65:	e8 a6 2d 00 00       	call   3a10 <printf>
     c6a:	83 c4 10             	add    $0x10,%esp
     c6d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c70:	5b                   	pop    %ebx
     c71:	5e                   	pop    %esi
     c72:	5f                   	pop    %edi
     c73:	5d                   	pop    %ebp
     c74:	c3                   	ret    
     c75:	83 ec 0c             	sub    $0xc,%esp
     c78:	ff 75 e0             	pushl  -0x20(%ebp)
     c7b:	e8 4a 2c 00 00       	call   38ca <close>
     c80:	58                   	pop    %eax
     c81:	5a                   	pop    %edx
     c82:	68 45 41 00 00       	push   $0x4145
     c87:	6a 01                	push   $0x1
     c89:	e8 82 2d 00 00       	call   3a10 <printf>
     c8e:	89 3c 24             	mov    %edi,(%esp)
     c91:	e8 3c 2c 00 00       	call   38d2 <kill>
     c96:	89 34 24             	mov    %esi,(%esp)
     c99:	e8 34 2c 00 00       	call   38d2 <kill>
     c9e:	89 1c 24             	mov    %ebx,(%esp)
     ca1:	e8 2c 2c 00 00       	call   38d2 <kill>
     ca6:	59                   	pop    %ecx
     ca7:	5b                   	pop    %ebx
     ca8:	68 4e 41 00 00       	push   $0x414e
     cad:	6a 01                	push   $0x1
     caf:	e8 5c 2d 00 00       	call   3a10 <printf>
     cb4:	e8 f1 2b 00 00       	call   38aa <wait>
     cb9:	e8 ec 2b 00 00       	call   38aa <wait>
     cbe:	e8 e7 2b 00 00       	call   38aa <wait>
     cc3:	5e                   	pop    %esi
     cc4:	5f                   	pop    %edi
     cc5:	68 57 41 00 00       	push   $0x4157
     cca:	6a 01                	push   $0x1
     ccc:	e8 3f 2d 00 00       	call   3a10 <printf>
     cd1:	83 c4 10             	add    $0x10,%esp
     cd4:	eb 97                	jmp    c6d <preempt+0xcd>
     cd6:	8d 76 00             	lea    0x0(%esi),%esi
     cd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ce0 <exitwait>:
     ce0:	55                   	push   %ebp
     ce1:	89 e5                	mov    %esp,%ebp
     ce3:	56                   	push   %esi
     ce4:	be 64 00 00 00       	mov    $0x64,%esi
     ce9:	53                   	push   %ebx
     cea:	eb 14                	jmp    d00 <exitwait+0x20>
     cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cf0:	74 6f                	je     d61 <exitwait+0x81>
     cf2:	e8 b3 2b 00 00       	call   38aa <wait>
     cf7:	39 c3                	cmp    %eax,%ebx
     cf9:	75 2d                	jne    d28 <exitwait+0x48>
     cfb:	83 ee 01             	sub    $0x1,%esi
     cfe:	74 48                	je     d48 <exitwait+0x68>
     d00:	e8 95 2b 00 00       	call   389a <fork>
     d05:	85 c0                	test   %eax,%eax
     d07:	89 c3                	mov    %eax,%ebx
     d09:	79 e5                	jns    cf0 <exitwait+0x10>
     d0b:	83 ec 08             	sub    $0x8,%esp
     d0e:	68 c1 4c 00 00       	push   $0x4cc1
     d13:	6a 01                	push   $0x1
     d15:	e8 f6 2c 00 00       	call   3a10 <printf>
     d1a:	83 c4 10             	add    $0x10,%esp
     d1d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d20:	5b                   	pop    %ebx
     d21:	5e                   	pop    %esi
     d22:	5d                   	pop    %ebp
     d23:	c3                   	ret    
     d24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d28:	83 ec 08             	sub    $0x8,%esp
     d2b:	68 63 41 00 00       	push   $0x4163
     d30:	6a 01                	push   $0x1
     d32:	e8 d9 2c 00 00       	call   3a10 <printf>
     d37:	83 c4 10             	add    $0x10,%esp
     d3a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d3d:	5b                   	pop    %ebx
     d3e:	5e                   	pop    %esi
     d3f:	5d                   	pop    %ebp
     d40:	c3                   	ret    
     d41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d48:	83 ec 08             	sub    $0x8,%esp
     d4b:	68 73 41 00 00       	push   $0x4173
     d50:	6a 01                	push   $0x1
     d52:	e8 b9 2c 00 00       	call   3a10 <printf>
     d57:	83 c4 10             	add    $0x10,%esp
     d5a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d5d:	5b                   	pop    %ebx
     d5e:	5e                   	pop    %esi
     d5f:	5d                   	pop    %ebp
     d60:	c3                   	ret    
     d61:	e8 3c 2b 00 00       	call   38a2 <exit>
     d66:	8d 76 00             	lea    0x0(%esi),%esi
     d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d70 <mem>:
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	57                   	push   %edi
     d74:	56                   	push   %esi
     d75:	53                   	push   %ebx
     d76:	83 ec 14             	sub    $0x14,%esp
     d79:	68 80 41 00 00       	push   $0x4180
     d7e:	6a 01                	push   $0x1
     d80:	e8 8b 2c 00 00       	call   3a10 <printf>
     d85:	e8 98 2b 00 00       	call   3922 <getpid>
     d8a:	89 c6                	mov    %eax,%esi
     d8c:	e8 09 2b 00 00       	call   389a <fork>
     d91:	83 c4 10             	add    $0x10,%esp
     d94:	85 c0                	test   %eax,%eax
     d96:	75 70                	jne    e08 <mem+0x98>
     d98:	31 db                	xor    %ebx,%ebx
     d9a:	eb 08                	jmp    da4 <mem+0x34>
     d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     da0:	89 18                	mov    %ebx,(%eax)
     da2:	89 c3                	mov    %eax,%ebx
     da4:	83 ec 0c             	sub    $0xc,%esp
     da7:	68 11 27 00 00       	push   $0x2711
     dac:	e8 df 2e 00 00       	call   3c90 <malloc>
     db1:	83 c4 10             	add    $0x10,%esp
     db4:	85 c0                	test   %eax,%eax
     db6:	75 e8                	jne    da0 <mem+0x30>
     db8:	85 db                	test   %ebx,%ebx
     dba:	74 18                	je     dd4 <mem+0x64>
     dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     dc0:	8b 3b                	mov    (%ebx),%edi
     dc2:	83 ec 0c             	sub    $0xc,%esp
     dc5:	53                   	push   %ebx
     dc6:	89 fb                	mov    %edi,%ebx
     dc8:	e8 33 2e 00 00       	call   3c00 <free>
     dcd:	83 c4 10             	add    $0x10,%esp
     dd0:	85 db                	test   %ebx,%ebx
     dd2:	75 ec                	jne    dc0 <mem+0x50>
     dd4:	83 ec 0c             	sub    $0xc,%esp
     dd7:	68 00 50 00 00       	push   $0x5000
     ddc:	e8 af 2e 00 00       	call   3c90 <malloc>
     de1:	83 c4 10             	add    $0x10,%esp
     de4:	85 c0                	test   %eax,%eax
     de6:	74 30                	je     e18 <mem+0xa8>
     de8:	83 ec 0c             	sub    $0xc,%esp
     deb:	50                   	push   %eax
     dec:	e8 0f 2e 00 00       	call   3c00 <free>
     df1:	58                   	pop    %eax
     df2:	5a                   	pop    %edx
     df3:	68 a4 41 00 00       	push   $0x41a4
     df8:	6a 01                	push   $0x1
     dfa:	e8 11 2c 00 00       	call   3a10 <printf>
     dff:	e8 9e 2a 00 00       	call   38a2 <exit>
     e04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e08:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e0b:	5b                   	pop    %ebx
     e0c:	5e                   	pop    %esi
     e0d:	5f                   	pop    %edi
     e0e:	5d                   	pop    %ebp
     e0f:	e9 96 2a 00 00       	jmp    38aa <wait>
     e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e18:	83 ec 08             	sub    $0x8,%esp
     e1b:	68 8a 41 00 00       	push   $0x418a
     e20:	6a 01                	push   $0x1
     e22:	e8 e9 2b 00 00       	call   3a10 <printf>
     e27:	89 34 24             	mov    %esi,(%esp)
     e2a:	e8 a3 2a 00 00       	call   38d2 <kill>
     e2f:	e8 6e 2a 00 00       	call   38a2 <exit>
     e34:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e3a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000e40 <sharedfd>:
     e40:	55                   	push   %ebp
     e41:	89 e5                	mov    %esp,%ebp
     e43:	57                   	push   %edi
     e44:	56                   	push   %esi
     e45:	53                   	push   %ebx
     e46:	83 ec 34             	sub    $0x34,%esp
     e49:	68 ac 41 00 00       	push   $0x41ac
     e4e:	6a 01                	push   $0x1
     e50:	e8 bb 2b 00 00       	call   3a10 <printf>
     e55:	c7 04 24 bb 41 00 00 	movl   $0x41bb,(%esp)
     e5c:	e8 91 2a 00 00       	call   38f2 <unlink>
     e61:	5b                   	pop    %ebx
     e62:	5e                   	pop    %esi
     e63:	68 02 02 00 00       	push   $0x202
     e68:	68 bb 41 00 00       	push   $0x41bb
     e6d:	e8 70 2a 00 00       	call   38e2 <open>
     e72:	83 c4 10             	add    $0x10,%esp
     e75:	85 c0                	test   %eax,%eax
     e77:	0f 88 29 01 00 00    	js     fa6 <sharedfd+0x166>
     e7d:	89 c7                	mov    %eax,%edi
     e7f:	8d 75 de             	lea    -0x22(%ebp),%esi
     e82:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     e87:	e8 0e 2a 00 00       	call   389a <fork>
     e8c:	83 f8 01             	cmp    $0x1,%eax
     e8f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     e92:	19 c0                	sbb    %eax,%eax
     e94:	83 ec 04             	sub    $0x4,%esp
     e97:	83 e0 f3             	and    $0xfffffff3,%eax
     e9a:	6a 0a                	push   $0xa
     e9c:	83 c0 70             	add    $0x70,%eax
     e9f:	50                   	push   %eax
     ea0:	56                   	push   %esi
     ea1:	e8 6a 28 00 00       	call   3710 <memset>
     ea6:	83 c4 10             	add    $0x10,%esp
     ea9:	eb 0a                	jmp    eb5 <sharedfd+0x75>
     eab:	90                   	nop
     eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     eb0:	83 eb 01             	sub    $0x1,%ebx
     eb3:	74 26                	je     edb <sharedfd+0x9b>
     eb5:	83 ec 04             	sub    $0x4,%esp
     eb8:	6a 0a                	push   $0xa
     eba:	56                   	push   %esi
     ebb:	57                   	push   %edi
     ebc:	e8 01 2a 00 00       	call   38c2 <write>
     ec1:	83 c4 10             	add    $0x10,%esp
     ec4:	83 f8 0a             	cmp    $0xa,%eax
     ec7:	74 e7                	je     eb0 <sharedfd+0x70>
     ec9:	83 ec 08             	sub    $0x8,%esp
     ecc:	68 ac 4e 00 00       	push   $0x4eac
     ed1:	6a 01                	push   $0x1
     ed3:	e8 38 2b 00 00       	call   3a10 <printf>
     ed8:	83 c4 10             	add    $0x10,%esp
     edb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     ede:	85 c9                	test   %ecx,%ecx
     ee0:	0f 84 f4 00 00 00    	je     fda <sharedfd+0x19a>
     ee6:	e8 bf 29 00 00       	call   38aa <wait>
     eeb:	83 ec 0c             	sub    $0xc,%esp
     eee:	31 db                	xor    %ebx,%ebx
     ef0:	57                   	push   %edi
     ef1:	8d 7d e8             	lea    -0x18(%ebp),%edi
     ef4:	e8 d1 29 00 00       	call   38ca <close>
     ef9:	58                   	pop    %eax
     efa:	5a                   	pop    %edx
     efb:	6a 00                	push   $0x0
     efd:	68 bb 41 00 00       	push   $0x41bb
     f02:	e8 db 29 00 00       	call   38e2 <open>
     f07:	83 c4 10             	add    $0x10,%esp
     f0a:	31 d2                	xor    %edx,%edx
     f0c:	85 c0                	test   %eax,%eax
     f0e:	89 45 d0             	mov    %eax,-0x30(%ebp)
     f11:	0f 88 a9 00 00 00    	js     fc0 <sharedfd+0x180>
     f17:	89 f6                	mov    %esi,%esi
     f19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     f20:	83 ec 04             	sub    $0x4,%esp
     f23:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f26:	6a 0a                	push   $0xa
     f28:	56                   	push   %esi
     f29:	ff 75 d0             	pushl  -0x30(%ebp)
     f2c:	e8 89 29 00 00       	call   38ba <read>
     f31:	83 c4 10             	add    $0x10,%esp
     f34:	85 c0                	test   %eax,%eax
     f36:	7e 27                	jle    f5f <sharedfd+0x11f>
     f38:	89 f0                	mov    %esi,%eax
     f3a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f3d:	eb 13                	jmp    f52 <sharedfd+0x112>
     f3f:	90                   	nop
     f40:	80 f9 70             	cmp    $0x70,%cl
     f43:	0f 94 c1             	sete   %cl
     f46:	0f b6 c9             	movzbl %cl,%ecx
     f49:	01 cb                	add    %ecx,%ebx
     f4b:	83 c0 01             	add    $0x1,%eax
     f4e:	39 c7                	cmp    %eax,%edi
     f50:	74 ce                	je     f20 <sharedfd+0xe0>
     f52:	0f b6 08             	movzbl (%eax),%ecx
     f55:	80 f9 63             	cmp    $0x63,%cl
     f58:	75 e6                	jne    f40 <sharedfd+0x100>
     f5a:	83 c2 01             	add    $0x1,%edx
     f5d:	eb ec                	jmp    f4b <sharedfd+0x10b>
     f5f:	83 ec 0c             	sub    $0xc,%esp
     f62:	ff 75 d0             	pushl  -0x30(%ebp)
     f65:	e8 60 29 00 00       	call   38ca <close>
     f6a:	c7 04 24 bb 41 00 00 	movl   $0x41bb,(%esp)
     f71:	e8 7c 29 00 00       	call   38f2 <unlink>
     f76:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f79:	83 c4 10             	add    $0x10,%esp
     f7c:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     f82:	75 5b                	jne    fdf <sharedfd+0x19f>
     f84:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     f8a:	75 53                	jne    fdf <sharedfd+0x19f>
     f8c:	83 ec 08             	sub    $0x8,%esp
     f8f:	68 c4 41 00 00       	push   $0x41c4
     f94:	6a 01                	push   $0x1
     f96:	e8 75 2a 00 00       	call   3a10 <printf>
     f9b:	83 c4 10             	add    $0x10,%esp
     f9e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fa1:	5b                   	pop    %ebx
     fa2:	5e                   	pop    %esi
     fa3:	5f                   	pop    %edi
     fa4:	5d                   	pop    %ebp
     fa5:	c3                   	ret    
     fa6:	83 ec 08             	sub    $0x8,%esp
     fa9:	68 80 4e 00 00       	push   $0x4e80
     fae:	6a 01                	push   $0x1
     fb0:	e8 5b 2a 00 00       	call   3a10 <printf>
     fb5:	83 c4 10             	add    $0x10,%esp
     fb8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fbb:	5b                   	pop    %ebx
     fbc:	5e                   	pop    %esi
     fbd:	5f                   	pop    %edi
     fbe:	5d                   	pop    %ebp
     fbf:	c3                   	ret    
     fc0:	83 ec 08             	sub    $0x8,%esp
     fc3:	68 cc 4e 00 00       	push   $0x4ecc
     fc8:	6a 01                	push   $0x1
     fca:	e8 41 2a 00 00       	call   3a10 <printf>
     fcf:	83 c4 10             	add    $0x10,%esp
     fd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fd5:	5b                   	pop    %ebx
     fd6:	5e                   	pop    %esi
     fd7:	5f                   	pop    %edi
     fd8:	5d                   	pop    %ebp
     fd9:	c3                   	ret    
     fda:	e8 c3 28 00 00       	call   38a2 <exit>
     fdf:	53                   	push   %ebx
     fe0:	52                   	push   %edx
     fe1:	68 d1 41 00 00       	push   $0x41d1
     fe6:	6a 01                	push   $0x1
     fe8:	e8 23 2a 00 00       	call   3a10 <printf>
     fed:	e8 b0 28 00 00       	call   38a2 <exit>
     ff2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001000 <fourfiles>:
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	57                   	push   %edi
    1004:	56                   	push   %esi
    1005:	53                   	push   %ebx
    1006:	be e6 41 00 00       	mov    $0x41e6,%esi
    100b:	31 db                	xor    %ebx,%ebx
    100d:	83 ec 34             	sub    $0x34,%esp
    1010:	c7 45 d8 e6 41 00 00 	movl   $0x41e6,-0x28(%ebp)
    1017:	c7 45 dc 2f 43 00 00 	movl   $0x432f,-0x24(%ebp)
    101e:	68 ec 41 00 00       	push   $0x41ec
    1023:	6a 01                	push   $0x1
    1025:	c7 45 e0 33 43 00 00 	movl   $0x4333,-0x20(%ebp)
    102c:	c7 45 e4 e9 41 00 00 	movl   $0x41e9,-0x1c(%ebp)
    1033:	e8 d8 29 00 00       	call   3a10 <printf>
    1038:	83 c4 10             	add    $0x10,%esp
    103b:	83 ec 0c             	sub    $0xc,%esp
    103e:	56                   	push   %esi
    103f:	e8 ae 28 00 00       	call   38f2 <unlink>
    1044:	e8 51 28 00 00       	call   389a <fork>
    1049:	83 c4 10             	add    $0x10,%esp
    104c:	85 c0                	test   %eax,%eax
    104e:	0f 88 83 01 00 00    	js     11d7 <fourfiles+0x1d7>
    1054:	0f 84 e3 00 00 00    	je     113d <fourfiles+0x13d>
    105a:	83 c3 01             	add    $0x1,%ebx
    105d:	83 fb 04             	cmp    $0x4,%ebx
    1060:	74 06                	je     1068 <fourfiles+0x68>
    1062:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1066:	eb d3                	jmp    103b <fourfiles+0x3b>
    1068:	e8 3d 28 00 00       	call   38aa <wait>
    106d:	bf 30 00 00 00       	mov    $0x30,%edi
    1072:	e8 33 28 00 00       	call   38aa <wait>
    1077:	e8 2e 28 00 00       	call   38aa <wait>
    107c:	e8 29 28 00 00       	call   38aa <wait>
    1081:	c7 45 d4 e6 41 00 00 	movl   $0x41e6,-0x2c(%ebp)
    1088:	83 ec 08             	sub    $0x8,%esp
    108b:	31 db                	xor    %ebx,%ebx
    108d:	6a 00                	push   $0x0
    108f:	ff 75 d4             	pushl  -0x2c(%ebp)
    1092:	e8 4b 28 00 00       	call   38e2 <open>
    1097:	83 c4 10             	add    $0x10,%esp
    109a:	89 c6                	mov    %eax,%esi
    109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10a0:	83 ec 04             	sub    $0x4,%esp
    10a3:	68 00 20 00 00       	push   $0x2000
    10a8:	68 00 86 00 00       	push   $0x8600
    10ad:	56                   	push   %esi
    10ae:	e8 07 28 00 00       	call   38ba <read>
    10b3:	83 c4 10             	add    $0x10,%esp
    10b6:	85 c0                	test   %eax,%eax
    10b8:	7e 1c                	jle    10d6 <fourfiles+0xd6>
    10ba:	31 d2                	xor    %edx,%edx
    10bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10c0:	0f be 8a 00 86 00 00 	movsbl 0x8600(%edx),%ecx
    10c7:	39 cf                	cmp    %ecx,%edi
    10c9:	75 5e                	jne    1129 <fourfiles+0x129>
    10cb:	83 c2 01             	add    $0x1,%edx
    10ce:	39 d0                	cmp    %edx,%eax
    10d0:	75 ee                	jne    10c0 <fourfiles+0xc0>
    10d2:	01 c3                	add    %eax,%ebx
    10d4:	eb ca                	jmp    10a0 <fourfiles+0xa0>
    10d6:	83 ec 0c             	sub    $0xc,%esp
    10d9:	56                   	push   %esi
    10da:	e8 eb 27 00 00       	call   38ca <close>
    10df:	83 c4 10             	add    $0x10,%esp
    10e2:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    10e8:	0f 85 d4 00 00 00    	jne    11c2 <fourfiles+0x1c2>
    10ee:	83 ec 0c             	sub    $0xc,%esp
    10f1:	ff 75 d4             	pushl  -0x2c(%ebp)
    10f4:	83 c7 01             	add    $0x1,%edi
    10f7:	e8 f6 27 00 00       	call   38f2 <unlink>
    10fc:	83 c4 10             	add    $0x10,%esp
    10ff:	83 ff 32             	cmp    $0x32,%edi
    1102:	75 1a                	jne    111e <fourfiles+0x11e>
    1104:	83 ec 08             	sub    $0x8,%esp
    1107:	68 2a 42 00 00       	push   $0x422a
    110c:	6a 01                	push   $0x1
    110e:	e8 fd 28 00 00       	call   3a10 <printf>
    1113:	83 c4 10             	add    $0x10,%esp
    1116:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1119:	5b                   	pop    %ebx
    111a:	5e                   	pop    %esi
    111b:	5f                   	pop    %edi
    111c:	5d                   	pop    %ebp
    111d:	c3                   	ret    
    111e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1121:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1124:	e9 5f ff ff ff       	jmp    1088 <fourfiles+0x88>
    1129:	83 ec 08             	sub    $0x8,%esp
    112c:	68 0d 42 00 00       	push   $0x420d
    1131:	6a 01                	push   $0x1
    1133:	e8 d8 28 00 00       	call   3a10 <printf>
    1138:	e8 65 27 00 00       	call   38a2 <exit>
    113d:	83 ec 08             	sub    $0x8,%esp
    1140:	68 02 02 00 00       	push   $0x202
    1145:	56                   	push   %esi
    1146:	e8 97 27 00 00       	call   38e2 <open>
    114b:	83 c4 10             	add    $0x10,%esp
    114e:	85 c0                	test   %eax,%eax
    1150:	89 c6                	mov    %eax,%esi
    1152:	78 5a                	js     11ae <fourfiles+0x1ae>
    1154:	83 ec 04             	sub    $0x4,%esp
    1157:	83 c3 30             	add    $0x30,%ebx
    115a:	68 00 02 00 00       	push   $0x200
    115f:	53                   	push   %ebx
    1160:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1165:	68 00 86 00 00       	push   $0x8600
    116a:	e8 a1 25 00 00       	call   3710 <memset>
    116f:	83 c4 10             	add    $0x10,%esp
    1172:	83 ec 04             	sub    $0x4,%esp
    1175:	68 f4 01 00 00       	push   $0x1f4
    117a:	68 00 86 00 00       	push   $0x8600
    117f:	56                   	push   %esi
    1180:	e8 3d 27 00 00       	call   38c2 <write>
    1185:	83 c4 10             	add    $0x10,%esp
    1188:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    118d:	75 0a                	jne    1199 <fourfiles+0x199>
    118f:	83 eb 01             	sub    $0x1,%ebx
    1192:	75 de                	jne    1172 <fourfiles+0x172>
    1194:	e8 09 27 00 00       	call   38a2 <exit>
    1199:	83 ec 04             	sub    $0x4,%esp
    119c:	50                   	push   %eax
    119d:	68 fc 41 00 00       	push   $0x41fc
    11a2:	6a 01                	push   $0x1
    11a4:	e8 67 28 00 00       	call   3a10 <printf>
    11a9:	e8 f4 26 00 00       	call   38a2 <exit>
    11ae:	83 ec 08             	sub    $0x8,%esp
    11b1:	68 87 44 00 00       	push   $0x4487
    11b6:	6a 01                	push   $0x1
    11b8:	e8 53 28 00 00       	call   3a10 <printf>
    11bd:	e8 e0 26 00 00       	call   38a2 <exit>
    11c2:	83 ec 04             	sub    $0x4,%esp
    11c5:	53                   	push   %ebx
    11c6:	68 19 42 00 00       	push   $0x4219
    11cb:	6a 01                	push   $0x1
    11cd:	e8 3e 28 00 00       	call   3a10 <printf>
    11d2:	e8 cb 26 00 00       	call   38a2 <exit>
    11d7:	83 ec 08             	sub    $0x8,%esp
    11da:	68 c1 4c 00 00       	push   $0x4cc1
    11df:	6a 01                	push   $0x1
    11e1:	e8 2a 28 00 00       	call   3a10 <printf>
    11e6:	e8 b7 26 00 00       	call   38a2 <exit>
    11eb:	90                   	nop
    11ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000011f0 <createdelete>:
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	57                   	push   %edi
    11f4:	56                   	push   %esi
    11f5:	53                   	push   %ebx
    11f6:	31 db                	xor    %ebx,%ebx
    11f8:	83 ec 44             	sub    $0x44,%esp
    11fb:	68 38 42 00 00       	push   $0x4238
    1200:	6a 01                	push   $0x1
    1202:	e8 09 28 00 00       	call   3a10 <printf>
    1207:	83 c4 10             	add    $0x10,%esp
    120a:	e8 8b 26 00 00       	call   389a <fork>
    120f:	85 c0                	test   %eax,%eax
    1211:	0f 88 b7 01 00 00    	js     13ce <createdelete+0x1de>
    1217:	0f 84 f6 00 00 00    	je     1313 <createdelete+0x123>
    121d:	83 c3 01             	add    $0x1,%ebx
    1220:	83 fb 04             	cmp    $0x4,%ebx
    1223:	75 e5                	jne    120a <createdelete+0x1a>
    1225:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1228:	31 f6                	xor    %esi,%esi
    122a:	e8 7b 26 00 00       	call   38aa <wait>
    122f:	e8 76 26 00 00       	call   38aa <wait>
    1234:	e8 71 26 00 00       	call   38aa <wait>
    1239:	e8 6c 26 00 00       	call   38aa <wait>
    123e:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1248:	8d 46 30             	lea    0x30(%esi),%eax
    124b:	83 fe 09             	cmp    $0x9,%esi
    124e:	bb 70 00 00 00       	mov    $0x70,%ebx
    1253:	0f 9f c2             	setg   %dl
    1256:	85 f6                	test   %esi,%esi
    1258:	88 45 c7             	mov    %al,-0x39(%ebp)
    125b:	0f 94 c0             	sete   %al
    125e:	09 c2                	or     %eax,%edx
    1260:	8d 46 ff             	lea    -0x1(%esi),%eax
    1263:	88 55 c6             	mov    %dl,-0x3a(%ebp)
    1266:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1269:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    126d:	83 ec 08             	sub    $0x8,%esp
    1270:	88 5d c8             	mov    %bl,-0x38(%ebp)
    1273:	6a 00                	push   $0x0
    1275:	57                   	push   %edi
    1276:	88 45 c9             	mov    %al,-0x37(%ebp)
    1279:	e8 64 26 00 00       	call   38e2 <open>
    127e:	89 c1                	mov    %eax,%ecx
    1280:	83 c4 10             	add    $0x10,%esp
    1283:	c1 e9 1f             	shr    $0x1f,%ecx
    1286:	84 c9                	test   %cl,%cl
    1288:	74 0a                	je     1294 <createdelete+0xa4>
    128a:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    128e:	0f 85 11 01 00 00    	jne    13a5 <createdelete+0x1b5>
    1294:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1298:	0f 86 44 01 00 00    	jbe    13e2 <createdelete+0x1f2>
    129e:	85 c0                	test   %eax,%eax
    12a0:	78 0c                	js     12ae <createdelete+0xbe>
    12a2:	83 ec 0c             	sub    $0xc,%esp
    12a5:	50                   	push   %eax
    12a6:	e8 1f 26 00 00       	call   38ca <close>
    12ab:	83 c4 10             	add    $0x10,%esp
    12ae:	83 c3 01             	add    $0x1,%ebx
    12b1:	80 fb 74             	cmp    $0x74,%bl
    12b4:	75 b3                	jne    1269 <createdelete+0x79>
    12b6:	83 c6 01             	add    $0x1,%esi
    12b9:	83 fe 14             	cmp    $0x14,%esi
    12bc:	75 8a                	jne    1248 <createdelete+0x58>
    12be:	be 70 00 00 00       	mov    $0x70,%esi
    12c3:	90                   	nop
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12c8:	8d 46 c0             	lea    -0x40(%esi),%eax
    12cb:	bb 04 00 00 00       	mov    $0x4,%ebx
    12d0:	88 45 c7             	mov    %al,-0x39(%ebp)
    12d3:	89 f0                	mov    %esi,%eax
    12d5:	83 ec 0c             	sub    $0xc,%esp
    12d8:	88 45 c8             	mov    %al,-0x38(%ebp)
    12db:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    12df:	57                   	push   %edi
    12e0:	88 45 c9             	mov    %al,-0x37(%ebp)
    12e3:	e8 0a 26 00 00       	call   38f2 <unlink>
    12e8:	83 c4 10             	add    $0x10,%esp
    12eb:	83 eb 01             	sub    $0x1,%ebx
    12ee:	75 e3                	jne    12d3 <createdelete+0xe3>
    12f0:	83 c6 01             	add    $0x1,%esi
    12f3:	89 f0                	mov    %esi,%eax
    12f5:	3c 84                	cmp    $0x84,%al
    12f7:	75 cf                	jne    12c8 <createdelete+0xd8>
    12f9:	83 ec 08             	sub    $0x8,%esp
    12fc:	68 4b 42 00 00       	push   $0x424b
    1301:	6a 01                	push   $0x1
    1303:	e8 08 27 00 00       	call   3a10 <printf>
    1308:	83 c4 10             	add    $0x10,%esp
    130b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    130e:	5b                   	pop    %ebx
    130f:	5e                   	pop    %esi
    1310:	5f                   	pop    %edi
    1311:	5d                   	pop    %ebp
    1312:	c3                   	ret    
    1313:	83 c3 70             	add    $0x70,%ebx
    1316:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    131a:	be 01 00 00 00       	mov    $0x1,%esi
    131f:	88 5d c8             	mov    %bl,-0x38(%ebp)
    1322:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1325:	31 db                	xor    %ebx,%ebx
    1327:	eb 12                	jmp    133b <createdelete+0x14b>
    1329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1330:	83 fe 14             	cmp    $0x14,%esi
    1333:	74 6b                	je     13a0 <createdelete+0x1b0>
    1335:	83 c3 01             	add    $0x1,%ebx
    1338:	83 c6 01             	add    $0x1,%esi
    133b:	83 ec 08             	sub    $0x8,%esp
    133e:	8d 43 30             	lea    0x30(%ebx),%eax
    1341:	68 02 02 00 00       	push   $0x202
    1346:	57                   	push   %edi
    1347:	88 45 c9             	mov    %al,-0x37(%ebp)
    134a:	e8 93 25 00 00       	call   38e2 <open>
    134f:	83 c4 10             	add    $0x10,%esp
    1352:	85 c0                	test   %eax,%eax
    1354:	78 64                	js     13ba <createdelete+0x1ca>
    1356:	83 ec 0c             	sub    $0xc,%esp
    1359:	50                   	push   %eax
    135a:	e8 6b 25 00 00       	call   38ca <close>
    135f:	83 c4 10             	add    $0x10,%esp
    1362:	85 db                	test   %ebx,%ebx
    1364:	74 cf                	je     1335 <createdelete+0x145>
    1366:	f6 c3 01             	test   $0x1,%bl
    1369:	75 c5                	jne    1330 <createdelete+0x140>
    136b:	83 ec 0c             	sub    $0xc,%esp
    136e:	89 d8                	mov    %ebx,%eax
    1370:	d1 f8                	sar    %eax
    1372:	57                   	push   %edi
    1373:	83 c0 30             	add    $0x30,%eax
    1376:	88 45 c9             	mov    %al,-0x37(%ebp)
    1379:	e8 74 25 00 00       	call   38f2 <unlink>
    137e:	83 c4 10             	add    $0x10,%esp
    1381:	85 c0                	test   %eax,%eax
    1383:	79 ab                	jns    1330 <createdelete+0x140>
    1385:	83 ec 08             	sub    $0x8,%esp
    1388:	68 39 3e 00 00       	push   $0x3e39
    138d:	6a 01                	push   $0x1
    138f:	e8 7c 26 00 00       	call   3a10 <printf>
    1394:	e8 09 25 00 00       	call   38a2 <exit>
    1399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13a0:	e8 fd 24 00 00       	call   38a2 <exit>
    13a5:	83 ec 04             	sub    $0x4,%esp
    13a8:	57                   	push   %edi
    13a9:	68 f8 4e 00 00       	push   $0x4ef8
    13ae:	6a 01                	push   $0x1
    13b0:	e8 5b 26 00 00       	call   3a10 <printf>
    13b5:	e8 e8 24 00 00       	call   38a2 <exit>
    13ba:	83 ec 08             	sub    $0x8,%esp
    13bd:	68 87 44 00 00       	push   $0x4487
    13c2:	6a 01                	push   $0x1
    13c4:	e8 47 26 00 00       	call   3a10 <printf>
    13c9:	e8 d4 24 00 00       	call   38a2 <exit>
    13ce:	83 ec 08             	sub    $0x8,%esp
    13d1:	68 c1 4c 00 00       	push   $0x4cc1
    13d6:	6a 01                	push   $0x1
    13d8:	e8 33 26 00 00       	call   3a10 <printf>
    13dd:	e8 c0 24 00 00       	call   38a2 <exit>
    13e2:	85 c0                	test   %eax,%eax
    13e4:	0f 88 c4 fe ff ff    	js     12ae <createdelete+0xbe>
    13ea:	83 ec 04             	sub    $0x4,%esp
    13ed:	57                   	push   %edi
    13ee:	68 1c 4f 00 00       	push   $0x4f1c
    13f3:	6a 01                	push   $0x1
    13f5:	e8 16 26 00 00       	call   3a10 <printf>
    13fa:	e8 a3 24 00 00       	call   38a2 <exit>
    13ff:	90                   	nop

00001400 <unlinkread>:
    1400:	55                   	push   %ebp
    1401:	89 e5                	mov    %esp,%ebp
    1403:	56                   	push   %esi
    1404:	53                   	push   %ebx
    1405:	83 ec 08             	sub    $0x8,%esp
    1408:	68 5c 42 00 00       	push   $0x425c
    140d:	6a 01                	push   $0x1
    140f:	e8 fc 25 00 00       	call   3a10 <printf>
    1414:	5b                   	pop    %ebx
    1415:	5e                   	pop    %esi
    1416:	68 02 02 00 00       	push   $0x202
    141b:	68 6d 42 00 00       	push   $0x426d
    1420:	e8 bd 24 00 00       	call   38e2 <open>
    1425:	83 c4 10             	add    $0x10,%esp
    1428:	85 c0                	test   %eax,%eax
    142a:	0f 88 e6 00 00 00    	js     1516 <unlinkread+0x116>
    1430:	83 ec 04             	sub    $0x4,%esp
    1433:	89 c3                	mov    %eax,%ebx
    1435:	6a 05                	push   $0x5
    1437:	68 92 42 00 00       	push   $0x4292
    143c:	50                   	push   %eax
    143d:	e8 80 24 00 00       	call   38c2 <write>
    1442:	89 1c 24             	mov    %ebx,(%esp)
    1445:	e8 80 24 00 00       	call   38ca <close>
    144a:	58                   	pop    %eax
    144b:	5a                   	pop    %edx
    144c:	6a 02                	push   $0x2
    144e:	68 6d 42 00 00       	push   $0x426d
    1453:	e8 8a 24 00 00       	call   38e2 <open>
    1458:	83 c4 10             	add    $0x10,%esp
    145b:	85 c0                	test   %eax,%eax
    145d:	89 c3                	mov    %eax,%ebx
    145f:	0f 88 10 01 00 00    	js     1575 <unlinkread+0x175>
    1465:	83 ec 0c             	sub    $0xc,%esp
    1468:	68 6d 42 00 00       	push   $0x426d
    146d:	e8 80 24 00 00       	call   38f2 <unlink>
    1472:	83 c4 10             	add    $0x10,%esp
    1475:	85 c0                	test   %eax,%eax
    1477:	0f 85 e5 00 00 00    	jne    1562 <unlinkread+0x162>
    147d:	83 ec 08             	sub    $0x8,%esp
    1480:	68 02 02 00 00       	push   $0x202
    1485:	68 6d 42 00 00       	push   $0x426d
    148a:	e8 53 24 00 00       	call   38e2 <open>
    148f:	83 c4 0c             	add    $0xc,%esp
    1492:	89 c6                	mov    %eax,%esi
    1494:	6a 03                	push   $0x3
    1496:	68 ca 42 00 00       	push   $0x42ca
    149b:	50                   	push   %eax
    149c:	e8 21 24 00 00       	call   38c2 <write>
    14a1:	89 34 24             	mov    %esi,(%esp)
    14a4:	e8 21 24 00 00       	call   38ca <close>
    14a9:	83 c4 0c             	add    $0xc,%esp
    14ac:	68 00 20 00 00       	push   $0x2000
    14b1:	68 00 86 00 00       	push   $0x8600
    14b6:	53                   	push   %ebx
    14b7:	e8 fe 23 00 00       	call   38ba <read>
    14bc:	83 c4 10             	add    $0x10,%esp
    14bf:	83 f8 05             	cmp    $0x5,%eax
    14c2:	0f 85 87 00 00 00    	jne    154f <unlinkread+0x14f>
    14c8:	80 3d 00 86 00 00 68 	cmpb   $0x68,0x8600
    14cf:	75 6b                	jne    153c <unlinkread+0x13c>
    14d1:	83 ec 04             	sub    $0x4,%esp
    14d4:	6a 0a                	push   $0xa
    14d6:	68 00 86 00 00       	push   $0x8600
    14db:	53                   	push   %ebx
    14dc:	e8 e1 23 00 00       	call   38c2 <write>
    14e1:	83 c4 10             	add    $0x10,%esp
    14e4:	83 f8 0a             	cmp    $0xa,%eax
    14e7:	75 40                	jne    1529 <unlinkread+0x129>
    14e9:	83 ec 0c             	sub    $0xc,%esp
    14ec:	53                   	push   %ebx
    14ed:	e8 d8 23 00 00       	call   38ca <close>
    14f2:	c7 04 24 6d 42 00 00 	movl   $0x426d,(%esp)
    14f9:	e8 f4 23 00 00       	call   38f2 <unlink>
    14fe:	58                   	pop    %eax
    14ff:	5a                   	pop    %edx
    1500:	68 15 43 00 00       	push   $0x4315
    1505:	6a 01                	push   $0x1
    1507:	e8 04 25 00 00       	call   3a10 <printf>
    150c:	83 c4 10             	add    $0x10,%esp
    150f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1512:	5b                   	pop    %ebx
    1513:	5e                   	pop    %esi
    1514:	5d                   	pop    %ebp
    1515:	c3                   	ret    
    1516:	51                   	push   %ecx
    1517:	51                   	push   %ecx
    1518:	68 78 42 00 00       	push   $0x4278
    151d:	6a 01                	push   $0x1
    151f:	e8 ec 24 00 00       	call   3a10 <printf>
    1524:	e8 79 23 00 00       	call   38a2 <exit>
    1529:	51                   	push   %ecx
    152a:	51                   	push   %ecx
    152b:	68 fc 42 00 00       	push   $0x42fc
    1530:	6a 01                	push   $0x1
    1532:	e8 d9 24 00 00       	call   3a10 <printf>
    1537:	e8 66 23 00 00       	call   38a2 <exit>
    153c:	53                   	push   %ebx
    153d:	53                   	push   %ebx
    153e:	68 e5 42 00 00       	push   $0x42e5
    1543:	6a 01                	push   $0x1
    1545:	e8 c6 24 00 00       	call   3a10 <printf>
    154a:	e8 53 23 00 00       	call   38a2 <exit>
    154f:	56                   	push   %esi
    1550:	56                   	push   %esi
    1551:	68 ce 42 00 00       	push   $0x42ce
    1556:	6a 01                	push   $0x1
    1558:	e8 b3 24 00 00       	call   3a10 <printf>
    155d:	e8 40 23 00 00       	call   38a2 <exit>
    1562:	50                   	push   %eax
    1563:	50                   	push   %eax
    1564:	68 b0 42 00 00       	push   $0x42b0
    1569:	6a 01                	push   $0x1
    156b:	e8 a0 24 00 00       	call   3a10 <printf>
    1570:	e8 2d 23 00 00       	call   38a2 <exit>
    1575:	50                   	push   %eax
    1576:	50                   	push   %eax
    1577:	68 98 42 00 00       	push   $0x4298
    157c:	6a 01                	push   $0x1
    157e:	e8 8d 24 00 00       	call   3a10 <printf>
    1583:	e8 1a 23 00 00       	call   38a2 <exit>
    1588:	90                   	nop
    1589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001590 <linktest>:
    1590:	55                   	push   %ebp
    1591:	89 e5                	mov    %esp,%ebp
    1593:	53                   	push   %ebx
    1594:	83 ec 0c             	sub    $0xc,%esp
    1597:	68 24 43 00 00       	push   $0x4324
    159c:	6a 01                	push   $0x1
    159e:	e8 6d 24 00 00       	call   3a10 <printf>
    15a3:	c7 04 24 2e 43 00 00 	movl   $0x432e,(%esp)
    15aa:	e8 43 23 00 00       	call   38f2 <unlink>
    15af:	c7 04 24 32 43 00 00 	movl   $0x4332,(%esp)
    15b6:	e8 37 23 00 00       	call   38f2 <unlink>
    15bb:	58                   	pop    %eax
    15bc:	5a                   	pop    %edx
    15bd:	68 02 02 00 00       	push   $0x202
    15c2:	68 2e 43 00 00       	push   $0x432e
    15c7:	e8 16 23 00 00       	call   38e2 <open>
    15cc:	83 c4 10             	add    $0x10,%esp
    15cf:	85 c0                	test   %eax,%eax
    15d1:	0f 88 1e 01 00 00    	js     16f5 <linktest+0x165>
    15d7:	83 ec 04             	sub    $0x4,%esp
    15da:	89 c3                	mov    %eax,%ebx
    15dc:	6a 05                	push   $0x5
    15de:	68 92 42 00 00       	push   $0x4292
    15e3:	50                   	push   %eax
    15e4:	e8 d9 22 00 00       	call   38c2 <write>
    15e9:	83 c4 10             	add    $0x10,%esp
    15ec:	83 f8 05             	cmp    $0x5,%eax
    15ef:	0f 85 98 01 00 00    	jne    178d <linktest+0x1fd>
    15f5:	83 ec 0c             	sub    $0xc,%esp
    15f8:	53                   	push   %ebx
    15f9:	e8 cc 22 00 00       	call   38ca <close>
    15fe:	5b                   	pop    %ebx
    15ff:	58                   	pop    %eax
    1600:	68 32 43 00 00       	push   $0x4332
    1605:	68 2e 43 00 00       	push   $0x432e
    160a:	e8 f3 22 00 00       	call   3902 <link>
    160f:	83 c4 10             	add    $0x10,%esp
    1612:	85 c0                	test   %eax,%eax
    1614:	0f 88 60 01 00 00    	js     177a <linktest+0x1ea>
    161a:	83 ec 0c             	sub    $0xc,%esp
    161d:	68 2e 43 00 00       	push   $0x432e
    1622:	e8 cb 22 00 00       	call   38f2 <unlink>
    1627:	58                   	pop    %eax
    1628:	5a                   	pop    %edx
    1629:	6a 00                	push   $0x0
    162b:	68 2e 43 00 00       	push   $0x432e
    1630:	e8 ad 22 00 00       	call   38e2 <open>
    1635:	83 c4 10             	add    $0x10,%esp
    1638:	85 c0                	test   %eax,%eax
    163a:	0f 89 27 01 00 00    	jns    1767 <linktest+0x1d7>
    1640:	83 ec 08             	sub    $0x8,%esp
    1643:	6a 00                	push   $0x0
    1645:	68 32 43 00 00       	push   $0x4332
    164a:	e8 93 22 00 00       	call   38e2 <open>
    164f:	83 c4 10             	add    $0x10,%esp
    1652:	85 c0                	test   %eax,%eax
    1654:	89 c3                	mov    %eax,%ebx
    1656:	0f 88 f8 00 00 00    	js     1754 <linktest+0x1c4>
    165c:	83 ec 04             	sub    $0x4,%esp
    165f:	68 00 20 00 00       	push   $0x2000
    1664:	68 00 86 00 00       	push   $0x8600
    1669:	50                   	push   %eax
    166a:	e8 4b 22 00 00       	call   38ba <read>
    166f:	83 c4 10             	add    $0x10,%esp
    1672:	83 f8 05             	cmp    $0x5,%eax
    1675:	0f 85 c6 00 00 00    	jne    1741 <linktest+0x1b1>
    167b:	83 ec 0c             	sub    $0xc,%esp
    167e:	53                   	push   %ebx
    167f:	e8 46 22 00 00       	call   38ca <close>
    1684:	58                   	pop    %eax
    1685:	5a                   	pop    %edx
    1686:	68 32 43 00 00       	push   $0x4332
    168b:	68 32 43 00 00       	push   $0x4332
    1690:	e8 6d 22 00 00       	call   3902 <link>
    1695:	83 c4 10             	add    $0x10,%esp
    1698:	85 c0                	test   %eax,%eax
    169a:	0f 89 8e 00 00 00    	jns    172e <linktest+0x19e>
    16a0:	83 ec 0c             	sub    $0xc,%esp
    16a3:	68 32 43 00 00       	push   $0x4332
    16a8:	e8 45 22 00 00       	call   38f2 <unlink>
    16ad:	59                   	pop    %ecx
    16ae:	5b                   	pop    %ebx
    16af:	68 2e 43 00 00       	push   $0x432e
    16b4:	68 32 43 00 00       	push   $0x4332
    16b9:	e8 44 22 00 00       	call   3902 <link>
    16be:	83 c4 10             	add    $0x10,%esp
    16c1:	85 c0                	test   %eax,%eax
    16c3:	79 56                	jns    171b <linktest+0x18b>
    16c5:	83 ec 08             	sub    $0x8,%esp
    16c8:	68 2e 43 00 00       	push   $0x432e
    16cd:	68 f6 45 00 00       	push   $0x45f6
    16d2:	e8 2b 22 00 00       	call   3902 <link>
    16d7:	83 c4 10             	add    $0x10,%esp
    16da:	85 c0                	test   %eax,%eax
    16dc:	79 2a                	jns    1708 <linktest+0x178>
    16de:	83 ec 08             	sub    $0x8,%esp
    16e1:	68 cc 43 00 00       	push   $0x43cc
    16e6:	6a 01                	push   $0x1
    16e8:	e8 23 23 00 00       	call   3a10 <printf>
    16ed:	83 c4 10             	add    $0x10,%esp
    16f0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    16f3:	c9                   	leave  
    16f4:	c3                   	ret    
    16f5:	50                   	push   %eax
    16f6:	50                   	push   %eax
    16f7:	68 36 43 00 00       	push   $0x4336
    16fc:	6a 01                	push   $0x1
    16fe:	e8 0d 23 00 00       	call   3a10 <printf>
    1703:	e8 9a 21 00 00       	call   38a2 <exit>
    1708:	50                   	push   %eax
    1709:	50                   	push   %eax
    170a:	68 b0 43 00 00       	push   $0x43b0
    170f:	6a 01                	push   $0x1
    1711:	e8 fa 22 00 00       	call   3a10 <printf>
    1716:	e8 87 21 00 00       	call   38a2 <exit>
    171b:	52                   	push   %edx
    171c:	52                   	push   %edx
    171d:	68 64 4f 00 00       	push   $0x4f64
    1722:	6a 01                	push   $0x1
    1724:	e8 e7 22 00 00       	call   3a10 <printf>
    1729:	e8 74 21 00 00       	call   38a2 <exit>
    172e:	50                   	push   %eax
    172f:	50                   	push   %eax
    1730:	68 92 43 00 00       	push   $0x4392
    1735:	6a 01                	push   $0x1
    1737:	e8 d4 22 00 00       	call   3a10 <printf>
    173c:	e8 61 21 00 00       	call   38a2 <exit>
    1741:	51                   	push   %ecx
    1742:	51                   	push   %ecx
    1743:	68 81 43 00 00       	push   $0x4381
    1748:	6a 01                	push   $0x1
    174a:	e8 c1 22 00 00       	call   3a10 <printf>
    174f:	e8 4e 21 00 00       	call   38a2 <exit>
    1754:	53                   	push   %ebx
    1755:	53                   	push   %ebx
    1756:	68 70 43 00 00       	push   $0x4370
    175b:	6a 01                	push   $0x1
    175d:	e8 ae 22 00 00       	call   3a10 <printf>
    1762:	e8 3b 21 00 00       	call   38a2 <exit>
    1767:	50                   	push   %eax
    1768:	50                   	push   %eax
    1769:	68 3c 4f 00 00       	push   $0x4f3c
    176e:	6a 01                	push   $0x1
    1770:	e8 9b 22 00 00       	call   3a10 <printf>
    1775:	e8 28 21 00 00       	call   38a2 <exit>
    177a:	51                   	push   %ecx
    177b:	51                   	push   %ecx
    177c:	68 5b 43 00 00       	push   $0x435b
    1781:	6a 01                	push   $0x1
    1783:	e8 88 22 00 00       	call   3a10 <printf>
    1788:	e8 15 21 00 00       	call   38a2 <exit>
    178d:	50                   	push   %eax
    178e:	50                   	push   %eax
    178f:	68 49 43 00 00       	push   $0x4349
    1794:	6a 01                	push   $0x1
    1796:	e8 75 22 00 00       	call   3a10 <printf>
    179b:	e8 02 21 00 00       	call   38a2 <exit>

000017a0 <concreate>:
    17a0:	55                   	push   %ebp
    17a1:	89 e5                	mov    %esp,%ebp
    17a3:	57                   	push   %edi
    17a4:	56                   	push   %esi
    17a5:	53                   	push   %ebx
    17a6:	31 f6                	xor    %esi,%esi
    17a8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17ab:	bf 56 55 55 55       	mov    $0x55555556,%edi
    17b0:	83 ec 64             	sub    $0x64,%esp
    17b3:	68 d9 43 00 00       	push   $0x43d9
    17b8:	6a 01                	push   $0x1
    17ba:	e8 51 22 00 00       	call   3a10 <printf>
    17bf:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
    17c3:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    17c7:	83 c4 10             	add    $0x10,%esp
    17ca:	eb 51                	jmp    181d <concreate+0x7d>
    17cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17d0:	89 f0                	mov    %esi,%eax
    17d2:	89 f1                	mov    %esi,%ecx
    17d4:	f7 ef                	imul   %edi
    17d6:	89 f0                	mov    %esi,%eax
    17d8:	c1 f8 1f             	sar    $0x1f,%eax
    17db:	29 c2                	sub    %eax,%edx
    17dd:	8d 04 52             	lea    (%edx,%edx,2),%eax
    17e0:	29 c1                	sub    %eax,%ecx
    17e2:	83 f9 01             	cmp    $0x1,%ecx
    17e5:	0f 84 b5 00 00 00    	je     18a0 <concreate+0x100>
    17eb:	83 ec 08             	sub    $0x8,%esp
    17ee:	68 02 02 00 00       	push   $0x202
    17f3:	53                   	push   %ebx
    17f4:	e8 e9 20 00 00       	call   38e2 <open>
    17f9:	83 c4 10             	add    $0x10,%esp
    17fc:	85 c0                	test   %eax,%eax
    17fe:	78 6d                	js     186d <concreate+0xcd>
    1800:	83 ec 0c             	sub    $0xc,%esp
    1803:	83 c6 01             	add    $0x1,%esi
    1806:	50                   	push   %eax
    1807:	e8 be 20 00 00       	call   38ca <close>
    180c:	83 c4 10             	add    $0x10,%esp
    180f:	e8 96 20 00 00       	call   38aa <wait>
    1814:	83 fe 28             	cmp    $0x28,%esi
    1817:	0f 84 ab 00 00 00    	je     18c8 <concreate+0x128>
    181d:	83 ec 0c             	sub    $0xc,%esp
    1820:	8d 46 30             	lea    0x30(%esi),%eax
    1823:	53                   	push   %ebx
    1824:	88 45 ae             	mov    %al,-0x52(%ebp)
    1827:	e8 c6 20 00 00       	call   38f2 <unlink>
    182c:	e8 69 20 00 00       	call   389a <fork>
    1831:	83 c4 10             	add    $0x10,%esp
    1834:	85 c0                	test   %eax,%eax
    1836:	75 98                	jne    17d0 <concreate+0x30>
    1838:	89 f0                	mov    %esi,%eax
    183a:	ba 67 66 66 66       	mov    $0x66666667,%edx
    183f:	f7 ea                	imul   %edx
    1841:	89 f0                	mov    %esi,%eax
    1843:	c1 f8 1f             	sar    $0x1f,%eax
    1846:	d1 fa                	sar    %edx
    1848:	29 c2                	sub    %eax,%edx
    184a:	8d 04 92             	lea    (%edx,%edx,4),%eax
    184d:	29 c6                	sub    %eax,%esi
    184f:	83 fe 01             	cmp    $0x1,%esi
    1852:	74 34                	je     1888 <concreate+0xe8>
    1854:	83 ec 08             	sub    $0x8,%esp
    1857:	68 02 02 00 00       	push   $0x202
    185c:	53                   	push   %ebx
    185d:	e8 80 20 00 00       	call   38e2 <open>
    1862:	83 c4 10             	add    $0x10,%esp
    1865:	85 c0                	test   %eax,%eax
    1867:	0f 89 32 02 00 00    	jns    1a9f <concreate+0x2ff>
    186d:	83 ec 04             	sub    $0x4,%esp
    1870:	53                   	push   %ebx
    1871:	68 ec 43 00 00       	push   $0x43ec
    1876:	6a 01                	push   $0x1
    1878:	e8 93 21 00 00       	call   3a10 <printf>
    187d:	e8 20 20 00 00       	call   38a2 <exit>
    1882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1888:	83 ec 08             	sub    $0x8,%esp
    188b:	53                   	push   %ebx
    188c:	68 e9 43 00 00       	push   $0x43e9
    1891:	e8 6c 20 00 00       	call   3902 <link>
    1896:	83 c4 10             	add    $0x10,%esp
    1899:	e8 04 20 00 00       	call   38a2 <exit>
    189e:	66 90                	xchg   %ax,%ax
    18a0:	83 ec 08             	sub    $0x8,%esp
    18a3:	83 c6 01             	add    $0x1,%esi
    18a6:	53                   	push   %ebx
    18a7:	68 e9 43 00 00       	push   $0x43e9
    18ac:	e8 51 20 00 00       	call   3902 <link>
    18b1:	83 c4 10             	add    $0x10,%esp
    18b4:	e8 f1 1f 00 00       	call   38aa <wait>
    18b9:	83 fe 28             	cmp    $0x28,%esi
    18bc:	0f 85 5b ff ff ff    	jne    181d <concreate+0x7d>
    18c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    18c8:	8d 45 c0             	lea    -0x40(%ebp),%eax
    18cb:	83 ec 04             	sub    $0x4,%esp
    18ce:	8d 7d b0             	lea    -0x50(%ebp),%edi
    18d1:	6a 28                	push   $0x28
    18d3:	6a 00                	push   $0x0
    18d5:	50                   	push   %eax
    18d6:	e8 35 1e 00 00       	call   3710 <memset>
    18db:	59                   	pop    %ecx
    18dc:	5e                   	pop    %esi
    18dd:	6a 00                	push   $0x0
    18df:	68 f6 45 00 00       	push   $0x45f6
    18e4:	e8 f9 1f 00 00       	call   38e2 <open>
    18e9:	83 c4 10             	add    $0x10,%esp
    18ec:	89 c6                	mov    %eax,%esi
    18ee:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    18f5:	8d 76 00             	lea    0x0(%esi),%esi
    18f8:	83 ec 04             	sub    $0x4,%esp
    18fb:	6a 10                	push   $0x10
    18fd:	57                   	push   %edi
    18fe:	56                   	push   %esi
    18ff:	e8 b6 1f 00 00       	call   38ba <read>
    1904:	83 c4 10             	add    $0x10,%esp
    1907:	85 c0                	test   %eax,%eax
    1909:	7e 3d                	jle    1948 <concreate+0x1a8>
    190b:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1910:	74 e6                	je     18f8 <concreate+0x158>
    1912:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1916:	75 e0                	jne    18f8 <concreate+0x158>
    1918:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    191c:	75 da                	jne    18f8 <concreate+0x158>
    191e:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1922:	83 e8 30             	sub    $0x30,%eax
    1925:	83 f8 27             	cmp    $0x27,%eax
    1928:	0f 87 59 01 00 00    	ja     1a87 <concreate+0x2e7>
    192e:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1933:	0f 85 36 01 00 00    	jne    1a6f <concreate+0x2cf>
    1939:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
    193e:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1942:	eb b4                	jmp    18f8 <concreate+0x158>
    1944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1948:	83 ec 0c             	sub    $0xc,%esp
    194b:	56                   	push   %esi
    194c:	e8 79 1f 00 00       	call   38ca <close>
    1951:	83 c4 10             	add    $0x10,%esp
    1954:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1958:	0f 85 fd 00 00 00    	jne    1a5b <concreate+0x2bb>
    195e:	31 f6                	xor    %esi,%esi
    1960:	eb 70                	jmp    19d2 <concreate+0x232>
    1962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1968:	83 fa 01             	cmp    $0x1,%edx
    196b:	0f 85 99 00 00 00    	jne    1a0a <concreate+0x26a>
    1971:	83 ec 08             	sub    $0x8,%esp
    1974:	6a 00                	push   $0x0
    1976:	53                   	push   %ebx
    1977:	e8 66 1f 00 00       	call   38e2 <open>
    197c:	89 04 24             	mov    %eax,(%esp)
    197f:	e8 46 1f 00 00       	call   38ca <close>
    1984:	58                   	pop    %eax
    1985:	5a                   	pop    %edx
    1986:	6a 00                	push   $0x0
    1988:	53                   	push   %ebx
    1989:	e8 54 1f 00 00       	call   38e2 <open>
    198e:	89 04 24             	mov    %eax,(%esp)
    1991:	e8 34 1f 00 00       	call   38ca <close>
    1996:	59                   	pop    %ecx
    1997:	58                   	pop    %eax
    1998:	6a 00                	push   $0x0
    199a:	53                   	push   %ebx
    199b:	e8 42 1f 00 00       	call   38e2 <open>
    19a0:	89 04 24             	mov    %eax,(%esp)
    19a3:	e8 22 1f 00 00       	call   38ca <close>
    19a8:	58                   	pop    %eax
    19a9:	5a                   	pop    %edx
    19aa:	6a 00                	push   $0x0
    19ac:	53                   	push   %ebx
    19ad:	e8 30 1f 00 00       	call   38e2 <open>
    19b2:	89 04 24             	mov    %eax,(%esp)
    19b5:	e8 10 1f 00 00       	call   38ca <close>
    19ba:	83 c4 10             	add    $0x10,%esp
    19bd:	85 ff                	test   %edi,%edi
    19bf:	0f 84 d4 fe ff ff    	je     1899 <concreate+0xf9>
    19c5:	83 c6 01             	add    $0x1,%esi
    19c8:	e8 dd 1e 00 00       	call   38aa <wait>
    19cd:	83 fe 28             	cmp    $0x28,%esi
    19d0:	74 5e                	je     1a30 <concreate+0x290>
    19d2:	8d 46 30             	lea    0x30(%esi),%eax
    19d5:	88 45 ae             	mov    %al,-0x52(%ebp)
    19d8:	e8 bd 1e 00 00       	call   389a <fork>
    19dd:	85 c0                	test   %eax,%eax
    19df:	89 c7                	mov    %eax,%edi
    19e1:	78 64                	js     1a47 <concreate+0x2a7>
    19e3:	b8 56 55 55 55       	mov    $0x55555556,%eax
    19e8:	f7 ee                	imul   %esi
    19ea:	89 f0                	mov    %esi,%eax
    19ec:	c1 f8 1f             	sar    $0x1f,%eax
    19ef:	29 c2                	sub    %eax,%edx
    19f1:	8d 04 52             	lea    (%edx,%edx,2),%eax
    19f4:	89 f2                	mov    %esi,%edx
    19f6:	29 c2                	sub    %eax,%edx
    19f8:	89 f8                	mov    %edi,%eax
    19fa:	09 d0                	or     %edx,%eax
    19fc:	0f 84 6f ff ff ff    	je     1971 <concreate+0x1d1>
    1a02:	85 ff                	test   %edi,%edi
    1a04:	0f 85 5e ff ff ff    	jne    1968 <concreate+0x1c8>
    1a0a:	83 ec 0c             	sub    $0xc,%esp
    1a0d:	53                   	push   %ebx
    1a0e:	e8 df 1e 00 00       	call   38f2 <unlink>
    1a13:	89 1c 24             	mov    %ebx,(%esp)
    1a16:	e8 d7 1e 00 00       	call   38f2 <unlink>
    1a1b:	89 1c 24             	mov    %ebx,(%esp)
    1a1e:	e8 cf 1e 00 00       	call   38f2 <unlink>
    1a23:	89 1c 24             	mov    %ebx,(%esp)
    1a26:	e8 c7 1e 00 00       	call   38f2 <unlink>
    1a2b:	83 c4 10             	add    $0x10,%esp
    1a2e:	eb 8d                	jmp    19bd <concreate+0x21d>
    1a30:	83 ec 08             	sub    $0x8,%esp
    1a33:	68 3e 44 00 00       	push   $0x443e
    1a38:	6a 01                	push   $0x1
    1a3a:	e8 d1 1f 00 00       	call   3a10 <printf>
    1a3f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a42:	5b                   	pop    %ebx
    1a43:	5e                   	pop    %esi
    1a44:	5f                   	pop    %edi
    1a45:	5d                   	pop    %ebp
    1a46:	c3                   	ret    
    1a47:	83 ec 08             	sub    $0x8,%esp
    1a4a:	68 c1 4c 00 00       	push   $0x4cc1
    1a4f:	6a 01                	push   $0x1
    1a51:	e8 ba 1f 00 00       	call   3a10 <printf>
    1a56:	e8 47 1e 00 00       	call   38a2 <exit>
    1a5b:	83 ec 08             	sub    $0x8,%esp
    1a5e:	68 88 4f 00 00       	push   $0x4f88
    1a63:	6a 01                	push   $0x1
    1a65:	e8 a6 1f 00 00       	call   3a10 <printf>
    1a6a:	e8 33 1e 00 00       	call   38a2 <exit>
    1a6f:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a72:	83 ec 04             	sub    $0x4,%esp
    1a75:	50                   	push   %eax
    1a76:	68 21 44 00 00       	push   $0x4421
    1a7b:	6a 01                	push   $0x1
    1a7d:	e8 8e 1f 00 00       	call   3a10 <printf>
    1a82:	e8 1b 1e 00 00       	call   38a2 <exit>
    1a87:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a8a:	83 ec 04             	sub    $0x4,%esp
    1a8d:	50                   	push   %eax
    1a8e:	68 08 44 00 00       	push   $0x4408
    1a93:	6a 01                	push   $0x1
    1a95:	e8 76 1f 00 00       	call   3a10 <printf>
    1a9a:	e8 03 1e 00 00       	call   38a2 <exit>
    1a9f:	83 ec 0c             	sub    $0xc,%esp
    1aa2:	50                   	push   %eax
    1aa3:	e8 22 1e 00 00       	call   38ca <close>
    1aa8:	83 c4 10             	add    $0x10,%esp
    1aab:	e9 e9 fd ff ff       	jmp    1899 <concreate+0xf9>

00001ab0 <linkunlink>:
    1ab0:	55                   	push   %ebp
    1ab1:	89 e5                	mov    %esp,%ebp
    1ab3:	57                   	push   %edi
    1ab4:	56                   	push   %esi
    1ab5:	53                   	push   %ebx
    1ab6:	83 ec 24             	sub    $0x24,%esp
    1ab9:	68 4c 44 00 00       	push   $0x444c
    1abe:	6a 01                	push   $0x1
    1ac0:	e8 4b 1f 00 00       	call   3a10 <printf>
    1ac5:	c7 04 24 d9 46 00 00 	movl   $0x46d9,(%esp)
    1acc:	e8 21 1e 00 00       	call   38f2 <unlink>
    1ad1:	e8 c4 1d 00 00       	call   389a <fork>
    1ad6:	83 c4 10             	add    $0x10,%esp
    1ad9:	85 c0                	test   %eax,%eax
    1adb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1ade:	0f 88 b6 00 00 00    	js     1b9a <linkunlink+0xea>
    1ae4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1ae8:	bb 64 00 00 00       	mov    $0x64,%ebx
    1aed:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
    1af2:	19 ff                	sbb    %edi,%edi
    1af4:	83 e7 60             	and    $0x60,%edi
    1af7:	83 c7 01             	add    $0x1,%edi
    1afa:	eb 1e                	jmp    1b1a <linkunlink+0x6a>
    1afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1b00:	83 fa 01             	cmp    $0x1,%edx
    1b03:	74 7b                	je     1b80 <linkunlink+0xd0>
    1b05:	83 ec 0c             	sub    $0xc,%esp
    1b08:	68 d9 46 00 00       	push   $0x46d9
    1b0d:	e8 e0 1d 00 00       	call   38f2 <unlink>
    1b12:	83 c4 10             	add    $0x10,%esp
    1b15:	83 eb 01             	sub    $0x1,%ebx
    1b18:	74 3d                	je     1b57 <linkunlink+0xa7>
    1b1a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b20:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    1b26:	89 f8                	mov    %edi,%eax
    1b28:	f7 e6                	mul    %esi
    1b2a:	d1 ea                	shr    %edx
    1b2c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1b2f:	89 fa                	mov    %edi,%edx
    1b31:	29 c2                	sub    %eax,%edx
    1b33:	75 cb                	jne    1b00 <linkunlink+0x50>
    1b35:	83 ec 08             	sub    $0x8,%esp
    1b38:	68 02 02 00 00       	push   $0x202
    1b3d:	68 d9 46 00 00       	push   $0x46d9
    1b42:	e8 9b 1d 00 00       	call   38e2 <open>
    1b47:	89 04 24             	mov    %eax,(%esp)
    1b4a:	e8 7b 1d 00 00       	call   38ca <close>
    1b4f:	83 c4 10             	add    $0x10,%esp
    1b52:	83 eb 01             	sub    $0x1,%ebx
    1b55:	75 c3                	jne    1b1a <linkunlink+0x6a>
    1b57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b5a:	85 c0                	test   %eax,%eax
    1b5c:	74 50                	je     1bae <linkunlink+0xfe>
    1b5e:	e8 47 1d 00 00       	call   38aa <wait>
    1b63:	83 ec 08             	sub    $0x8,%esp
    1b66:	68 61 44 00 00       	push   $0x4461
    1b6b:	6a 01                	push   $0x1
    1b6d:	e8 9e 1e 00 00       	call   3a10 <printf>
    1b72:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b75:	5b                   	pop    %ebx
    1b76:	5e                   	pop    %esi
    1b77:	5f                   	pop    %edi
    1b78:	5d                   	pop    %ebp
    1b79:	c3                   	ret    
    1b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1b80:	83 ec 08             	sub    $0x8,%esp
    1b83:	68 d9 46 00 00       	push   $0x46d9
    1b88:	68 5d 44 00 00       	push   $0x445d
    1b8d:	e8 70 1d 00 00       	call   3902 <link>
    1b92:	83 c4 10             	add    $0x10,%esp
    1b95:	e9 7b ff ff ff       	jmp    1b15 <linkunlink+0x65>
    1b9a:	83 ec 08             	sub    $0x8,%esp
    1b9d:	68 c1 4c 00 00       	push   $0x4cc1
    1ba2:	6a 01                	push   $0x1
    1ba4:	e8 67 1e 00 00       	call   3a10 <printf>
    1ba9:	e8 f4 1c 00 00       	call   38a2 <exit>
    1bae:	e8 ef 1c 00 00       	call   38a2 <exit>
    1bb3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001bc0 <bigdir>:
    1bc0:	55                   	push   %ebp
    1bc1:	89 e5                	mov    %esp,%ebp
    1bc3:	56                   	push   %esi
    1bc4:	53                   	push   %ebx
    1bc5:	83 ec 18             	sub    $0x18,%esp
    1bc8:	68 70 44 00 00       	push   $0x4470
    1bcd:	6a 01                	push   $0x1
    1bcf:	e8 3c 1e 00 00       	call   3a10 <printf>
    1bd4:	c7 04 24 7d 44 00 00 	movl   $0x447d,(%esp)
    1bdb:	e8 12 1d 00 00       	call   38f2 <unlink>
    1be0:	58                   	pop    %eax
    1be1:	5a                   	pop    %edx
    1be2:	68 00 02 00 00       	push   $0x200
    1be7:	68 7d 44 00 00       	push   $0x447d
    1bec:	e8 f1 1c 00 00       	call   38e2 <open>
    1bf1:	83 c4 10             	add    $0x10,%esp
    1bf4:	85 c0                	test   %eax,%eax
    1bf6:	0f 88 de 00 00 00    	js     1cda <bigdir+0x11a>
    1bfc:	83 ec 0c             	sub    $0xc,%esp
    1bff:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1c02:	31 db                	xor    %ebx,%ebx
    1c04:	50                   	push   %eax
    1c05:	e8 c0 1c 00 00       	call   38ca <close>
    1c0a:	83 c4 10             	add    $0x10,%esp
    1c0d:	8d 76 00             	lea    0x0(%esi),%esi
    1c10:	89 d8                	mov    %ebx,%eax
    1c12:	83 ec 08             	sub    $0x8,%esp
    1c15:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1c19:	c1 f8 06             	sar    $0x6,%eax
    1c1c:	56                   	push   %esi
    1c1d:	68 7d 44 00 00       	push   $0x447d
    1c22:	83 c0 30             	add    $0x30,%eax
    1c25:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1c29:	88 45 ef             	mov    %al,-0x11(%ebp)
    1c2c:	89 d8                	mov    %ebx,%eax
    1c2e:	83 e0 3f             	and    $0x3f,%eax
    1c31:	83 c0 30             	add    $0x30,%eax
    1c34:	88 45 f0             	mov    %al,-0x10(%ebp)
    1c37:	e8 c6 1c 00 00       	call   3902 <link>
    1c3c:	83 c4 10             	add    $0x10,%esp
    1c3f:	85 c0                	test   %eax,%eax
    1c41:	75 6f                	jne    1cb2 <bigdir+0xf2>
    1c43:	83 c3 01             	add    $0x1,%ebx
    1c46:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1c4c:	75 c2                	jne    1c10 <bigdir+0x50>
    1c4e:	83 ec 0c             	sub    $0xc,%esp
    1c51:	31 db                	xor    %ebx,%ebx
    1c53:	68 7d 44 00 00       	push   $0x447d
    1c58:	e8 95 1c 00 00       	call   38f2 <unlink>
    1c5d:	83 c4 10             	add    $0x10,%esp
    1c60:	89 d8                	mov    %ebx,%eax
    1c62:	83 ec 0c             	sub    $0xc,%esp
    1c65:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    1c69:	c1 f8 06             	sar    $0x6,%eax
    1c6c:	56                   	push   %esi
    1c6d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    1c71:	83 c0 30             	add    $0x30,%eax
    1c74:	88 45 ef             	mov    %al,-0x11(%ebp)
    1c77:	89 d8                	mov    %ebx,%eax
    1c79:	83 e0 3f             	and    $0x3f,%eax
    1c7c:	83 c0 30             	add    $0x30,%eax
    1c7f:	88 45 f0             	mov    %al,-0x10(%ebp)
    1c82:	e8 6b 1c 00 00       	call   38f2 <unlink>
    1c87:	83 c4 10             	add    $0x10,%esp
    1c8a:	85 c0                	test   %eax,%eax
    1c8c:	75 38                	jne    1cc6 <bigdir+0x106>
    1c8e:	83 c3 01             	add    $0x1,%ebx
    1c91:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1c97:	75 c7                	jne    1c60 <bigdir+0xa0>
    1c99:	83 ec 08             	sub    $0x8,%esp
    1c9c:	68 bf 44 00 00       	push   $0x44bf
    1ca1:	6a 01                	push   $0x1
    1ca3:	e8 68 1d 00 00       	call   3a10 <printf>
    1ca8:	83 c4 10             	add    $0x10,%esp
    1cab:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1cae:	5b                   	pop    %ebx
    1caf:	5e                   	pop    %esi
    1cb0:	5d                   	pop    %ebp
    1cb1:	c3                   	ret    
    1cb2:	83 ec 08             	sub    $0x8,%esp
    1cb5:	68 96 44 00 00       	push   $0x4496
    1cba:	6a 01                	push   $0x1
    1cbc:	e8 4f 1d 00 00       	call   3a10 <printf>
    1cc1:	e8 dc 1b 00 00       	call   38a2 <exit>
    1cc6:	83 ec 08             	sub    $0x8,%esp
    1cc9:	68 aa 44 00 00       	push   $0x44aa
    1cce:	6a 01                	push   $0x1
    1cd0:	e8 3b 1d 00 00       	call   3a10 <printf>
    1cd5:	e8 c8 1b 00 00       	call   38a2 <exit>
    1cda:	83 ec 08             	sub    $0x8,%esp
    1cdd:	68 80 44 00 00       	push   $0x4480
    1ce2:	6a 01                	push   $0x1
    1ce4:	e8 27 1d 00 00       	call   3a10 <printf>
    1ce9:	e8 b4 1b 00 00       	call   38a2 <exit>
    1cee:	66 90                	xchg   %ax,%ax

00001cf0 <subdir>:
    1cf0:	55                   	push   %ebp
    1cf1:	89 e5                	mov    %esp,%ebp
    1cf3:	53                   	push   %ebx
    1cf4:	83 ec 0c             	sub    $0xc,%esp
    1cf7:	68 ca 44 00 00       	push   $0x44ca
    1cfc:	6a 01                	push   $0x1
    1cfe:	e8 0d 1d 00 00       	call   3a10 <printf>
    1d03:	c7 04 24 53 45 00 00 	movl   $0x4553,(%esp)
    1d0a:	e8 e3 1b 00 00       	call   38f2 <unlink>
    1d0f:	c7 04 24 f0 45 00 00 	movl   $0x45f0,(%esp)
    1d16:	e8 ef 1b 00 00       	call   390a <mkdir>
    1d1b:	83 c4 10             	add    $0x10,%esp
    1d1e:	85 c0                	test   %eax,%eax
    1d20:	0f 85 b3 05 00 00    	jne    22d9 <subdir+0x5e9>
    1d26:	83 ec 08             	sub    $0x8,%esp
    1d29:	68 02 02 00 00       	push   $0x202
    1d2e:	68 29 45 00 00       	push   $0x4529
    1d33:	e8 aa 1b 00 00       	call   38e2 <open>
    1d38:	83 c4 10             	add    $0x10,%esp
    1d3b:	85 c0                	test   %eax,%eax
    1d3d:	89 c3                	mov    %eax,%ebx
    1d3f:	0f 88 81 05 00 00    	js     22c6 <subdir+0x5d6>
    1d45:	83 ec 04             	sub    $0x4,%esp
    1d48:	6a 02                	push   $0x2
    1d4a:	68 53 45 00 00       	push   $0x4553
    1d4f:	50                   	push   %eax
    1d50:	e8 6d 1b 00 00       	call   38c2 <write>
    1d55:	89 1c 24             	mov    %ebx,(%esp)
    1d58:	e8 6d 1b 00 00       	call   38ca <close>
    1d5d:	c7 04 24 f0 45 00 00 	movl   $0x45f0,(%esp)
    1d64:	e8 89 1b 00 00       	call   38f2 <unlink>
    1d69:	83 c4 10             	add    $0x10,%esp
    1d6c:	85 c0                	test   %eax,%eax
    1d6e:	0f 89 3f 05 00 00    	jns    22b3 <subdir+0x5c3>
    1d74:	83 ec 0c             	sub    $0xc,%esp
    1d77:	68 04 45 00 00       	push   $0x4504
    1d7c:	e8 89 1b 00 00       	call   390a <mkdir>
    1d81:	83 c4 10             	add    $0x10,%esp
    1d84:	85 c0                	test   %eax,%eax
    1d86:	0f 85 14 05 00 00    	jne    22a0 <subdir+0x5b0>
    1d8c:	83 ec 08             	sub    $0x8,%esp
    1d8f:	68 02 02 00 00       	push   $0x202
    1d94:	68 26 45 00 00       	push   $0x4526
    1d99:	e8 44 1b 00 00       	call   38e2 <open>
    1d9e:	83 c4 10             	add    $0x10,%esp
    1da1:	85 c0                	test   %eax,%eax
    1da3:	89 c3                	mov    %eax,%ebx
    1da5:	0f 88 24 04 00 00    	js     21cf <subdir+0x4df>
    1dab:	83 ec 04             	sub    $0x4,%esp
    1dae:	6a 02                	push   $0x2
    1db0:	68 47 45 00 00       	push   $0x4547
    1db5:	50                   	push   %eax
    1db6:	e8 07 1b 00 00       	call   38c2 <write>
    1dbb:	89 1c 24             	mov    %ebx,(%esp)
    1dbe:	e8 07 1b 00 00       	call   38ca <close>
    1dc3:	58                   	pop    %eax
    1dc4:	5a                   	pop    %edx
    1dc5:	6a 00                	push   $0x0
    1dc7:	68 4a 45 00 00       	push   $0x454a
    1dcc:	e8 11 1b 00 00       	call   38e2 <open>
    1dd1:	83 c4 10             	add    $0x10,%esp
    1dd4:	85 c0                	test   %eax,%eax
    1dd6:	89 c3                	mov    %eax,%ebx
    1dd8:	0f 88 de 03 00 00    	js     21bc <subdir+0x4cc>
    1dde:	83 ec 04             	sub    $0x4,%esp
    1de1:	68 00 20 00 00       	push   $0x2000
    1de6:	68 00 86 00 00       	push   $0x8600
    1deb:	50                   	push   %eax
    1dec:	e8 c9 1a 00 00       	call   38ba <read>
    1df1:	83 c4 10             	add    $0x10,%esp
    1df4:	83 f8 02             	cmp    $0x2,%eax
    1df7:	0f 85 3a 03 00 00    	jne    2137 <subdir+0x447>
    1dfd:	80 3d 00 86 00 00 66 	cmpb   $0x66,0x8600
    1e04:	0f 85 2d 03 00 00    	jne    2137 <subdir+0x447>
    1e0a:	83 ec 0c             	sub    $0xc,%esp
    1e0d:	53                   	push   %ebx
    1e0e:	e8 b7 1a 00 00       	call   38ca <close>
    1e13:	5b                   	pop    %ebx
    1e14:	58                   	pop    %eax
    1e15:	68 8a 45 00 00       	push   $0x458a
    1e1a:	68 26 45 00 00       	push   $0x4526
    1e1f:	e8 de 1a 00 00       	call   3902 <link>
    1e24:	83 c4 10             	add    $0x10,%esp
    1e27:	85 c0                	test   %eax,%eax
    1e29:	0f 85 c6 03 00 00    	jne    21f5 <subdir+0x505>
    1e2f:	83 ec 0c             	sub    $0xc,%esp
    1e32:	68 26 45 00 00       	push   $0x4526
    1e37:	e8 b6 1a 00 00       	call   38f2 <unlink>
    1e3c:	83 c4 10             	add    $0x10,%esp
    1e3f:	85 c0                	test   %eax,%eax
    1e41:	0f 85 16 03 00 00    	jne    215d <subdir+0x46d>
    1e47:	83 ec 08             	sub    $0x8,%esp
    1e4a:	6a 00                	push   $0x0
    1e4c:	68 26 45 00 00       	push   $0x4526
    1e51:	e8 8c 1a 00 00       	call   38e2 <open>
    1e56:	83 c4 10             	add    $0x10,%esp
    1e59:	85 c0                	test   %eax,%eax
    1e5b:	0f 89 2c 04 00 00    	jns    228d <subdir+0x59d>
    1e61:	83 ec 0c             	sub    $0xc,%esp
    1e64:	68 f0 45 00 00       	push   $0x45f0
    1e69:	e8 a4 1a 00 00       	call   3912 <chdir>
    1e6e:	83 c4 10             	add    $0x10,%esp
    1e71:	85 c0                	test   %eax,%eax
    1e73:	0f 85 01 04 00 00    	jne    227a <subdir+0x58a>
    1e79:	83 ec 0c             	sub    $0xc,%esp
    1e7c:	68 be 45 00 00       	push   $0x45be
    1e81:	e8 8c 1a 00 00       	call   3912 <chdir>
    1e86:	83 c4 10             	add    $0x10,%esp
    1e89:	85 c0                	test   %eax,%eax
    1e8b:	0f 85 b9 02 00 00    	jne    214a <subdir+0x45a>
    1e91:	83 ec 0c             	sub    $0xc,%esp
    1e94:	68 e4 45 00 00       	push   $0x45e4
    1e99:	e8 74 1a 00 00       	call   3912 <chdir>
    1e9e:	83 c4 10             	add    $0x10,%esp
    1ea1:	85 c0                	test   %eax,%eax
    1ea3:	0f 85 a1 02 00 00    	jne    214a <subdir+0x45a>
    1ea9:	83 ec 0c             	sub    $0xc,%esp
    1eac:	68 f3 45 00 00       	push   $0x45f3
    1eb1:	e8 5c 1a 00 00       	call   3912 <chdir>
    1eb6:	83 c4 10             	add    $0x10,%esp
    1eb9:	85 c0                	test   %eax,%eax
    1ebb:	0f 85 21 03 00 00    	jne    21e2 <subdir+0x4f2>
    1ec1:	83 ec 08             	sub    $0x8,%esp
    1ec4:	6a 00                	push   $0x0
    1ec6:	68 8a 45 00 00       	push   $0x458a
    1ecb:	e8 12 1a 00 00       	call   38e2 <open>
    1ed0:	83 c4 10             	add    $0x10,%esp
    1ed3:	85 c0                	test   %eax,%eax
    1ed5:	89 c3                	mov    %eax,%ebx
    1ed7:	0f 88 e0 04 00 00    	js     23bd <subdir+0x6cd>
    1edd:	83 ec 04             	sub    $0x4,%esp
    1ee0:	68 00 20 00 00       	push   $0x2000
    1ee5:	68 00 86 00 00       	push   $0x8600
    1eea:	50                   	push   %eax
    1eeb:	e8 ca 19 00 00       	call   38ba <read>
    1ef0:	83 c4 10             	add    $0x10,%esp
    1ef3:	83 f8 02             	cmp    $0x2,%eax
    1ef6:	0f 85 ae 04 00 00    	jne    23aa <subdir+0x6ba>
    1efc:	83 ec 0c             	sub    $0xc,%esp
    1eff:	53                   	push   %ebx
    1f00:	e8 c5 19 00 00       	call   38ca <close>
    1f05:	59                   	pop    %ecx
    1f06:	5b                   	pop    %ebx
    1f07:	6a 00                	push   $0x0
    1f09:	68 26 45 00 00       	push   $0x4526
    1f0e:	e8 cf 19 00 00       	call   38e2 <open>
    1f13:	83 c4 10             	add    $0x10,%esp
    1f16:	85 c0                	test   %eax,%eax
    1f18:	0f 89 65 02 00 00    	jns    2183 <subdir+0x493>
    1f1e:	83 ec 08             	sub    $0x8,%esp
    1f21:	68 02 02 00 00       	push   $0x202
    1f26:	68 3e 46 00 00       	push   $0x463e
    1f2b:	e8 b2 19 00 00       	call   38e2 <open>
    1f30:	83 c4 10             	add    $0x10,%esp
    1f33:	85 c0                	test   %eax,%eax
    1f35:	0f 89 35 02 00 00    	jns    2170 <subdir+0x480>
    1f3b:	83 ec 08             	sub    $0x8,%esp
    1f3e:	68 02 02 00 00       	push   $0x202
    1f43:	68 63 46 00 00       	push   $0x4663
    1f48:	e8 95 19 00 00       	call   38e2 <open>
    1f4d:	83 c4 10             	add    $0x10,%esp
    1f50:	85 c0                	test   %eax,%eax
    1f52:	0f 89 0f 03 00 00    	jns    2267 <subdir+0x577>
    1f58:	83 ec 08             	sub    $0x8,%esp
    1f5b:	68 00 02 00 00       	push   $0x200
    1f60:	68 f0 45 00 00       	push   $0x45f0
    1f65:	e8 78 19 00 00       	call   38e2 <open>
    1f6a:	83 c4 10             	add    $0x10,%esp
    1f6d:	85 c0                	test   %eax,%eax
    1f6f:	0f 89 df 02 00 00    	jns    2254 <subdir+0x564>
    1f75:	83 ec 08             	sub    $0x8,%esp
    1f78:	6a 02                	push   $0x2
    1f7a:	68 f0 45 00 00       	push   $0x45f0
    1f7f:	e8 5e 19 00 00       	call   38e2 <open>
    1f84:	83 c4 10             	add    $0x10,%esp
    1f87:	85 c0                	test   %eax,%eax
    1f89:	0f 89 b2 02 00 00    	jns    2241 <subdir+0x551>
    1f8f:	83 ec 08             	sub    $0x8,%esp
    1f92:	6a 01                	push   $0x1
    1f94:	68 f0 45 00 00       	push   $0x45f0
    1f99:	e8 44 19 00 00       	call   38e2 <open>
    1f9e:	83 c4 10             	add    $0x10,%esp
    1fa1:	85 c0                	test   %eax,%eax
    1fa3:	0f 89 85 02 00 00    	jns    222e <subdir+0x53e>
    1fa9:	83 ec 08             	sub    $0x8,%esp
    1fac:	68 d2 46 00 00       	push   $0x46d2
    1fb1:	68 3e 46 00 00       	push   $0x463e
    1fb6:	e8 47 19 00 00       	call   3902 <link>
    1fbb:	83 c4 10             	add    $0x10,%esp
    1fbe:	85 c0                	test   %eax,%eax
    1fc0:	0f 84 55 02 00 00    	je     221b <subdir+0x52b>
    1fc6:	83 ec 08             	sub    $0x8,%esp
    1fc9:	68 d2 46 00 00       	push   $0x46d2
    1fce:	68 63 46 00 00       	push   $0x4663
    1fd3:	e8 2a 19 00 00       	call   3902 <link>
    1fd8:	83 c4 10             	add    $0x10,%esp
    1fdb:	85 c0                	test   %eax,%eax
    1fdd:	0f 84 25 02 00 00    	je     2208 <subdir+0x518>
    1fe3:	83 ec 08             	sub    $0x8,%esp
    1fe6:	68 8a 45 00 00       	push   $0x458a
    1feb:	68 29 45 00 00       	push   $0x4529
    1ff0:	e8 0d 19 00 00       	call   3902 <link>
    1ff5:	83 c4 10             	add    $0x10,%esp
    1ff8:	85 c0                	test   %eax,%eax
    1ffa:	0f 84 a9 01 00 00    	je     21a9 <subdir+0x4b9>
    2000:	83 ec 0c             	sub    $0xc,%esp
    2003:	68 3e 46 00 00       	push   $0x463e
    2008:	e8 fd 18 00 00       	call   390a <mkdir>
    200d:	83 c4 10             	add    $0x10,%esp
    2010:	85 c0                	test   %eax,%eax
    2012:	0f 84 7e 01 00 00    	je     2196 <subdir+0x4a6>
    2018:	83 ec 0c             	sub    $0xc,%esp
    201b:	68 63 46 00 00       	push   $0x4663
    2020:	e8 e5 18 00 00       	call   390a <mkdir>
    2025:	83 c4 10             	add    $0x10,%esp
    2028:	85 c0                	test   %eax,%eax
    202a:	0f 84 67 03 00 00    	je     2397 <subdir+0x6a7>
    2030:	83 ec 0c             	sub    $0xc,%esp
    2033:	68 8a 45 00 00       	push   $0x458a
    2038:	e8 cd 18 00 00       	call   390a <mkdir>
    203d:	83 c4 10             	add    $0x10,%esp
    2040:	85 c0                	test   %eax,%eax
    2042:	0f 84 3c 03 00 00    	je     2384 <subdir+0x694>
    2048:	83 ec 0c             	sub    $0xc,%esp
    204b:	68 63 46 00 00       	push   $0x4663
    2050:	e8 9d 18 00 00       	call   38f2 <unlink>
    2055:	83 c4 10             	add    $0x10,%esp
    2058:	85 c0                	test   %eax,%eax
    205a:	0f 84 11 03 00 00    	je     2371 <subdir+0x681>
    2060:	83 ec 0c             	sub    $0xc,%esp
    2063:	68 3e 46 00 00       	push   $0x463e
    2068:	e8 85 18 00 00       	call   38f2 <unlink>
    206d:	83 c4 10             	add    $0x10,%esp
    2070:	85 c0                	test   %eax,%eax
    2072:	0f 84 e6 02 00 00    	je     235e <subdir+0x66e>
    2078:	83 ec 0c             	sub    $0xc,%esp
    207b:	68 29 45 00 00       	push   $0x4529
    2080:	e8 8d 18 00 00       	call   3912 <chdir>
    2085:	83 c4 10             	add    $0x10,%esp
    2088:	85 c0                	test   %eax,%eax
    208a:	0f 84 bb 02 00 00    	je     234b <subdir+0x65b>
    2090:	83 ec 0c             	sub    $0xc,%esp
    2093:	68 d5 46 00 00       	push   $0x46d5
    2098:	e8 75 18 00 00       	call   3912 <chdir>
    209d:	83 c4 10             	add    $0x10,%esp
    20a0:	85 c0                	test   %eax,%eax
    20a2:	0f 84 90 02 00 00    	je     2338 <subdir+0x648>
    20a8:	83 ec 0c             	sub    $0xc,%esp
    20ab:	68 8a 45 00 00       	push   $0x458a
    20b0:	e8 3d 18 00 00       	call   38f2 <unlink>
    20b5:	83 c4 10             	add    $0x10,%esp
    20b8:	85 c0                	test   %eax,%eax
    20ba:	0f 85 9d 00 00 00    	jne    215d <subdir+0x46d>
    20c0:	83 ec 0c             	sub    $0xc,%esp
    20c3:	68 29 45 00 00       	push   $0x4529
    20c8:	e8 25 18 00 00       	call   38f2 <unlink>
    20cd:	83 c4 10             	add    $0x10,%esp
    20d0:	85 c0                	test   %eax,%eax
    20d2:	0f 85 4d 02 00 00    	jne    2325 <subdir+0x635>
    20d8:	83 ec 0c             	sub    $0xc,%esp
    20db:	68 f0 45 00 00       	push   $0x45f0
    20e0:	e8 0d 18 00 00       	call   38f2 <unlink>
    20e5:	83 c4 10             	add    $0x10,%esp
    20e8:	85 c0                	test   %eax,%eax
    20ea:	0f 84 22 02 00 00    	je     2312 <subdir+0x622>
    20f0:	83 ec 0c             	sub    $0xc,%esp
    20f3:	68 05 45 00 00       	push   $0x4505
    20f8:	e8 f5 17 00 00       	call   38f2 <unlink>
    20fd:	83 c4 10             	add    $0x10,%esp
    2100:	85 c0                	test   %eax,%eax
    2102:	0f 88 f7 01 00 00    	js     22ff <subdir+0x60f>
    2108:	83 ec 0c             	sub    $0xc,%esp
    210b:	68 f0 45 00 00       	push   $0x45f0
    2110:	e8 dd 17 00 00       	call   38f2 <unlink>
    2115:	83 c4 10             	add    $0x10,%esp
    2118:	85 c0                	test   %eax,%eax
    211a:	0f 88 cc 01 00 00    	js     22ec <subdir+0x5fc>
    2120:	83 ec 08             	sub    $0x8,%esp
    2123:	68 d2 47 00 00       	push   $0x47d2
    2128:	6a 01                	push   $0x1
    212a:	e8 e1 18 00 00       	call   3a10 <printf>
    212f:	83 c4 10             	add    $0x10,%esp
    2132:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2135:	c9                   	leave  
    2136:	c3                   	ret    
    2137:	50                   	push   %eax
    2138:	50                   	push   %eax
    2139:	68 6f 45 00 00       	push   $0x456f
    213e:	6a 01                	push   $0x1
    2140:	e8 cb 18 00 00       	call   3a10 <printf>
    2145:	e8 58 17 00 00       	call   38a2 <exit>
    214a:	50                   	push   %eax
    214b:	50                   	push   %eax
    214c:	68 ca 45 00 00       	push   $0x45ca
    2151:	6a 01                	push   $0x1
    2153:	e8 b8 18 00 00       	call   3a10 <printf>
    2158:	e8 45 17 00 00       	call   38a2 <exit>
    215d:	52                   	push   %edx
    215e:	52                   	push   %edx
    215f:	68 95 45 00 00       	push   $0x4595
    2164:	6a 01                	push   $0x1
    2166:	e8 a5 18 00 00       	call   3a10 <printf>
    216b:	e8 32 17 00 00       	call   38a2 <exit>
    2170:	50                   	push   %eax
    2171:	50                   	push   %eax
    2172:	68 47 46 00 00       	push   $0x4647
    2177:	6a 01                	push   $0x1
    2179:	e8 92 18 00 00       	call   3a10 <printf>
    217e:	e8 1f 17 00 00       	call   38a2 <exit>
    2183:	52                   	push   %edx
    2184:	52                   	push   %edx
    2185:	68 2c 50 00 00       	push   $0x502c
    218a:	6a 01                	push   $0x1
    218c:	e8 7f 18 00 00       	call   3a10 <printf>
    2191:	e8 0c 17 00 00       	call   38a2 <exit>
    2196:	52                   	push   %edx
    2197:	52                   	push   %edx
    2198:	68 db 46 00 00       	push   $0x46db
    219d:	6a 01                	push   $0x1
    219f:	e8 6c 18 00 00       	call   3a10 <printf>
    21a4:	e8 f9 16 00 00       	call   38a2 <exit>
    21a9:	51                   	push   %ecx
    21aa:	51                   	push   %ecx
    21ab:	68 9c 50 00 00       	push   $0x509c
    21b0:	6a 01                	push   $0x1
    21b2:	e8 59 18 00 00       	call   3a10 <printf>
    21b7:	e8 e6 16 00 00       	call   38a2 <exit>
    21bc:	50                   	push   %eax
    21bd:	50                   	push   %eax
    21be:	68 56 45 00 00       	push   $0x4556
    21c3:	6a 01                	push   $0x1
    21c5:	e8 46 18 00 00       	call   3a10 <printf>
    21ca:	e8 d3 16 00 00       	call   38a2 <exit>
    21cf:	51                   	push   %ecx
    21d0:	51                   	push   %ecx
    21d1:	68 2f 45 00 00       	push   $0x452f
    21d6:	6a 01                	push   $0x1
    21d8:	e8 33 18 00 00       	call   3a10 <printf>
    21dd:	e8 c0 16 00 00       	call   38a2 <exit>
    21e2:	50                   	push   %eax
    21e3:	50                   	push   %eax
    21e4:	68 f8 45 00 00       	push   $0x45f8
    21e9:	6a 01                	push   $0x1
    21eb:	e8 20 18 00 00       	call   3a10 <printf>
    21f0:	e8 ad 16 00 00       	call   38a2 <exit>
    21f5:	51                   	push   %ecx
    21f6:	51                   	push   %ecx
    21f7:	68 e4 4f 00 00       	push   $0x4fe4
    21fc:	6a 01                	push   $0x1
    21fe:	e8 0d 18 00 00       	call   3a10 <printf>
    2203:	e8 9a 16 00 00       	call   38a2 <exit>
    2208:	53                   	push   %ebx
    2209:	53                   	push   %ebx
    220a:	68 78 50 00 00       	push   $0x5078
    220f:	6a 01                	push   $0x1
    2211:	e8 fa 17 00 00       	call   3a10 <printf>
    2216:	e8 87 16 00 00       	call   38a2 <exit>
    221b:	50                   	push   %eax
    221c:	50                   	push   %eax
    221d:	68 54 50 00 00       	push   $0x5054
    2222:	6a 01                	push   $0x1
    2224:	e8 e7 17 00 00       	call   3a10 <printf>
    2229:	e8 74 16 00 00       	call   38a2 <exit>
    222e:	50                   	push   %eax
    222f:	50                   	push   %eax
    2230:	68 b7 46 00 00       	push   $0x46b7
    2235:	6a 01                	push   $0x1
    2237:	e8 d4 17 00 00       	call   3a10 <printf>
    223c:	e8 61 16 00 00       	call   38a2 <exit>
    2241:	50                   	push   %eax
    2242:	50                   	push   %eax
    2243:	68 9e 46 00 00       	push   $0x469e
    2248:	6a 01                	push   $0x1
    224a:	e8 c1 17 00 00       	call   3a10 <printf>
    224f:	e8 4e 16 00 00       	call   38a2 <exit>
    2254:	50                   	push   %eax
    2255:	50                   	push   %eax
    2256:	68 88 46 00 00       	push   $0x4688
    225b:	6a 01                	push   $0x1
    225d:	e8 ae 17 00 00       	call   3a10 <printf>
    2262:	e8 3b 16 00 00       	call   38a2 <exit>
    2267:	50                   	push   %eax
    2268:	50                   	push   %eax
    2269:	68 6c 46 00 00       	push   $0x466c
    226e:	6a 01                	push   $0x1
    2270:	e8 9b 17 00 00       	call   3a10 <printf>
    2275:	e8 28 16 00 00       	call   38a2 <exit>
    227a:	50                   	push   %eax
    227b:	50                   	push   %eax
    227c:	68 ad 45 00 00       	push   $0x45ad
    2281:	6a 01                	push   $0x1
    2283:	e8 88 17 00 00       	call   3a10 <printf>
    2288:	e8 15 16 00 00       	call   38a2 <exit>
    228d:	50                   	push   %eax
    228e:	50                   	push   %eax
    228f:	68 08 50 00 00       	push   $0x5008
    2294:	6a 01                	push   $0x1
    2296:	e8 75 17 00 00       	call   3a10 <printf>
    229b:	e8 02 16 00 00       	call   38a2 <exit>
    22a0:	53                   	push   %ebx
    22a1:	53                   	push   %ebx
    22a2:	68 0b 45 00 00       	push   $0x450b
    22a7:	6a 01                	push   $0x1
    22a9:	e8 62 17 00 00       	call   3a10 <printf>
    22ae:	e8 ef 15 00 00       	call   38a2 <exit>
    22b3:	50                   	push   %eax
    22b4:	50                   	push   %eax
    22b5:	68 bc 4f 00 00       	push   $0x4fbc
    22ba:	6a 01                	push   $0x1
    22bc:	e8 4f 17 00 00       	call   3a10 <printf>
    22c1:	e8 dc 15 00 00       	call   38a2 <exit>
    22c6:	50                   	push   %eax
    22c7:	50                   	push   %eax
    22c8:	68 ef 44 00 00       	push   $0x44ef
    22cd:	6a 01                	push   $0x1
    22cf:	e8 3c 17 00 00       	call   3a10 <printf>
    22d4:	e8 c9 15 00 00       	call   38a2 <exit>
    22d9:	50                   	push   %eax
    22da:	50                   	push   %eax
    22db:	68 d7 44 00 00       	push   $0x44d7
    22e0:	6a 01                	push   $0x1
    22e2:	e8 29 17 00 00       	call   3a10 <printf>
    22e7:	e8 b6 15 00 00       	call   38a2 <exit>
    22ec:	50                   	push   %eax
    22ed:	50                   	push   %eax
    22ee:	68 c0 47 00 00       	push   $0x47c0
    22f3:	6a 01                	push   $0x1
    22f5:	e8 16 17 00 00       	call   3a10 <printf>
    22fa:	e8 a3 15 00 00       	call   38a2 <exit>
    22ff:	52                   	push   %edx
    2300:	52                   	push   %edx
    2301:	68 ab 47 00 00       	push   $0x47ab
    2306:	6a 01                	push   $0x1
    2308:	e8 03 17 00 00       	call   3a10 <printf>
    230d:	e8 90 15 00 00       	call   38a2 <exit>
    2312:	51                   	push   %ecx
    2313:	51                   	push   %ecx
    2314:	68 c0 50 00 00       	push   $0x50c0
    2319:	6a 01                	push   $0x1
    231b:	e8 f0 16 00 00       	call   3a10 <printf>
    2320:	e8 7d 15 00 00       	call   38a2 <exit>
    2325:	53                   	push   %ebx
    2326:	53                   	push   %ebx
    2327:	68 96 47 00 00       	push   $0x4796
    232c:	6a 01                	push   $0x1
    232e:	e8 dd 16 00 00       	call   3a10 <printf>
    2333:	e8 6a 15 00 00       	call   38a2 <exit>
    2338:	50                   	push   %eax
    2339:	50                   	push   %eax
    233a:	68 7e 47 00 00       	push   $0x477e
    233f:	6a 01                	push   $0x1
    2341:	e8 ca 16 00 00       	call   3a10 <printf>
    2346:	e8 57 15 00 00       	call   38a2 <exit>
    234b:	50                   	push   %eax
    234c:	50                   	push   %eax
    234d:	68 66 47 00 00       	push   $0x4766
    2352:	6a 01                	push   $0x1
    2354:	e8 b7 16 00 00       	call   3a10 <printf>
    2359:	e8 44 15 00 00       	call   38a2 <exit>
    235e:	50                   	push   %eax
    235f:	50                   	push   %eax
    2360:	68 4a 47 00 00       	push   $0x474a
    2365:	6a 01                	push   $0x1
    2367:	e8 a4 16 00 00       	call   3a10 <printf>
    236c:	e8 31 15 00 00       	call   38a2 <exit>
    2371:	50                   	push   %eax
    2372:	50                   	push   %eax
    2373:	68 2e 47 00 00       	push   $0x472e
    2378:	6a 01                	push   $0x1
    237a:	e8 91 16 00 00       	call   3a10 <printf>
    237f:	e8 1e 15 00 00       	call   38a2 <exit>
    2384:	50                   	push   %eax
    2385:	50                   	push   %eax
    2386:	68 11 47 00 00       	push   $0x4711
    238b:	6a 01                	push   $0x1
    238d:	e8 7e 16 00 00       	call   3a10 <printf>
    2392:	e8 0b 15 00 00       	call   38a2 <exit>
    2397:	50                   	push   %eax
    2398:	50                   	push   %eax
    2399:	68 f6 46 00 00       	push   $0x46f6
    239e:	6a 01                	push   $0x1
    23a0:	e8 6b 16 00 00       	call   3a10 <printf>
    23a5:	e8 f8 14 00 00       	call   38a2 <exit>
    23aa:	50                   	push   %eax
    23ab:	50                   	push   %eax
    23ac:	68 23 46 00 00       	push   $0x4623
    23b1:	6a 01                	push   $0x1
    23b3:	e8 58 16 00 00       	call   3a10 <printf>
    23b8:	e8 e5 14 00 00       	call   38a2 <exit>
    23bd:	50                   	push   %eax
    23be:	50                   	push   %eax
    23bf:	68 0b 46 00 00       	push   $0x460b
    23c4:	6a 01                	push   $0x1
    23c6:	e8 45 16 00 00       	call   3a10 <printf>
    23cb:	e8 d2 14 00 00       	call   38a2 <exit>

000023d0 <bigwrite>:
    23d0:	55                   	push   %ebp
    23d1:	89 e5                	mov    %esp,%ebp
    23d3:	56                   	push   %esi
    23d4:	53                   	push   %ebx
    23d5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
    23da:	83 ec 08             	sub    $0x8,%esp
    23dd:	68 dd 47 00 00       	push   $0x47dd
    23e2:	6a 01                	push   $0x1
    23e4:	e8 27 16 00 00       	call   3a10 <printf>
    23e9:	c7 04 24 ec 47 00 00 	movl   $0x47ec,(%esp)
    23f0:	e8 fd 14 00 00       	call   38f2 <unlink>
    23f5:	83 c4 10             	add    $0x10,%esp
    23f8:	90                   	nop
    23f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2400:	83 ec 08             	sub    $0x8,%esp
    2403:	68 02 02 00 00       	push   $0x202
    2408:	68 ec 47 00 00       	push   $0x47ec
    240d:	e8 d0 14 00 00       	call   38e2 <open>
    2412:	83 c4 10             	add    $0x10,%esp
    2415:	85 c0                	test   %eax,%eax
    2417:	89 c6                	mov    %eax,%esi
    2419:	78 7e                	js     2499 <bigwrite+0xc9>
    241b:	83 ec 04             	sub    $0x4,%esp
    241e:	53                   	push   %ebx
    241f:	68 00 86 00 00       	push   $0x8600
    2424:	50                   	push   %eax
    2425:	e8 98 14 00 00       	call   38c2 <write>
    242a:	83 c4 10             	add    $0x10,%esp
    242d:	39 c3                	cmp    %eax,%ebx
    242f:	75 55                	jne    2486 <bigwrite+0xb6>
    2431:	83 ec 04             	sub    $0x4,%esp
    2434:	53                   	push   %ebx
    2435:	68 00 86 00 00       	push   $0x8600
    243a:	56                   	push   %esi
    243b:	e8 82 14 00 00       	call   38c2 <write>
    2440:	83 c4 10             	add    $0x10,%esp
    2443:	39 c3                	cmp    %eax,%ebx
    2445:	75 3f                	jne    2486 <bigwrite+0xb6>
    2447:	83 ec 0c             	sub    $0xc,%esp
    244a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    2450:	56                   	push   %esi
    2451:	e8 74 14 00 00       	call   38ca <close>
    2456:	c7 04 24 ec 47 00 00 	movl   $0x47ec,(%esp)
    245d:	e8 90 14 00 00       	call   38f2 <unlink>
    2462:	83 c4 10             	add    $0x10,%esp
    2465:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    246b:	75 93                	jne    2400 <bigwrite+0x30>
    246d:	83 ec 08             	sub    $0x8,%esp
    2470:	68 1f 48 00 00       	push   $0x481f
    2475:	6a 01                	push   $0x1
    2477:	e8 94 15 00 00       	call   3a10 <printf>
    247c:	83 c4 10             	add    $0x10,%esp
    247f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2482:	5b                   	pop    %ebx
    2483:	5e                   	pop    %esi
    2484:	5d                   	pop    %ebp
    2485:	c3                   	ret    
    2486:	50                   	push   %eax
    2487:	53                   	push   %ebx
    2488:	68 0d 48 00 00       	push   $0x480d
    248d:	6a 01                	push   $0x1
    248f:	e8 7c 15 00 00       	call   3a10 <printf>
    2494:	e8 09 14 00 00       	call   38a2 <exit>
    2499:	83 ec 08             	sub    $0x8,%esp
    249c:	68 f5 47 00 00       	push   $0x47f5
    24a1:	6a 01                	push   $0x1
    24a3:	e8 68 15 00 00       	call   3a10 <printf>
    24a8:	e8 f5 13 00 00       	call   38a2 <exit>
    24ad:	8d 76 00             	lea    0x0(%esi),%esi

000024b0 <bigfile>:
    24b0:	55                   	push   %ebp
    24b1:	89 e5                	mov    %esp,%ebp
    24b3:	57                   	push   %edi
    24b4:	56                   	push   %esi
    24b5:	53                   	push   %ebx
    24b6:	83 ec 14             	sub    $0x14,%esp
    24b9:	68 2c 48 00 00       	push   $0x482c
    24be:	6a 01                	push   $0x1
    24c0:	e8 4b 15 00 00       	call   3a10 <printf>
    24c5:	c7 04 24 48 48 00 00 	movl   $0x4848,(%esp)
    24cc:	e8 21 14 00 00       	call   38f2 <unlink>
    24d1:	5e                   	pop    %esi
    24d2:	5f                   	pop    %edi
    24d3:	68 02 02 00 00       	push   $0x202
    24d8:	68 48 48 00 00       	push   $0x4848
    24dd:	e8 00 14 00 00       	call   38e2 <open>
    24e2:	83 c4 10             	add    $0x10,%esp
    24e5:	85 c0                	test   %eax,%eax
    24e7:	0f 88 5f 01 00 00    	js     264c <bigfile+0x19c>
    24ed:	89 c6                	mov    %eax,%esi
    24ef:	31 db                	xor    %ebx,%ebx
    24f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    24f8:	83 ec 04             	sub    $0x4,%esp
    24fb:	68 58 02 00 00       	push   $0x258
    2500:	53                   	push   %ebx
    2501:	68 00 86 00 00       	push   $0x8600
    2506:	e8 05 12 00 00       	call   3710 <memset>
    250b:	83 c4 0c             	add    $0xc,%esp
    250e:	68 58 02 00 00       	push   $0x258
    2513:	68 00 86 00 00       	push   $0x8600
    2518:	56                   	push   %esi
    2519:	e8 a4 13 00 00       	call   38c2 <write>
    251e:	83 c4 10             	add    $0x10,%esp
    2521:	3d 58 02 00 00       	cmp    $0x258,%eax
    2526:	0f 85 f8 00 00 00    	jne    2624 <bigfile+0x174>
    252c:	83 c3 01             	add    $0x1,%ebx
    252f:	83 fb 14             	cmp    $0x14,%ebx
    2532:	75 c4                	jne    24f8 <bigfile+0x48>
    2534:	83 ec 0c             	sub    $0xc,%esp
    2537:	56                   	push   %esi
    2538:	e8 8d 13 00 00       	call   38ca <close>
    253d:	59                   	pop    %ecx
    253e:	5b                   	pop    %ebx
    253f:	6a 00                	push   $0x0
    2541:	68 48 48 00 00       	push   $0x4848
    2546:	e8 97 13 00 00       	call   38e2 <open>
    254b:	83 c4 10             	add    $0x10,%esp
    254e:	85 c0                	test   %eax,%eax
    2550:	89 c6                	mov    %eax,%esi
    2552:	0f 88 e0 00 00 00    	js     2638 <bigfile+0x188>
    2558:	31 db                	xor    %ebx,%ebx
    255a:	31 ff                	xor    %edi,%edi
    255c:	eb 30                	jmp    258e <bigfile+0xde>
    255e:	66 90                	xchg   %ax,%ax
    2560:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2565:	0f 85 91 00 00 00    	jne    25fc <bigfile+0x14c>
    256b:	0f be 05 00 86 00 00 	movsbl 0x8600,%eax
    2572:	89 fa                	mov    %edi,%edx
    2574:	d1 fa                	sar    %edx
    2576:	39 d0                	cmp    %edx,%eax
    2578:	75 6e                	jne    25e8 <bigfile+0x138>
    257a:	0f be 15 2b 87 00 00 	movsbl 0x872b,%edx
    2581:	39 d0                	cmp    %edx,%eax
    2583:	75 63                	jne    25e8 <bigfile+0x138>
    2585:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
    258b:	83 c7 01             	add    $0x1,%edi
    258e:	83 ec 04             	sub    $0x4,%esp
    2591:	68 2c 01 00 00       	push   $0x12c
    2596:	68 00 86 00 00       	push   $0x8600
    259b:	56                   	push   %esi
    259c:	e8 19 13 00 00       	call   38ba <read>
    25a1:	83 c4 10             	add    $0x10,%esp
    25a4:	85 c0                	test   %eax,%eax
    25a6:	78 68                	js     2610 <bigfile+0x160>
    25a8:	75 b6                	jne    2560 <bigfile+0xb0>
    25aa:	83 ec 0c             	sub    $0xc,%esp
    25ad:	56                   	push   %esi
    25ae:	e8 17 13 00 00       	call   38ca <close>
    25b3:	83 c4 10             	add    $0x10,%esp
    25b6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25bc:	0f 85 9e 00 00 00    	jne    2660 <bigfile+0x1b0>
    25c2:	83 ec 0c             	sub    $0xc,%esp
    25c5:	68 48 48 00 00       	push   $0x4848
    25ca:	e8 23 13 00 00       	call   38f2 <unlink>
    25cf:	58                   	pop    %eax
    25d0:	5a                   	pop    %edx
    25d1:	68 d7 48 00 00       	push   $0x48d7
    25d6:	6a 01                	push   $0x1
    25d8:	e8 33 14 00 00       	call   3a10 <printf>
    25dd:	83 c4 10             	add    $0x10,%esp
    25e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    25e3:	5b                   	pop    %ebx
    25e4:	5e                   	pop    %esi
    25e5:	5f                   	pop    %edi
    25e6:	5d                   	pop    %ebp
    25e7:	c3                   	ret    
    25e8:	83 ec 08             	sub    $0x8,%esp
    25eb:	68 a4 48 00 00       	push   $0x48a4
    25f0:	6a 01                	push   $0x1
    25f2:	e8 19 14 00 00       	call   3a10 <printf>
    25f7:	e8 a6 12 00 00       	call   38a2 <exit>
    25fc:	83 ec 08             	sub    $0x8,%esp
    25ff:	68 90 48 00 00       	push   $0x4890
    2604:	6a 01                	push   $0x1
    2606:	e8 05 14 00 00       	call   3a10 <printf>
    260b:	e8 92 12 00 00       	call   38a2 <exit>
    2610:	83 ec 08             	sub    $0x8,%esp
    2613:	68 7b 48 00 00       	push   $0x487b
    2618:	6a 01                	push   $0x1
    261a:	e8 f1 13 00 00       	call   3a10 <printf>
    261f:	e8 7e 12 00 00       	call   38a2 <exit>
    2624:	83 ec 08             	sub    $0x8,%esp
    2627:	68 50 48 00 00       	push   $0x4850
    262c:	6a 01                	push   $0x1
    262e:	e8 dd 13 00 00       	call   3a10 <printf>
    2633:	e8 6a 12 00 00       	call   38a2 <exit>
    2638:	83 ec 08             	sub    $0x8,%esp
    263b:	68 66 48 00 00       	push   $0x4866
    2640:	6a 01                	push   $0x1
    2642:	e8 c9 13 00 00       	call   3a10 <printf>
    2647:	e8 56 12 00 00       	call   38a2 <exit>
    264c:	83 ec 08             	sub    $0x8,%esp
    264f:	68 3a 48 00 00       	push   $0x483a
    2654:	6a 01                	push   $0x1
    2656:	e8 b5 13 00 00       	call   3a10 <printf>
    265b:	e8 42 12 00 00       	call   38a2 <exit>
    2660:	83 ec 08             	sub    $0x8,%esp
    2663:	68 bd 48 00 00       	push   $0x48bd
    2668:	6a 01                	push   $0x1
    266a:	e8 a1 13 00 00       	call   3a10 <printf>
    266f:	e8 2e 12 00 00       	call   38a2 <exit>
    2674:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    267a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00002680 <fourteen>:
    2680:	55                   	push   %ebp
    2681:	89 e5                	mov    %esp,%ebp
    2683:	83 ec 10             	sub    $0x10,%esp
    2686:	68 e8 48 00 00       	push   $0x48e8
    268b:	6a 01                	push   $0x1
    268d:	e8 7e 13 00 00       	call   3a10 <printf>
    2692:	c7 04 24 23 49 00 00 	movl   $0x4923,(%esp)
    2699:	e8 6c 12 00 00       	call   390a <mkdir>
    269e:	83 c4 10             	add    $0x10,%esp
    26a1:	85 c0                	test   %eax,%eax
    26a3:	0f 85 97 00 00 00    	jne    2740 <fourteen+0xc0>
    26a9:	83 ec 0c             	sub    $0xc,%esp
    26ac:	68 e0 50 00 00       	push   $0x50e0
    26b1:	e8 54 12 00 00       	call   390a <mkdir>
    26b6:	83 c4 10             	add    $0x10,%esp
    26b9:	85 c0                	test   %eax,%eax
    26bb:	0f 85 de 00 00 00    	jne    279f <fourteen+0x11f>
    26c1:	83 ec 08             	sub    $0x8,%esp
    26c4:	68 00 02 00 00       	push   $0x200
    26c9:	68 30 51 00 00       	push   $0x5130
    26ce:	e8 0f 12 00 00       	call   38e2 <open>
    26d3:	83 c4 10             	add    $0x10,%esp
    26d6:	85 c0                	test   %eax,%eax
    26d8:	0f 88 ae 00 00 00    	js     278c <fourteen+0x10c>
    26de:	83 ec 0c             	sub    $0xc,%esp
    26e1:	50                   	push   %eax
    26e2:	e8 e3 11 00 00       	call   38ca <close>
    26e7:	58                   	pop    %eax
    26e8:	5a                   	pop    %edx
    26e9:	6a 00                	push   $0x0
    26eb:	68 a0 51 00 00       	push   $0x51a0
    26f0:	e8 ed 11 00 00       	call   38e2 <open>
    26f5:	83 c4 10             	add    $0x10,%esp
    26f8:	85 c0                	test   %eax,%eax
    26fa:	78 7d                	js     2779 <fourteen+0xf9>
    26fc:	83 ec 0c             	sub    $0xc,%esp
    26ff:	50                   	push   %eax
    2700:	e8 c5 11 00 00       	call   38ca <close>
    2705:	c7 04 24 14 49 00 00 	movl   $0x4914,(%esp)
    270c:	e8 f9 11 00 00       	call   390a <mkdir>
    2711:	83 c4 10             	add    $0x10,%esp
    2714:	85 c0                	test   %eax,%eax
    2716:	74 4e                	je     2766 <fourteen+0xe6>
    2718:	83 ec 0c             	sub    $0xc,%esp
    271b:	68 3c 52 00 00       	push   $0x523c
    2720:	e8 e5 11 00 00       	call   390a <mkdir>
    2725:	83 c4 10             	add    $0x10,%esp
    2728:	85 c0                	test   %eax,%eax
    272a:	74 27                	je     2753 <fourteen+0xd3>
    272c:	83 ec 08             	sub    $0x8,%esp
    272f:	68 32 49 00 00       	push   $0x4932
    2734:	6a 01                	push   $0x1
    2736:	e8 d5 12 00 00       	call   3a10 <printf>
    273b:	83 c4 10             	add    $0x10,%esp
    273e:	c9                   	leave  
    273f:	c3                   	ret    
    2740:	50                   	push   %eax
    2741:	50                   	push   %eax
    2742:	68 f7 48 00 00       	push   $0x48f7
    2747:	6a 01                	push   $0x1
    2749:	e8 c2 12 00 00       	call   3a10 <printf>
    274e:	e8 4f 11 00 00       	call   38a2 <exit>
    2753:	50                   	push   %eax
    2754:	50                   	push   %eax
    2755:	68 5c 52 00 00       	push   $0x525c
    275a:	6a 01                	push   $0x1
    275c:	e8 af 12 00 00       	call   3a10 <printf>
    2761:	e8 3c 11 00 00       	call   38a2 <exit>
    2766:	52                   	push   %edx
    2767:	52                   	push   %edx
    2768:	68 0c 52 00 00       	push   $0x520c
    276d:	6a 01                	push   $0x1
    276f:	e8 9c 12 00 00       	call   3a10 <printf>
    2774:	e8 29 11 00 00       	call   38a2 <exit>
    2779:	51                   	push   %ecx
    277a:	51                   	push   %ecx
    277b:	68 d0 51 00 00       	push   $0x51d0
    2780:	6a 01                	push   $0x1
    2782:	e8 89 12 00 00       	call   3a10 <printf>
    2787:	e8 16 11 00 00       	call   38a2 <exit>
    278c:	51                   	push   %ecx
    278d:	51                   	push   %ecx
    278e:	68 60 51 00 00       	push   $0x5160
    2793:	6a 01                	push   $0x1
    2795:	e8 76 12 00 00       	call   3a10 <printf>
    279a:	e8 03 11 00 00       	call   38a2 <exit>
    279f:	50                   	push   %eax
    27a0:	50                   	push   %eax
    27a1:	68 00 51 00 00       	push   $0x5100
    27a6:	6a 01                	push   $0x1
    27a8:	e8 63 12 00 00       	call   3a10 <printf>
    27ad:	e8 f0 10 00 00       	call   38a2 <exit>
    27b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    27b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000027c0 <rmdot>:
    27c0:	55                   	push   %ebp
    27c1:	89 e5                	mov    %esp,%ebp
    27c3:	83 ec 10             	sub    $0x10,%esp
    27c6:	68 3f 49 00 00       	push   $0x493f
    27cb:	6a 01                	push   $0x1
    27cd:	e8 3e 12 00 00       	call   3a10 <printf>
    27d2:	c7 04 24 4b 49 00 00 	movl   $0x494b,(%esp)
    27d9:	e8 2c 11 00 00       	call   390a <mkdir>
    27de:	83 c4 10             	add    $0x10,%esp
    27e1:	85 c0                	test   %eax,%eax
    27e3:	0f 85 b0 00 00 00    	jne    2899 <rmdot+0xd9>
    27e9:	83 ec 0c             	sub    $0xc,%esp
    27ec:	68 4b 49 00 00       	push   $0x494b
    27f1:	e8 1c 11 00 00       	call   3912 <chdir>
    27f6:	83 c4 10             	add    $0x10,%esp
    27f9:	85 c0                	test   %eax,%eax
    27fb:	0f 85 1d 01 00 00    	jne    291e <rmdot+0x15e>
    2801:	83 ec 0c             	sub    $0xc,%esp
    2804:	68 f6 45 00 00       	push   $0x45f6
    2809:	e8 e4 10 00 00       	call   38f2 <unlink>
    280e:	83 c4 10             	add    $0x10,%esp
    2811:	85 c0                	test   %eax,%eax
    2813:	0f 84 f2 00 00 00    	je     290b <rmdot+0x14b>
    2819:	83 ec 0c             	sub    $0xc,%esp
    281c:	68 f5 45 00 00       	push   $0x45f5
    2821:	e8 cc 10 00 00       	call   38f2 <unlink>
    2826:	83 c4 10             	add    $0x10,%esp
    2829:	85 c0                	test   %eax,%eax
    282b:	0f 84 c7 00 00 00    	je     28f8 <rmdot+0x138>
    2831:	83 ec 0c             	sub    $0xc,%esp
    2834:	68 c9 3d 00 00       	push   $0x3dc9
    2839:	e8 d4 10 00 00       	call   3912 <chdir>
    283e:	83 c4 10             	add    $0x10,%esp
    2841:	85 c0                	test   %eax,%eax
    2843:	0f 85 9c 00 00 00    	jne    28e5 <rmdot+0x125>
    2849:	83 ec 0c             	sub    $0xc,%esp
    284c:	68 93 49 00 00       	push   $0x4993
    2851:	e8 9c 10 00 00       	call   38f2 <unlink>
    2856:	83 c4 10             	add    $0x10,%esp
    2859:	85 c0                	test   %eax,%eax
    285b:	74 75                	je     28d2 <rmdot+0x112>
    285d:	83 ec 0c             	sub    $0xc,%esp
    2860:	68 b1 49 00 00       	push   $0x49b1
    2865:	e8 88 10 00 00       	call   38f2 <unlink>
    286a:	83 c4 10             	add    $0x10,%esp
    286d:	85 c0                	test   %eax,%eax
    286f:	74 4e                	je     28bf <rmdot+0xff>
    2871:	83 ec 0c             	sub    $0xc,%esp
    2874:	68 4b 49 00 00       	push   $0x494b
    2879:	e8 74 10 00 00       	call   38f2 <unlink>
    287e:	83 c4 10             	add    $0x10,%esp
    2881:	85 c0                	test   %eax,%eax
    2883:	75 27                	jne    28ac <rmdot+0xec>
    2885:	83 ec 08             	sub    $0x8,%esp
    2888:	68 e6 49 00 00       	push   $0x49e6
    288d:	6a 01                	push   $0x1
    288f:	e8 7c 11 00 00       	call   3a10 <printf>
    2894:	83 c4 10             	add    $0x10,%esp
    2897:	c9                   	leave  
    2898:	c3                   	ret    
    2899:	50                   	push   %eax
    289a:	50                   	push   %eax
    289b:	68 50 49 00 00       	push   $0x4950
    28a0:	6a 01                	push   $0x1
    28a2:	e8 69 11 00 00       	call   3a10 <printf>
    28a7:	e8 f6 0f 00 00       	call   38a2 <exit>
    28ac:	50                   	push   %eax
    28ad:	50                   	push   %eax
    28ae:	68 d1 49 00 00       	push   $0x49d1
    28b3:	6a 01                	push   $0x1
    28b5:	e8 56 11 00 00       	call   3a10 <printf>
    28ba:	e8 e3 0f 00 00       	call   38a2 <exit>
    28bf:	52                   	push   %edx
    28c0:	52                   	push   %edx
    28c1:	68 b9 49 00 00       	push   $0x49b9
    28c6:	6a 01                	push   $0x1
    28c8:	e8 43 11 00 00       	call   3a10 <printf>
    28cd:	e8 d0 0f 00 00       	call   38a2 <exit>
    28d2:	51                   	push   %ecx
    28d3:	51                   	push   %ecx
    28d4:	68 9a 49 00 00       	push   $0x499a
    28d9:	6a 01                	push   $0x1
    28db:	e8 30 11 00 00       	call   3a10 <printf>
    28e0:	e8 bd 0f 00 00       	call   38a2 <exit>
    28e5:	50                   	push   %eax
    28e6:	50                   	push   %eax
    28e7:	68 cb 3d 00 00       	push   $0x3dcb
    28ec:	6a 01                	push   $0x1
    28ee:	e8 1d 11 00 00       	call   3a10 <printf>
    28f3:	e8 aa 0f 00 00       	call   38a2 <exit>
    28f8:	50                   	push   %eax
    28f9:	50                   	push   %eax
    28fa:	68 84 49 00 00       	push   $0x4984
    28ff:	6a 01                	push   $0x1
    2901:	e8 0a 11 00 00       	call   3a10 <printf>
    2906:	e8 97 0f 00 00       	call   38a2 <exit>
    290b:	50                   	push   %eax
    290c:	50                   	push   %eax
    290d:	68 76 49 00 00       	push   $0x4976
    2912:	6a 01                	push   $0x1
    2914:	e8 f7 10 00 00       	call   3a10 <printf>
    2919:	e8 84 0f 00 00       	call   38a2 <exit>
    291e:	50                   	push   %eax
    291f:	50                   	push   %eax
    2920:	68 63 49 00 00       	push   $0x4963
    2925:	6a 01                	push   $0x1
    2927:	e8 e4 10 00 00       	call   3a10 <printf>
    292c:	e8 71 0f 00 00       	call   38a2 <exit>
    2931:	eb 0d                	jmp    2940 <dirfile>
    2933:	90                   	nop
    2934:	90                   	nop
    2935:	90                   	nop
    2936:	90                   	nop
    2937:	90                   	nop
    2938:	90                   	nop
    2939:	90                   	nop
    293a:	90                   	nop
    293b:	90                   	nop
    293c:	90                   	nop
    293d:	90                   	nop
    293e:	90                   	nop
    293f:	90                   	nop

00002940 <dirfile>:
    2940:	55                   	push   %ebp
    2941:	89 e5                	mov    %esp,%ebp
    2943:	53                   	push   %ebx
    2944:	83 ec 0c             	sub    $0xc,%esp
    2947:	68 f0 49 00 00       	push   $0x49f0
    294c:	6a 01                	push   $0x1
    294e:	e8 bd 10 00 00       	call   3a10 <printf>
    2953:	59                   	pop    %ecx
    2954:	5b                   	pop    %ebx
    2955:	68 00 02 00 00       	push   $0x200
    295a:	68 fd 49 00 00       	push   $0x49fd
    295f:	e8 7e 0f 00 00       	call   38e2 <open>
    2964:	83 c4 10             	add    $0x10,%esp
    2967:	85 c0                	test   %eax,%eax
    2969:	0f 88 43 01 00 00    	js     2ab2 <dirfile+0x172>
    296f:	83 ec 0c             	sub    $0xc,%esp
    2972:	50                   	push   %eax
    2973:	e8 52 0f 00 00       	call   38ca <close>
    2978:	c7 04 24 fd 49 00 00 	movl   $0x49fd,(%esp)
    297f:	e8 8e 0f 00 00       	call   3912 <chdir>
    2984:	83 c4 10             	add    $0x10,%esp
    2987:	85 c0                	test   %eax,%eax
    2989:	0f 84 10 01 00 00    	je     2a9f <dirfile+0x15f>
    298f:	83 ec 08             	sub    $0x8,%esp
    2992:	6a 00                	push   $0x0
    2994:	68 36 4a 00 00       	push   $0x4a36
    2999:	e8 44 0f 00 00       	call   38e2 <open>
    299e:	83 c4 10             	add    $0x10,%esp
    29a1:	85 c0                	test   %eax,%eax
    29a3:	0f 89 e3 00 00 00    	jns    2a8c <dirfile+0x14c>
    29a9:	83 ec 08             	sub    $0x8,%esp
    29ac:	68 00 02 00 00       	push   $0x200
    29b1:	68 36 4a 00 00       	push   $0x4a36
    29b6:	e8 27 0f 00 00       	call   38e2 <open>
    29bb:	83 c4 10             	add    $0x10,%esp
    29be:	85 c0                	test   %eax,%eax
    29c0:	0f 89 c6 00 00 00    	jns    2a8c <dirfile+0x14c>
    29c6:	83 ec 0c             	sub    $0xc,%esp
    29c9:	68 36 4a 00 00       	push   $0x4a36
    29ce:	e8 37 0f 00 00       	call   390a <mkdir>
    29d3:	83 c4 10             	add    $0x10,%esp
    29d6:	85 c0                	test   %eax,%eax
    29d8:	0f 84 46 01 00 00    	je     2b24 <dirfile+0x1e4>
    29de:	83 ec 0c             	sub    $0xc,%esp
    29e1:	68 36 4a 00 00       	push   $0x4a36
    29e6:	e8 07 0f 00 00       	call   38f2 <unlink>
    29eb:	83 c4 10             	add    $0x10,%esp
    29ee:	85 c0                	test   %eax,%eax
    29f0:	0f 84 1b 01 00 00    	je     2b11 <dirfile+0x1d1>
    29f6:	83 ec 08             	sub    $0x8,%esp
    29f9:	68 36 4a 00 00       	push   $0x4a36
    29fe:	68 9a 4a 00 00       	push   $0x4a9a
    2a03:	e8 fa 0e 00 00       	call   3902 <link>
    2a08:	83 c4 10             	add    $0x10,%esp
    2a0b:	85 c0                	test   %eax,%eax
    2a0d:	0f 84 eb 00 00 00    	je     2afe <dirfile+0x1be>
    2a13:	83 ec 0c             	sub    $0xc,%esp
    2a16:	68 fd 49 00 00       	push   $0x49fd
    2a1b:	e8 d2 0e 00 00       	call   38f2 <unlink>
    2a20:	83 c4 10             	add    $0x10,%esp
    2a23:	85 c0                	test   %eax,%eax
    2a25:	0f 85 c0 00 00 00    	jne    2aeb <dirfile+0x1ab>
    2a2b:	83 ec 08             	sub    $0x8,%esp
    2a2e:	6a 02                	push   $0x2
    2a30:	68 f6 45 00 00       	push   $0x45f6
    2a35:	e8 a8 0e 00 00       	call   38e2 <open>
    2a3a:	83 c4 10             	add    $0x10,%esp
    2a3d:	85 c0                	test   %eax,%eax
    2a3f:	0f 89 93 00 00 00    	jns    2ad8 <dirfile+0x198>
    2a45:	83 ec 08             	sub    $0x8,%esp
    2a48:	6a 00                	push   $0x0
    2a4a:	68 f6 45 00 00       	push   $0x45f6
    2a4f:	e8 8e 0e 00 00       	call   38e2 <open>
    2a54:	83 c4 0c             	add    $0xc,%esp
    2a57:	89 c3                	mov    %eax,%ebx
    2a59:	6a 01                	push   $0x1
    2a5b:	68 d9 46 00 00       	push   $0x46d9
    2a60:	50                   	push   %eax
    2a61:	e8 5c 0e 00 00       	call   38c2 <write>
    2a66:	83 c4 10             	add    $0x10,%esp
    2a69:	85 c0                	test   %eax,%eax
    2a6b:	7f 58                	jg     2ac5 <dirfile+0x185>
    2a6d:	83 ec 0c             	sub    $0xc,%esp
    2a70:	53                   	push   %ebx
    2a71:	e8 54 0e 00 00       	call   38ca <close>
    2a76:	58                   	pop    %eax
    2a77:	5a                   	pop    %edx
    2a78:	68 cd 4a 00 00       	push   $0x4acd
    2a7d:	6a 01                	push   $0x1
    2a7f:	e8 8c 0f 00 00       	call   3a10 <printf>
    2a84:	83 c4 10             	add    $0x10,%esp
    2a87:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2a8a:	c9                   	leave  
    2a8b:	c3                   	ret    
    2a8c:	50                   	push   %eax
    2a8d:	50                   	push   %eax
    2a8e:	68 41 4a 00 00       	push   $0x4a41
    2a93:	6a 01                	push   $0x1
    2a95:	e8 76 0f 00 00       	call   3a10 <printf>
    2a9a:	e8 03 0e 00 00       	call   38a2 <exit>
    2a9f:	50                   	push   %eax
    2aa0:	50                   	push   %eax
    2aa1:	68 1c 4a 00 00       	push   $0x4a1c
    2aa6:	6a 01                	push   $0x1
    2aa8:	e8 63 0f 00 00       	call   3a10 <printf>
    2aad:	e8 f0 0d 00 00       	call   38a2 <exit>
    2ab2:	52                   	push   %edx
    2ab3:	52                   	push   %edx
    2ab4:	68 05 4a 00 00       	push   $0x4a05
    2ab9:	6a 01                	push   $0x1
    2abb:	e8 50 0f 00 00       	call   3a10 <printf>
    2ac0:	e8 dd 0d 00 00       	call   38a2 <exit>
    2ac5:	51                   	push   %ecx
    2ac6:	51                   	push   %ecx
    2ac7:	68 b9 4a 00 00       	push   $0x4ab9
    2acc:	6a 01                	push   $0x1
    2ace:	e8 3d 0f 00 00       	call   3a10 <printf>
    2ad3:	e8 ca 0d 00 00       	call   38a2 <exit>
    2ad8:	53                   	push   %ebx
    2ad9:	53                   	push   %ebx
    2ada:	68 b0 52 00 00       	push   $0x52b0
    2adf:	6a 01                	push   $0x1
    2ae1:	e8 2a 0f 00 00       	call   3a10 <printf>
    2ae6:	e8 b7 0d 00 00       	call   38a2 <exit>
    2aeb:	50                   	push   %eax
    2aec:	50                   	push   %eax
    2aed:	68 a1 4a 00 00       	push   $0x4aa1
    2af2:	6a 01                	push   $0x1
    2af4:	e8 17 0f 00 00       	call   3a10 <printf>
    2af9:	e8 a4 0d 00 00       	call   38a2 <exit>
    2afe:	50                   	push   %eax
    2aff:	50                   	push   %eax
    2b00:	68 90 52 00 00       	push   $0x5290
    2b05:	6a 01                	push   $0x1
    2b07:	e8 04 0f 00 00       	call   3a10 <printf>
    2b0c:	e8 91 0d 00 00       	call   38a2 <exit>
    2b11:	50                   	push   %eax
    2b12:	50                   	push   %eax
    2b13:	68 7c 4a 00 00       	push   $0x4a7c
    2b18:	6a 01                	push   $0x1
    2b1a:	e8 f1 0e 00 00       	call   3a10 <printf>
    2b1f:	e8 7e 0d 00 00       	call   38a2 <exit>
    2b24:	50                   	push   %eax
    2b25:	50                   	push   %eax
    2b26:	68 5f 4a 00 00       	push   $0x4a5f
    2b2b:	6a 01                	push   $0x1
    2b2d:	e8 de 0e 00 00       	call   3a10 <printf>
    2b32:	e8 6b 0d 00 00       	call   38a2 <exit>
    2b37:	89 f6                	mov    %esi,%esi
    2b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002b40 <iref>:
    2b40:	55                   	push   %ebp
    2b41:	89 e5                	mov    %esp,%ebp
    2b43:	53                   	push   %ebx
    2b44:	bb 33 00 00 00       	mov    $0x33,%ebx
    2b49:	83 ec 0c             	sub    $0xc,%esp
    2b4c:	68 dd 4a 00 00       	push   $0x4add
    2b51:	6a 01                	push   $0x1
    2b53:	e8 b8 0e 00 00       	call   3a10 <printf>
    2b58:	83 c4 10             	add    $0x10,%esp
    2b5b:	90                   	nop
    2b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2b60:	83 ec 0c             	sub    $0xc,%esp
    2b63:	68 ee 4a 00 00       	push   $0x4aee
    2b68:	e8 9d 0d 00 00       	call   390a <mkdir>
    2b6d:	83 c4 10             	add    $0x10,%esp
    2b70:	85 c0                	test   %eax,%eax
    2b72:	0f 85 bb 00 00 00    	jne    2c33 <iref+0xf3>
    2b78:	83 ec 0c             	sub    $0xc,%esp
    2b7b:	68 ee 4a 00 00       	push   $0x4aee
    2b80:	e8 8d 0d 00 00       	call   3912 <chdir>
    2b85:	83 c4 10             	add    $0x10,%esp
    2b88:	85 c0                	test   %eax,%eax
    2b8a:	0f 85 b7 00 00 00    	jne    2c47 <iref+0x107>
    2b90:	83 ec 0c             	sub    $0xc,%esp
    2b93:	68 a3 41 00 00       	push   $0x41a3
    2b98:	e8 6d 0d 00 00       	call   390a <mkdir>
    2b9d:	59                   	pop    %ecx
    2b9e:	58                   	pop    %eax
    2b9f:	68 a3 41 00 00       	push   $0x41a3
    2ba4:	68 9a 4a 00 00       	push   $0x4a9a
    2ba9:	e8 54 0d 00 00       	call   3902 <link>
    2bae:	58                   	pop    %eax
    2baf:	5a                   	pop    %edx
    2bb0:	68 00 02 00 00       	push   $0x200
    2bb5:	68 a3 41 00 00       	push   $0x41a3
    2bba:	e8 23 0d 00 00       	call   38e2 <open>
    2bbf:	83 c4 10             	add    $0x10,%esp
    2bc2:	85 c0                	test   %eax,%eax
    2bc4:	78 0c                	js     2bd2 <iref+0x92>
    2bc6:	83 ec 0c             	sub    $0xc,%esp
    2bc9:	50                   	push   %eax
    2bca:	e8 fb 0c 00 00       	call   38ca <close>
    2bcf:	83 c4 10             	add    $0x10,%esp
    2bd2:	83 ec 08             	sub    $0x8,%esp
    2bd5:	68 00 02 00 00       	push   $0x200
    2bda:	68 d8 46 00 00       	push   $0x46d8
    2bdf:	e8 fe 0c 00 00       	call   38e2 <open>
    2be4:	83 c4 10             	add    $0x10,%esp
    2be7:	85 c0                	test   %eax,%eax
    2be9:	78 0c                	js     2bf7 <iref+0xb7>
    2beb:	83 ec 0c             	sub    $0xc,%esp
    2bee:	50                   	push   %eax
    2bef:	e8 d6 0c 00 00       	call   38ca <close>
    2bf4:	83 c4 10             	add    $0x10,%esp
    2bf7:	83 ec 0c             	sub    $0xc,%esp
    2bfa:	68 d8 46 00 00       	push   $0x46d8
    2bff:	e8 ee 0c 00 00       	call   38f2 <unlink>
    2c04:	83 c4 10             	add    $0x10,%esp
    2c07:	83 eb 01             	sub    $0x1,%ebx
    2c0a:	0f 85 50 ff ff ff    	jne    2b60 <iref+0x20>
    2c10:	83 ec 0c             	sub    $0xc,%esp
    2c13:	68 c9 3d 00 00       	push   $0x3dc9
    2c18:	e8 f5 0c 00 00       	call   3912 <chdir>
    2c1d:	58                   	pop    %eax
    2c1e:	5a                   	pop    %edx
    2c1f:	68 1c 4b 00 00       	push   $0x4b1c
    2c24:	6a 01                	push   $0x1
    2c26:	e8 e5 0d 00 00       	call   3a10 <printf>
    2c2b:	83 c4 10             	add    $0x10,%esp
    2c2e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c31:	c9                   	leave  
    2c32:	c3                   	ret    
    2c33:	83 ec 08             	sub    $0x8,%esp
    2c36:	68 f4 4a 00 00       	push   $0x4af4
    2c3b:	6a 01                	push   $0x1
    2c3d:	e8 ce 0d 00 00       	call   3a10 <printf>
    2c42:	e8 5b 0c 00 00       	call   38a2 <exit>
    2c47:	83 ec 08             	sub    $0x8,%esp
    2c4a:	68 08 4b 00 00       	push   $0x4b08
    2c4f:	6a 01                	push   $0x1
    2c51:	e8 ba 0d 00 00       	call   3a10 <printf>
    2c56:	e8 47 0c 00 00       	call   38a2 <exit>
    2c5b:	90                   	nop
    2c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002c60 <forktest>:
    2c60:	55                   	push   %ebp
    2c61:	89 e5                	mov    %esp,%ebp
    2c63:	53                   	push   %ebx
    2c64:	31 db                	xor    %ebx,%ebx
    2c66:	83 ec 0c             	sub    $0xc,%esp
    2c69:	68 30 4b 00 00       	push   $0x4b30
    2c6e:	6a 01                	push   $0x1
    2c70:	e8 9b 0d 00 00       	call   3a10 <printf>
    2c75:	83 c4 10             	add    $0x10,%esp
    2c78:	eb 13                	jmp    2c8d <forktest+0x2d>
    2c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2c80:	74 62                	je     2ce4 <forktest+0x84>
    2c82:	83 c3 01             	add    $0x1,%ebx
    2c85:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2c8b:	74 43                	je     2cd0 <forktest+0x70>
    2c8d:	e8 08 0c 00 00       	call   389a <fork>
    2c92:	85 c0                	test   %eax,%eax
    2c94:	79 ea                	jns    2c80 <forktest+0x20>
    2c96:	85 db                	test   %ebx,%ebx
    2c98:	74 14                	je     2cae <forktest+0x4e>
    2c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2ca0:	e8 05 0c 00 00       	call   38aa <wait>
    2ca5:	85 c0                	test   %eax,%eax
    2ca7:	78 40                	js     2ce9 <forktest+0x89>
    2ca9:	83 eb 01             	sub    $0x1,%ebx
    2cac:	75 f2                	jne    2ca0 <forktest+0x40>
    2cae:	e8 f7 0b 00 00       	call   38aa <wait>
    2cb3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2cb6:	75 45                	jne    2cfd <forktest+0x9d>
    2cb8:	83 ec 08             	sub    $0x8,%esp
    2cbb:	68 62 4b 00 00       	push   $0x4b62
    2cc0:	6a 01                	push   $0x1
    2cc2:	e8 49 0d 00 00       	call   3a10 <printf>
    2cc7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cca:	c9                   	leave  
    2ccb:	c3                   	ret    
    2ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2cd0:	83 ec 08             	sub    $0x8,%esp
    2cd3:	68 d0 52 00 00       	push   $0x52d0
    2cd8:	6a 01                	push   $0x1
    2cda:	e8 31 0d 00 00       	call   3a10 <printf>
    2cdf:	e8 be 0b 00 00       	call   38a2 <exit>
    2ce4:	e8 b9 0b 00 00       	call   38a2 <exit>
    2ce9:	83 ec 08             	sub    $0x8,%esp
    2cec:	68 3b 4b 00 00       	push   $0x4b3b
    2cf1:	6a 01                	push   $0x1
    2cf3:	e8 18 0d 00 00       	call   3a10 <printf>
    2cf8:	e8 a5 0b 00 00       	call   38a2 <exit>
    2cfd:	83 ec 08             	sub    $0x8,%esp
    2d00:	68 4f 4b 00 00       	push   $0x4b4f
    2d05:	6a 01                	push   $0x1
    2d07:	e8 04 0d 00 00       	call   3a10 <printf>
    2d0c:	e8 91 0b 00 00       	call   38a2 <exit>
    2d11:	eb 0d                	jmp    2d20 <sbrktest>
    2d13:	90                   	nop
    2d14:	90                   	nop
    2d15:	90                   	nop
    2d16:	90                   	nop
    2d17:	90                   	nop
    2d18:	90                   	nop
    2d19:	90                   	nop
    2d1a:	90                   	nop
    2d1b:	90                   	nop
    2d1c:	90                   	nop
    2d1d:	90                   	nop
    2d1e:	90                   	nop
    2d1f:	90                   	nop

00002d20 <sbrktest>:
    2d20:	55                   	push   %ebp
    2d21:	89 e5                	mov    %esp,%ebp
    2d23:	57                   	push   %edi
    2d24:	56                   	push   %esi
    2d25:	53                   	push   %ebx
    2d26:	31 ff                	xor    %edi,%edi
    2d28:	83 ec 64             	sub    $0x64,%esp
    2d2b:	68 70 4b 00 00       	push   $0x4b70
    2d30:	ff 35 10 5e 00 00    	pushl  0x5e10
    2d36:	e8 d5 0c 00 00       	call   3a10 <printf>
    2d3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d42:	e8 e3 0b 00 00       	call   392a <sbrk>
    2d47:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d4e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    2d51:	e8 d4 0b 00 00       	call   392a <sbrk>
    2d56:	83 c4 10             	add    $0x10,%esp
    2d59:	89 c3                	mov    %eax,%ebx
    2d5b:	90                   	nop
    2d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2d60:	83 ec 0c             	sub    $0xc,%esp
    2d63:	6a 01                	push   $0x1
    2d65:	e8 c0 0b 00 00       	call   392a <sbrk>
    2d6a:	83 c4 10             	add    $0x10,%esp
    2d6d:	39 d8                	cmp    %ebx,%eax
    2d6f:	0f 85 85 02 00 00    	jne    2ffa <sbrktest+0x2da>
    2d75:	83 c7 01             	add    $0x1,%edi
    2d78:	c6 03 01             	movb   $0x1,(%ebx)
    2d7b:	83 c3 01             	add    $0x1,%ebx
    2d7e:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2d84:	75 da                	jne    2d60 <sbrktest+0x40>
    2d86:	e8 0f 0b 00 00       	call   389a <fork>
    2d8b:	85 c0                	test   %eax,%eax
    2d8d:	89 c7                	mov    %eax,%edi
    2d8f:	0f 88 93 03 00 00    	js     3128 <sbrktest+0x408>
    2d95:	83 ec 0c             	sub    $0xc,%esp
    2d98:	83 c3 01             	add    $0x1,%ebx
    2d9b:	6a 01                	push   $0x1
    2d9d:	e8 88 0b 00 00       	call   392a <sbrk>
    2da2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2da9:	e8 7c 0b 00 00       	call   392a <sbrk>
    2dae:	83 c4 10             	add    $0x10,%esp
    2db1:	39 d8                	cmp    %ebx,%eax
    2db3:	0f 85 57 03 00 00    	jne    3110 <sbrktest+0x3f0>
    2db9:	85 ff                	test   %edi,%edi
    2dbb:	0f 84 4a 03 00 00    	je     310b <sbrktest+0x3eb>
    2dc1:	e8 e4 0a 00 00       	call   38aa <wait>
    2dc6:	83 ec 0c             	sub    $0xc,%esp
    2dc9:	6a 00                	push   $0x0
    2dcb:	e8 5a 0b 00 00       	call   392a <sbrk>
    2dd0:	89 c3                	mov    %eax,%ebx
    2dd2:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2dd7:	29 d8                	sub    %ebx,%eax
    2dd9:	89 04 24             	mov    %eax,(%esp)
    2ddc:	e8 49 0b 00 00       	call   392a <sbrk>
    2de1:	83 c4 10             	add    $0x10,%esp
    2de4:	39 c3                	cmp    %eax,%ebx
    2de6:	0f 85 07 03 00 00    	jne    30f3 <sbrktest+0x3d3>
    2dec:	83 ec 0c             	sub    $0xc,%esp
    2def:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
    2df6:	6a 00                	push   $0x0
    2df8:	e8 2d 0b 00 00       	call   392a <sbrk>
    2dfd:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
    2e04:	89 c3                	mov    %eax,%ebx
    2e06:	e8 1f 0b 00 00       	call   392a <sbrk>
    2e0b:	83 c4 10             	add    $0x10,%esp
    2e0e:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e11:	0f 84 c4 02 00 00    	je     30db <sbrktest+0x3bb>
    2e17:	83 ec 0c             	sub    $0xc,%esp
    2e1a:	6a 00                	push   $0x0
    2e1c:	e8 09 0b 00 00       	call   392a <sbrk>
    2e21:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2e27:	83 c4 10             	add    $0x10,%esp
    2e2a:	39 d0                	cmp    %edx,%eax
    2e2c:	0f 85 92 02 00 00    	jne    30c4 <sbrktest+0x3a4>
    2e32:	83 ec 0c             	sub    $0xc,%esp
    2e35:	6a 00                	push   $0x0
    2e37:	e8 ee 0a 00 00       	call   392a <sbrk>
    2e3c:	89 c3                	mov    %eax,%ebx
    2e3e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2e45:	e8 e0 0a 00 00       	call   392a <sbrk>
    2e4a:	83 c4 10             	add    $0x10,%esp
    2e4d:	39 c3                	cmp    %eax,%ebx
    2e4f:	89 c7                	mov    %eax,%edi
    2e51:	0f 85 56 02 00 00    	jne    30ad <sbrktest+0x38d>
    2e57:	83 ec 0c             	sub    $0xc,%esp
    2e5a:	6a 00                	push   $0x0
    2e5c:	e8 c9 0a 00 00       	call   392a <sbrk>
    2e61:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2e67:	83 c4 10             	add    $0x10,%esp
    2e6a:	39 d0                	cmp    %edx,%eax
    2e6c:	0f 85 3b 02 00 00    	jne    30ad <sbrktest+0x38d>
    2e72:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2e79:	0f 84 16 02 00 00    	je     3095 <sbrktest+0x375>
    2e7f:	83 ec 0c             	sub    $0xc,%esp
    2e82:	6a 00                	push   $0x0
    2e84:	e8 a1 0a 00 00       	call   392a <sbrk>
    2e89:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e90:	89 c3                	mov    %eax,%ebx
    2e92:	e8 93 0a 00 00       	call   392a <sbrk>
    2e97:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    2e9a:	29 c1                	sub    %eax,%ecx
    2e9c:	89 0c 24             	mov    %ecx,(%esp)
    2e9f:	e8 86 0a 00 00       	call   392a <sbrk>
    2ea4:	83 c4 10             	add    $0x10,%esp
    2ea7:	39 c3                	cmp    %eax,%ebx
    2ea9:	0f 85 cf 01 00 00    	jne    307e <sbrktest+0x35e>
    2eaf:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2eb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2eb8:	e8 65 0a 00 00       	call   3922 <getpid>
    2ebd:	89 c7                	mov    %eax,%edi
    2ebf:	e8 d6 09 00 00       	call   389a <fork>
    2ec4:	85 c0                	test   %eax,%eax
    2ec6:	0f 88 9a 01 00 00    	js     3066 <sbrktest+0x346>
    2ecc:	0f 84 72 01 00 00    	je     3044 <sbrktest+0x324>
    2ed2:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2ed8:	e8 cd 09 00 00       	call   38aa <wait>
    2edd:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    2ee3:	75 d3                	jne    2eb8 <sbrktest+0x198>
    2ee5:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2ee8:	83 ec 0c             	sub    $0xc,%esp
    2eeb:	50                   	push   %eax
    2eec:	e8 c1 09 00 00       	call   38b2 <pipe>
    2ef1:	83 c4 10             	add    $0x10,%esp
    2ef4:	85 c0                	test   %eax,%eax
    2ef6:	0f 85 34 01 00 00    	jne    3030 <sbrktest+0x310>
    2efc:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    2eff:	8d 7d e8             	lea    -0x18(%ebp),%edi
    2f02:	89 de                	mov    %ebx,%esi
    2f04:	e8 91 09 00 00       	call   389a <fork>
    2f09:	85 c0                	test   %eax,%eax
    2f0b:	89 06                	mov    %eax,(%esi)
    2f0d:	0f 84 a1 00 00 00    	je     2fb4 <sbrktest+0x294>
    2f13:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f16:	74 14                	je     2f2c <sbrktest+0x20c>
    2f18:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f1b:	83 ec 04             	sub    $0x4,%esp
    2f1e:	6a 01                	push   $0x1
    2f20:	50                   	push   %eax
    2f21:	ff 75 b8             	pushl  -0x48(%ebp)
    2f24:	e8 91 09 00 00       	call   38ba <read>
    2f29:	83 c4 10             	add    $0x10,%esp
    2f2c:	83 c6 04             	add    $0x4,%esi
    2f2f:	39 f7                	cmp    %esi,%edi
    2f31:	75 d1                	jne    2f04 <sbrktest+0x1e4>
    2f33:	83 ec 0c             	sub    $0xc,%esp
    2f36:	68 00 10 00 00       	push   $0x1000
    2f3b:	e8 ea 09 00 00       	call   392a <sbrk>
    2f40:	83 c4 10             	add    $0x10,%esp
    2f43:	89 c6                	mov    %eax,%esi
    2f45:	8b 03                	mov    (%ebx),%eax
    2f47:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f4a:	74 11                	je     2f5d <sbrktest+0x23d>
    2f4c:	83 ec 0c             	sub    $0xc,%esp
    2f4f:	50                   	push   %eax
    2f50:	e8 7d 09 00 00       	call   38d2 <kill>
    2f55:	e8 50 09 00 00       	call   38aa <wait>
    2f5a:	83 c4 10             	add    $0x10,%esp
    2f5d:	83 c3 04             	add    $0x4,%ebx
    2f60:	39 fb                	cmp    %edi,%ebx
    2f62:	75 e1                	jne    2f45 <sbrktest+0x225>
    2f64:	83 fe ff             	cmp    $0xffffffff,%esi
    2f67:	0f 84 ab 00 00 00    	je     3018 <sbrktest+0x2f8>
    2f6d:	83 ec 0c             	sub    $0xc,%esp
    2f70:	6a 00                	push   $0x0
    2f72:	e8 b3 09 00 00       	call   392a <sbrk>
    2f77:	83 c4 10             	add    $0x10,%esp
    2f7a:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    2f7d:	73 1a                	jae    2f99 <sbrktest+0x279>
    2f7f:	83 ec 0c             	sub    $0xc,%esp
    2f82:	6a 00                	push   $0x0
    2f84:	e8 a1 09 00 00       	call   392a <sbrk>
    2f89:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    2f8c:	29 c6                	sub    %eax,%esi
    2f8e:	89 34 24             	mov    %esi,(%esp)
    2f91:	e8 94 09 00 00       	call   392a <sbrk>
    2f96:	83 c4 10             	add    $0x10,%esp
    2f99:	83 ec 08             	sub    $0x8,%esp
    2f9c:	68 18 4c 00 00       	push   $0x4c18
    2fa1:	ff 35 10 5e 00 00    	pushl  0x5e10
    2fa7:	e8 64 0a 00 00       	call   3a10 <printf>
    2fac:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2faf:	5b                   	pop    %ebx
    2fb0:	5e                   	pop    %esi
    2fb1:	5f                   	pop    %edi
    2fb2:	5d                   	pop    %ebp
    2fb3:	c3                   	ret    
    2fb4:	83 ec 0c             	sub    $0xc,%esp
    2fb7:	6a 00                	push   $0x0
    2fb9:	e8 6c 09 00 00       	call   392a <sbrk>
    2fbe:	ba 00 00 40 06       	mov    $0x6400000,%edx
    2fc3:	29 c2                	sub    %eax,%edx
    2fc5:	89 14 24             	mov    %edx,(%esp)
    2fc8:	e8 5d 09 00 00       	call   392a <sbrk>
    2fcd:	83 c4 0c             	add    $0xc,%esp
    2fd0:	6a 01                	push   $0x1
    2fd2:	68 d9 46 00 00       	push   $0x46d9
    2fd7:	ff 75 bc             	pushl  -0x44(%ebp)
    2fda:	e8 e3 08 00 00       	call   38c2 <write>
    2fdf:	83 c4 10             	add    $0x10,%esp
    2fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2fe8:	83 ec 0c             	sub    $0xc,%esp
    2feb:	68 e8 03 00 00       	push   $0x3e8
    2ff0:	e8 3d 09 00 00       	call   3932 <sleep>
    2ff5:	83 c4 10             	add    $0x10,%esp
    2ff8:	eb ee                	jmp    2fe8 <sbrktest+0x2c8>
    2ffa:	83 ec 0c             	sub    $0xc,%esp
    2ffd:	50                   	push   %eax
    2ffe:	53                   	push   %ebx
    2fff:	57                   	push   %edi
    3000:	68 7b 4b 00 00       	push   $0x4b7b
    3005:	ff 35 10 5e 00 00    	pushl  0x5e10
    300b:	e8 00 0a 00 00       	call   3a10 <printf>
    3010:	83 c4 20             	add    $0x20,%esp
    3013:	e8 8a 08 00 00       	call   38a2 <exit>
    3018:	83 ec 08             	sub    $0x8,%esp
    301b:	68 fd 4b 00 00       	push   $0x4bfd
    3020:	ff 35 10 5e 00 00    	pushl  0x5e10
    3026:	e8 e5 09 00 00       	call   3a10 <printf>
    302b:	e8 72 08 00 00       	call   38a2 <exit>
    3030:	83 ec 08             	sub    $0x8,%esp
    3033:	68 b9 40 00 00       	push   $0x40b9
    3038:	6a 01                	push   $0x1
    303a:	e8 d1 09 00 00       	call   3a10 <printf>
    303f:	e8 5e 08 00 00       	call   38a2 <exit>
    3044:	0f be 03             	movsbl (%ebx),%eax
    3047:	50                   	push   %eax
    3048:	53                   	push   %ebx
    3049:	68 e4 4b 00 00       	push   $0x4be4
    304e:	ff 35 10 5e 00 00    	pushl  0x5e10
    3054:	e8 b7 09 00 00       	call   3a10 <printf>
    3059:	89 3c 24             	mov    %edi,(%esp)
    305c:	e8 71 08 00 00       	call   38d2 <kill>
    3061:	e8 3c 08 00 00       	call   38a2 <exit>
    3066:	83 ec 08             	sub    $0x8,%esp
    3069:	68 c1 4c 00 00       	push   $0x4cc1
    306e:	ff 35 10 5e 00 00    	pushl  0x5e10
    3074:	e8 97 09 00 00       	call   3a10 <printf>
    3079:	e8 24 08 00 00       	call   38a2 <exit>
    307e:	50                   	push   %eax
    307f:	53                   	push   %ebx
    3080:	68 c4 53 00 00       	push   $0x53c4
    3085:	ff 35 10 5e 00 00    	pushl  0x5e10
    308b:	e8 80 09 00 00       	call   3a10 <printf>
    3090:	e8 0d 08 00 00       	call   38a2 <exit>
    3095:	83 ec 08             	sub    $0x8,%esp
    3098:	68 94 53 00 00       	push   $0x5394
    309d:	ff 35 10 5e 00 00    	pushl  0x5e10
    30a3:	e8 68 09 00 00       	call   3a10 <printf>
    30a8:	e8 f5 07 00 00       	call   38a2 <exit>
    30ad:	57                   	push   %edi
    30ae:	53                   	push   %ebx
    30af:	68 6c 53 00 00       	push   $0x536c
    30b4:	ff 35 10 5e 00 00    	pushl  0x5e10
    30ba:	e8 51 09 00 00       	call   3a10 <printf>
    30bf:	e8 de 07 00 00       	call   38a2 <exit>
    30c4:	50                   	push   %eax
    30c5:	53                   	push   %ebx
    30c6:	68 34 53 00 00       	push   $0x5334
    30cb:	ff 35 10 5e 00 00    	pushl  0x5e10
    30d1:	e8 3a 09 00 00       	call   3a10 <printf>
    30d6:	e8 c7 07 00 00       	call   38a2 <exit>
    30db:	83 ec 08             	sub    $0x8,%esp
    30de:	68 c9 4b 00 00       	push   $0x4bc9
    30e3:	ff 35 10 5e 00 00    	pushl  0x5e10
    30e9:	e8 22 09 00 00       	call   3a10 <printf>
    30ee:	e8 af 07 00 00       	call   38a2 <exit>
    30f3:	83 ec 08             	sub    $0x8,%esp
    30f6:	68 f4 52 00 00       	push   $0x52f4
    30fb:	ff 35 10 5e 00 00    	pushl  0x5e10
    3101:	e8 0a 09 00 00       	call   3a10 <printf>
    3106:	e8 97 07 00 00       	call   38a2 <exit>
    310b:	e8 92 07 00 00       	call   38a2 <exit>
    3110:	83 ec 08             	sub    $0x8,%esp
    3113:	68 ad 4b 00 00       	push   $0x4bad
    3118:	ff 35 10 5e 00 00    	pushl  0x5e10
    311e:	e8 ed 08 00 00       	call   3a10 <printf>
    3123:	e8 7a 07 00 00       	call   38a2 <exit>
    3128:	83 ec 08             	sub    $0x8,%esp
    312b:	68 96 4b 00 00       	push   $0x4b96
    3130:	ff 35 10 5e 00 00    	pushl  0x5e10
    3136:	e8 d5 08 00 00       	call   3a10 <printf>
    313b:	e8 62 07 00 00       	call   38a2 <exit>

00003140 <validateint>:
    3140:	55                   	push   %ebp
    3141:	89 e5                	mov    %esp,%ebp
    3143:	5d                   	pop    %ebp
    3144:	c3                   	ret    
    3145:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003150 <validatetest>:
    3150:	55                   	push   %ebp
    3151:	89 e5                	mov    %esp,%ebp
    3153:	56                   	push   %esi
    3154:	53                   	push   %ebx
    3155:	31 db                	xor    %ebx,%ebx
    3157:	83 ec 08             	sub    $0x8,%esp
    315a:	68 26 4c 00 00       	push   $0x4c26
    315f:	ff 35 10 5e 00 00    	pushl  0x5e10
    3165:	e8 a6 08 00 00       	call   3a10 <printf>
    316a:	83 c4 10             	add    $0x10,%esp
    316d:	8d 76 00             	lea    0x0(%esi),%esi
    3170:	e8 25 07 00 00       	call   389a <fork>
    3175:	85 c0                	test   %eax,%eax
    3177:	89 c6                	mov    %eax,%esi
    3179:	74 63                	je     31de <validatetest+0x8e>
    317b:	83 ec 0c             	sub    $0xc,%esp
    317e:	6a 00                	push   $0x0
    3180:	e8 ad 07 00 00       	call   3932 <sleep>
    3185:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    318c:	e8 a1 07 00 00       	call   3932 <sleep>
    3191:	89 34 24             	mov    %esi,(%esp)
    3194:	e8 39 07 00 00       	call   38d2 <kill>
    3199:	e8 0c 07 00 00       	call   38aa <wait>
    319e:	58                   	pop    %eax
    319f:	5a                   	pop    %edx
    31a0:	53                   	push   %ebx
    31a1:	68 35 4c 00 00       	push   $0x4c35
    31a6:	e8 57 07 00 00       	call   3902 <link>
    31ab:	83 c4 10             	add    $0x10,%esp
    31ae:	83 f8 ff             	cmp    $0xffffffff,%eax
    31b1:	75 30                	jne    31e3 <validatetest+0x93>
    31b3:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    31b9:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    31bf:	75 af                	jne    3170 <validatetest+0x20>
    31c1:	83 ec 08             	sub    $0x8,%esp
    31c4:	68 59 4c 00 00       	push   $0x4c59
    31c9:	ff 35 10 5e 00 00    	pushl  0x5e10
    31cf:	e8 3c 08 00 00       	call   3a10 <printf>
    31d4:	83 c4 10             	add    $0x10,%esp
    31d7:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31da:	5b                   	pop    %ebx
    31db:	5e                   	pop    %esi
    31dc:	5d                   	pop    %ebp
    31dd:	c3                   	ret    
    31de:	e8 bf 06 00 00       	call   38a2 <exit>
    31e3:	83 ec 08             	sub    $0x8,%esp
    31e6:	68 40 4c 00 00       	push   $0x4c40
    31eb:	ff 35 10 5e 00 00    	pushl  0x5e10
    31f1:	e8 1a 08 00 00       	call   3a10 <printf>
    31f6:	e8 a7 06 00 00       	call   38a2 <exit>
    31fb:	90                   	nop
    31fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003200 <bsstest>:
    3200:	55                   	push   %ebp
    3201:	89 e5                	mov    %esp,%ebp
    3203:	83 ec 10             	sub    $0x10,%esp
    3206:	68 66 4c 00 00       	push   $0x4c66
    320b:	ff 35 10 5e 00 00    	pushl  0x5e10
    3211:	e8 fa 07 00 00       	call   3a10 <printf>
    3216:	83 c4 10             	add    $0x10,%esp
    3219:	80 3d e0 5e 00 00 00 	cmpb   $0x0,0x5ee0
    3220:	75 35                	jne    3257 <bsstest+0x57>
    3222:	b8 e1 5e 00 00       	mov    $0x5ee1,%eax
    3227:	89 f6                	mov    %esi,%esi
    3229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3230:	80 38 00             	cmpb   $0x0,(%eax)
    3233:	75 22                	jne    3257 <bsstest+0x57>
    3235:	83 c0 01             	add    $0x1,%eax
    3238:	3d f0 85 00 00       	cmp    $0x85f0,%eax
    323d:	75 f1                	jne    3230 <bsstest+0x30>
    323f:	83 ec 08             	sub    $0x8,%esp
    3242:	68 81 4c 00 00       	push   $0x4c81
    3247:	ff 35 10 5e 00 00    	pushl  0x5e10
    324d:	e8 be 07 00 00       	call   3a10 <printf>
    3252:	83 c4 10             	add    $0x10,%esp
    3255:	c9                   	leave  
    3256:	c3                   	ret    
    3257:	83 ec 08             	sub    $0x8,%esp
    325a:	68 70 4c 00 00       	push   $0x4c70
    325f:	ff 35 10 5e 00 00    	pushl  0x5e10
    3265:	e8 a6 07 00 00       	call   3a10 <printf>
    326a:	e8 33 06 00 00       	call   38a2 <exit>
    326f:	90                   	nop

00003270 <bigargtest>:
    3270:	55                   	push   %ebp
    3271:	89 e5                	mov    %esp,%ebp
    3273:	83 ec 14             	sub    $0x14,%esp
    3276:	68 8e 4c 00 00       	push   $0x4c8e
    327b:	e8 72 06 00 00       	call   38f2 <unlink>
    3280:	e8 15 06 00 00       	call   389a <fork>
    3285:	83 c4 10             	add    $0x10,%esp
    3288:	85 c0                	test   %eax,%eax
    328a:	74 3f                	je     32cb <bigargtest+0x5b>
    328c:	0f 88 c2 00 00 00    	js     3354 <bigargtest+0xe4>
    3292:	e8 13 06 00 00       	call   38aa <wait>
    3297:	83 ec 08             	sub    $0x8,%esp
    329a:	6a 00                	push   $0x0
    329c:	68 8e 4c 00 00       	push   $0x4c8e
    32a1:	e8 3c 06 00 00       	call   38e2 <open>
    32a6:	83 c4 10             	add    $0x10,%esp
    32a9:	85 c0                	test   %eax,%eax
    32ab:	0f 88 8c 00 00 00    	js     333d <bigargtest+0xcd>
    32b1:	83 ec 0c             	sub    $0xc,%esp
    32b4:	50                   	push   %eax
    32b5:	e8 10 06 00 00       	call   38ca <close>
    32ba:	c7 04 24 8e 4c 00 00 	movl   $0x4c8e,(%esp)
    32c1:	e8 2c 06 00 00       	call   38f2 <unlink>
    32c6:	83 c4 10             	add    $0x10,%esp
    32c9:	c9                   	leave  
    32ca:	c3                   	ret    
    32cb:	b8 40 5e 00 00       	mov    $0x5e40,%eax
    32d0:	c7 00 e8 53 00 00    	movl   $0x53e8,(%eax)
    32d6:	83 c0 04             	add    $0x4,%eax
    32d9:	3d bc 5e 00 00       	cmp    $0x5ebc,%eax
    32de:	75 f0                	jne    32d0 <bigargtest+0x60>
    32e0:	51                   	push   %ecx
    32e1:	51                   	push   %ecx
    32e2:	68 98 4c 00 00       	push   $0x4c98
    32e7:	ff 35 10 5e 00 00    	pushl  0x5e10
    32ed:	c7 05 bc 5e 00 00 00 	movl   $0x0,0x5ebc
    32f4:	00 00 00 
    32f7:	e8 14 07 00 00       	call   3a10 <printf>
    32fc:	58                   	pop    %eax
    32fd:	5a                   	pop    %edx
    32fe:	68 40 5e 00 00       	push   $0x5e40
    3303:	68 65 3e 00 00       	push   $0x3e65
    3308:	e8 cd 05 00 00       	call   38da <exec>
    330d:	59                   	pop    %ecx
    330e:	58                   	pop    %eax
    330f:	68 a5 4c 00 00       	push   $0x4ca5
    3314:	ff 35 10 5e 00 00    	pushl  0x5e10
    331a:	e8 f1 06 00 00       	call   3a10 <printf>
    331f:	58                   	pop    %eax
    3320:	5a                   	pop    %edx
    3321:	68 00 02 00 00       	push   $0x200
    3326:	68 8e 4c 00 00       	push   $0x4c8e
    332b:	e8 b2 05 00 00       	call   38e2 <open>
    3330:	89 04 24             	mov    %eax,(%esp)
    3333:	e8 92 05 00 00       	call   38ca <close>
    3338:	e8 65 05 00 00       	call   38a2 <exit>
    333d:	50                   	push   %eax
    333e:	50                   	push   %eax
    333f:	68 ce 4c 00 00       	push   $0x4cce
    3344:	ff 35 10 5e 00 00    	pushl  0x5e10
    334a:	e8 c1 06 00 00       	call   3a10 <printf>
    334f:	e8 4e 05 00 00       	call   38a2 <exit>
    3354:	52                   	push   %edx
    3355:	52                   	push   %edx
    3356:	68 b5 4c 00 00       	push   $0x4cb5
    335b:	ff 35 10 5e 00 00    	pushl  0x5e10
    3361:	e8 aa 06 00 00       	call   3a10 <printf>
    3366:	e8 37 05 00 00       	call   38a2 <exit>
    336b:	90                   	nop
    336c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003370 <fsfull>:
    3370:	55                   	push   %ebp
    3371:	89 e5                	mov    %esp,%ebp
    3373:	57                   	push   %edi
    3374:	56                   	push   %esi
    3375:	53                   	push   %ebx
    3376:	31 db                	xor    %ebx,%ebx
    3378:	83 ec 54             	sub    $0x54,%esp
    337b:	68 e3 4c 00 00       	push   $0x4ce3
    3380:	6a 01                	push   $0x1
    3382:	e8 89 06 00 00       	call   3a10 <printf>
    3387:	83 c4 10             	add    $0x10,%esp
    338a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3390:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3395:	89 de                	mov    %ebx,%esi
    3397:	89 d9                	mov    %ebx,%ecx
    3399:	f7 eb                	imul   %ebx
    339b:	c1 fe 1f             	sar    $0x1f,%esi
    339e:	89 df                	mov    %ebx,%edi
    33a0:	83 ec 04             	sub    $0x4,%esp
    33a3:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    33a7:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    33ab:	c1 fa 06             	sar    $0x6,%edx
    33ae:	29 f2                	sub    %esi,%edx
    33b0:	8d 42 30             	lea    0x30(%edx),%eax
    33b3:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    33b9:	88 45 a9             	mov    %al,-0x57(%ebp)
    33bc:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    33c1:	29 d1                	sub    %edx,%ecx
    33c3:	f7 e9                	imul   %ecx
    33c5:	c1 f9 1f             	sar    $0x1f,%ecx
    33c8:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    33cd:	c1 fa 05             	sar    $0x5,%edx
    33d0:	29 ca                	sub    %ecx,%edx
    33d2:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    33d7:	83 c2 30             	add    $0x30,%edx
    33da:	88 55 aa             	mov    %dl,-0x56(%ebp)
    33dd:	f7 eb                	imul   %ebx
    33df:	c1 fa 05             	sar    $0x5,%edx
    33e2:	29 f2                	sub    %esi,%edx
    33e4:	6b d2 64             	imul   $0x64,%edx,%edx
    33e7:	29 d7                	sub    %edx,%edi
    33e9:	89 f8                	mov    %edi,%eax
    33eb:	c1 ff 1f             	sar    $0x1f,%edi
    33ee:	f7 e9                	imul   %ecx
    33f0:	89 d8                	mov    %ebx,%eax
    33f2:	c1 fa 02             	sar    $0x2,%edx
    33f5:	29 fa                	sub    %edi,%edx
    33f7:	83 c2 30             	add    $0x30,%edx
    33fa:	88 55 ab             	mov    %dl,-0x55(%ebp)
    33fd:	f7 e9                	imul   %ecx
    33ff:	89 d9                	mov    %ebx,%ecx
    3401:	c1 fa 02             	sar    $0x2,%edx
    3404:	29 f2                	sub    %esi,%edx
    3406:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3409:	01 c0                	add    %eax,%eax
    340b:	29 c1                	sub    %eax,%ecx
    340d:	89 c8                	mov    %ecx,%eax
    340f:	83 c0 30             	add    $0x30,%eax
    3412:	88 45 ac             	mov    %al,-0x54(%ebp)
    3415:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3418:	50                   	push   %eax
    3419:	68 f0 4c 00 00       	push   $0x4cf0
    341e:	6a 01                	push   $0x1
    3420:	e8 eb 05 00 00       	call   3a10 <printf>
    3425:	58                   	pop    %eax
    3426:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3429:	5a                   	pop    %edx
    342a:	68 02 02 00 00       	push   $0x202
    342f:	50                   	push   %eax
    3430:	e8 ad 04 00 00       	call   38e2 <open>
    3435:	83 c4 10             	add    $0x10,%esp
    3438:	85 c0                	test   %eax,%eax
    343a:	89 c7                	mov    %eax,%edi
    343c:	78 50                	js     348e <fsfull+0x11e>
    343e:	31 f6                	xor    %esi,%esi
    3440:	eb 08                	jmp    344a <fsfull+0xda>
    3442:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3448:	01 c6                	add    %eax,%esi
    344a:	83 ec 04             	sub    $0x4,%esp
    344d:	68 00 02 00 00       	push   $0x200
    3452:	68 00 86 00 00       	push   $0x8600
    3457:	57                   	push   %edi
    3458:	e8 65 04 00 00       	call   38c2 <write>
    345d:	83 c4 10             	add    $0x10,%esp
    3460:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3465:	7f e1                	jg     3448 <fsfull+0xd8>
    3467:	83 ec 04             	sub    $0x4,%esp
    346a:	56                   	push   %esi
    346b:	68 0c 4d 00 00       	push   $0x4d0c
    3470:	6a 01                	push   $0x1
    3472:	e8 99 05 00 00       	call   3a10 <printf>
    3477:	89 3c 24             	mov    %edi,(%esp)
    347a:	e8 4b 04 00 00       	call   38ca <close>
    347f:	83 c4 10             	add    $0x10,%esp
    3482:	85 f6                	test   %esi,%esi
    3484:	74 22                	je     34a8 <fsfull+0x138>
    3486:	83 c3 01             	add    $0x1,%ebx
    3489:	e9 02 ff ff ff       	jmp    3390 <fsfull+0x20>
    348e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3491:	83 ec 04             	sub    $0x4,%esp
    3494:	50                   	push   %eax
    3495:	68 fc 4c 00 00       	push   $0x4cfc
    349a:	6a 01                	push   $0x1
    349c:	e8 6f 05 00 00       	call   3a10 <printf>
    34a1:	83 c4 10             	add    $0x10,%esp
    34a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    34a8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    34ad:	89 de                	mov    %ebx,%esi
    34af:	89 d9                	mov    %ebx,%ecx
    34b1:	f7 eb                	imul   %ebx
    34b3:	c1 fe 1f             	sar    $0x1f,%esi
    34b6:	89 df                	mov    %ebx,%edi
    34b8:	83 ec 0c             	sub    $0xc,%esp
    34bb:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    34bf:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    34c3:	c1 fa 06             	sar    $0x6,%edx
    34c6:	29 f2                	sub    %esi,%edx
    34c8:	8d 42 30             	lea    0x30(%edx),%eax
    34cb:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    34d1:	88 45 a9             	mov    %al,-0x57(%ebp)
    34d4:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    34d9:	29 d1                	sub    %edx,%ecx
    34db:	f7 e9                	imul   %ecx
    34dd:	c1 f9 1f             	sar    $0x1f,%ecx
    34e0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    34e5:	c1 fa 05             	sar    $0x5,%edx
    34e8:	29 ca                	sub    %ecx,%edx
    34ea:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    34ef:	83 c2 30             	add    $0x30,%edx
    34f2:	88 55 aa             	mov    %dl,-0x56(%ebp)
    34f5:	f7 eb                	imul   %ebx
    34f7:	c1 fa 05             	sar    $0x5,%edx
    34fa:	29 f2                	sub    %esi,%edx
    34fc:	6b d2 64             	imul   $0x64,%edx,%edx
    34ff:	29 d7                	sub    %edx,%edi
    3501:	89 f8                	mov    %edi,%eax
    3503:	c1 ff 1f             	sar    $0x1f,%edi
    3506:	f7 e9                	imul   %ecx
    3508:	89 d8                	mov    %ebx,%eax
    350a:	c1 fa 02             	sar    $0x2,%edx
    350d:	29 fa                	sub    %edi,%edx
    350f:	83 c2 30             	add    $0x30,%edx
    3512:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3515:	f7 e9                	imul   %ecx
    3517:	89 d9                	mov    %ebx,%ecx
    3519:	83 eb 01             	sub    $0x1,%ebx
    351c:	c1 fa 02             	sar    $0x2,%edx
    351f:	29 f2                	sub    %esi,%edx
    3521:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3524:	01 c0                	add    %eax,%eax
    3526:	29 c1                	sub    %eax,%ecx
    3528:	89 c8                	mov    %ecx,%eax
    352a:	83 c0 30             	add    $0x30,%eax
    352d:	88 45 ac             	mov    %al,-0x54(%ebp)
    3530:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3533:	50                   	push   %eax
    3534:	e8 b9 03 00 00       	call   38f2 <unlink>
    3539:	83 c4 10             	add    $0x10,%esp
    353c:	83 fb ff             	cmp    $0xffffffff,%ebx
    353f:	0f 85 63 ff ff ff    	jne    34a8 <fsfull+0x138>
    3545:	83 ec 08             	sub    $0x8,%esp
    3548:	68 1c 4d 00 00       	push   $0x4d1c
    354d:	6a 01                	push   $0x1
    354f:	e8 bc 04 00 00       	call   3a10 <printf>
    3554:	83 c4 10             	add    $0x10,%esp
    3557:	8d 65 f4             	lea    -0xc(%ebp),%esp
    355a:	5b                   	pop    %ebx
    355b:	5e                   	pop    %esi
    355c:	5f                   	pop    %edi
    355d:	5d                   	pop    %ebp
    355e:	c3                   	ret    
    355f:	90                   	nop

00003560 <uio>:
    3560:	55                   	push   %ebp
    3561:	89 e5                	mov    %esp,%ebp
    3563:	83 ec 10             	sub    $0x10,%esp
    3566:	68 32 4d 00 00       	push   $0x4d32
    356b:	6a 01                	push   $0x1
    356d:	e8 9e 04 00 00       	call   3a10 <printf>
    3572:	e8 23 03 00 00       	call   389a <fork>
    3577:	83 c4 10             	add    $0x10,%esp
    357a:	85 c0                	test   %eax,%eax
    357c:	74 1b                	je     3599 <uio+0x39>
    357e:	78 3d                	js     35bd <uio+0x5d>
    3580:	e8 25 03 00 00       	call   38aa <wait>
    3585:	83 ec 08             	sub    $0x8,%esp
    3588:	68 3c 4d 00 00       	push   $0x4d3c
    358d:	6a 01                	push   $0x1
    358f:	e8 7c 04 00 00       	call   3a10 <printf>
    3594:	83 c4 10             	add    $0x10,%esp
    3597:	c9                   	leave  
    3598:	c3                   	ret    
    3599:	ba 70 00 00 00       	mov    $0x70,%edx
    359e:	b8 09 00 00 00       	mov    $0x9,%eax
    35a3:	ee                   	out    %al,(%dx)
    35a4:	ba 71 00 00 00       	mov    $0x71,%edx
    35a9:	ec                   	in     (%dx),%al
    35aa:	52                   	push   %edx
    35ab:	52                   	push   %edx
    35ac:	68 c8 54 00 00       	push   $0x54c8
    35b1:	6a 01                	push   $0x1
    35b3:	e8 58 04 00 00       	call   3a10 <printf>
    35b8:	e8 e5 02 00 00       	call   38a2 <exit>
    35bd:	50                   	push   %eax
    35be:	50                   	push   %eax
    35bf:	68 c1 4c 00 00       	push   $0x4cc1
    35c4:	6a 01                	push   $0x1
    35c6:	e8 45 04 00 00       	call   3a10 <printf>
    35cb:	e8 d2 02 00 00       	call   38a2 <exit>

000035d0 <argptest>:
    35d0:	55                   	push   %ebp
    35d1:	89 e5                	mov    %esp,%ebp
    35d3:	53                   	push   %ebx
    35d4:	83 ec 0c             	sub    $0xc,%esp
    35d7:	6a 00                	push   $0x0
    35d9:	68 4b 4d 00 00       	push   $0x4d4b
    35de:	e8 ff 02 00 00       	call   38e2 <open>
    35e3:	83 c4 10             	add    $0x10,%esp
    35e6:	85 c0                	test   %eax,%eax
    35e8:	78 39                	js     3623 <argptest+0x53>
    35ea:	83 ec 0c             	sub    $0xc,%esp
    35ed:	89 c3                	mov    %eax,%ebx
    35ef:	6a 00                	push   $0x0
    35f1:	e8 34 03 00 00       	call   392a <sbrk>
    35f6:	83 c4 0c             	add    $0xc,%esp
    35f9:	83 e8 01             	sub    $0x1,%eax
    35fc:	6a ff                	push   $0xffffffff
    35fe:	50                   	push   %eax
    35ff:	53                   	push   %ebx
    3600:	e8 b5 02 00 00       	call   38ba <read>
    3605:	89 1c 24             	mov    %ebx,(%esp)
    3608:	e8 bd 02 00 00       	call   38ca <close>
    360d:	58                   	pop    %eax
    360e:	5a                   	pop    %edx
    360f:	68 5d 4d 00 00       	push   $0x4d5d
    3614:	6a 01                	push   $0x1
    3616:	e8 f5 03 00 00       	call   3a10 <printf>
    361b:	83 c4 10             	add    $0x10,%esp
    361e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3621:	c9                   	leave  
    3622:	c3                   	ret    
    3623:	51                   	push   %ecx
    3624:	51                   	push   %ecx
    3625:	68 50 4d 00 00       	push   $0x4d50
    362a:	6a 02                	push   $0x2
    362c:	e8 df 03 00 00       	call   3a10 <printf>
    3631:	e8 6c 02 00 00       	call   38a2 <exit>
    3636:	8d 76 00             	lea    0x0(%esi),%esi
    3639:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003640 <rand>:
    3640:	69 05 0c 5e 00 00 0d 	imul   $0x19660d,0x5e0c,%eax
    3647:	66 19 00 
    364a:	55                   	push   %ebp
    364b:	89 e5                	mov    %esp,%ebp
    364d:	5d                   	pop    %ebp
    364e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3653:	a3 0c 5e 00 00       	mov    %eax,0x5e0c
    3658:	c3                   	ret    
    3659:	66 90                	xchg   %ax,%ax
    365b:	66 90                	xchg   %ax,%ax
    365d:	66 90                	xchg   %ax,%ax
    365f:	90                   	nop

00003660 <strcpy>:
    3660:	55                   	push   %ebp
    3661:	89 e5                	mov    %esp,%ebp
    3663:	53                   	push   %ebx
    3664:	8b 45 08             	mov    0x8(%ebp),%eax
    3667:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    366a:	89 c2                	mov    %eax,%edx
    366c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3670:	83 c1 01             	add    $0x1,%ecx
    3673:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3677:	83 c2 01             	add    $0x1,%edx
    367a:	84 db                	test   %bl,%bl
    367c:	88 5a ff             	mov    %bl,-0x1(%edx)
    367f:	75 ef                	jne    3670 <strcpy+0x10>
    3681:	5b                   	pop    %ebx
    3682:	5d                   	pop    %ebp
    3683:	c3                   	ret    
    3684:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    368a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003690 <strcmp>:
    3690:	55                   	push   %ebp
    3691:	89 e5                	mov    %esp,%ebp
    3693:	56                   	push   %esi
    3694:	53                   	push   %ebx
    3695:	8b 55 08             	mov    0x8(%ebp),%edx
    3698:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    369b:	0f b6 02             	movzbl (%edx),%eax
    369e:	0f b6 19             	movzbl (%ecx),%ebx
    36a1:	84 c0                	test   %al,%al
    36a3:	75 1e                	jne    36c3 <strcmp+0x33>
    36a5:	eb 29                	jmp    36d0 <strcmp+0x40>
    36a7:	89 f6                	mov    %esi,%esi
    36a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    36b0:	83 c2 01             	add    $0x1,%edx
    36b3:	0f b6 02             	movzbl (%edx),%eax
    36b6:	8d 71 01             	lea    0x1(%ecx),%esi
    36b9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    36bd:	84 c0                	test   %al,%al
    36bf:	74 0f                	je     36d0 <strcmp+0x40>
    36c1:	89 f1                	mov    %esi,%ecx
    36c3:	38 d8                	cmp    %bl,%al
    36c5:	74 e9                	je     36b0 <strcmp+0x20>
    36c7:	29 d8                	sub    %ebx,%eax
    36c9:	5b                   	pop    %ebx
    36ca:	5e                   	pop    %esi
    36cb:	5d                   	pop    %ebp
    36cc:	c3                   	ret    
    36cd:	8d 76 00             	lea    0x0(%esi),%esi
    36d0:	31 c0                	xor    %eax,%eax
    36d2:	29 d8                	sub    %ebx,%eax
    36d4:	5b                   	pop    %ebx
    36d5:	5e                   	pop    %esi
    36d6:	5d                   	pop    %ebp
    36d7:	c3                   	ret    
    36d8:	90                   	nop
    36d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000036e0 <strlen>:
    36e0:	55                   	push   %ebp
    36e1:	89 e5                	mov    %esp,%ebp
    36e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    36e6:	80 39 00             	cmpb   $0x0,(%ecx)
    36e9:	74 12                	je     36fd <strlen+0x1d>
    36eb:	31 d2                	xor    %edx,%edx
    36ed:	8d 76 00             	lea    0x0(%esi),%esi
    36f0:	83 c2 01             	add    $0x1,%edx
    36f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    36f7:	89 d0                	mov    %edx,%eax
    36f9:	75 f5                	jne    36f0 <strlen+0x10>
    36fb:	5d                   	pop    %ebp
    36fc:	c3                   	ret    
    36fd:	31 c0                	xor    %eax,%eax
    36ff:	5d                   	pop    %ebp
    3700:	c3                   	ret    
    3701:	eb 0d                	jmp    3710 <memset>
    3703:	90                   	nop
    3704:	90                   	nop
    3705:	90                   	nop
    3706:	90                   	nop
    3707:	90                   	nop
    3708:	90                   	nop
    3709:	90                   	nop
    370a:	90                   	nop
    370b:	90                   	nop
    370c:	90                   	nop
    370d:	90                   	nop
    370e:	90                   	nop
    370f:	90                   	nop

00003710 <memset>:
    3710:	55                   	push   %ebp
    3711:	89 e5                	mov    %esp,%ebp
    3713:	57                   	push   %edi
    3714:	8b 55 08             	mov    0x8(%ebp),%edx
    3717:	8b 4d 10             	mov    0x10(%ebp),%ecx
    371a:	8b 45 0c             	mov    0xc(%ebp),%eax
    371d:	89 d7                	mov    %edx,%edi
    371f:	fc                   	cld    
    3720:	f3 aa                	rep stos %al,%es:(%edi)
    3722:	89 d0                	mov    %edx,%eax
    3724:	5f                   	pop    %edi
    3725:	5d                   	pop    %ebp
    3726:	c3                   	ret    
    3727:	89 f6                	mov    %esi,%esi
    3729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003730 <strchr>:
    3730:	55                   	push   %ebp
    3731:	89 e5                	mov    %esp,%ebp
    3733:	53                   	push   %ebx
    3734:	8b 45 08             	mov    0x8(%ebp),%eax
    3737:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    373a:	0f b6 10             	movzbl (%eax),%edx
    373d:	84 d2                	test   %dl,%dl
    373f:	74 1d                	je     375e <strchr+0x2e>
    3741:	38 d3                	cmp    %dl,%bl
    3743:	89 d9                	mov    %ebx,%ecx
    3745:	75 0d                	jne    3754 <strchr+0x24>
    3747:	eb 17                	jmp    3760 <strchr+0x30>
    3749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3750:	38 ca                	cmp    %cl,%dl
    3752:	74 0c                	je     3760 <strchr+0x30>
    3754:	83 c0 01             	add    $0x1,%eax
    3757:	0f b6 10             	movzbl (%eax),%edx
    375a:	84 d2                	test   %dl,%dl
    375c:	75 f2                	jne    3750 <strchr+0x20>
    375e:	31 c0                	xor    %eax,%eax
    3760:	5b                   	pop    %ebx
    3761:	5d                   	pop    %ebp
    3762:	c3                   	ret    
    3763:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3769:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003770 <gets>:
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	57                   	push   %edi
    3774:	56                   	push   %esi
    3775:	53                   	push   %ebx
    3776:	31 f6                	xor    %esi,%esi
    3778:	8d 7d e7             	lea    -0x19(%ebp),%edi
    377b:	83 ec 1c             	sub    $0x1c,%esp
    377e:	eb 29                	jmp    37a9 <gets+0x39>
    3780:	83 ec 04             	sub    $0x4,%esp
    3783:	6a 01                	push   $0x1
    3785:	57                   	push   %edi
    3786:	6a 00                	push   $0x0
    3788:	e8 2d 01 00 00       	call   38ba <read>
    378d:	83 c4 10             	add    $0x10,%esp
    3790:	85 c0                	test   %eax,%eax
    3792:	7e 1d                	jle    37b1 <gets+0x41>
    3794:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3798:	8b 55 08             	mov    0x8(%ebp),%edx
    379b:	89 de                	mov    %ebx,%esi
    379d:	3c 0a                	cmp    $0xa,%al
    379f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    37a3:	74 1b                	je     37c0 <gets+0x50>
    37a5:	3c 0d                	cmp    $0xd,%al
    37a7:	74 17                	je     37c0 <gets+0x50>
    37a9:	8d 5e 01             	lea    0x1(%esi),%ebx
    37ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    37af:	7c cf                	jl     3780 <gets+0x10>
    37b1:	8b 45 08             	mov    0x8(%ebp),%eax
    37b4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
    37b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37bb:	5b                   	pop    %ebx
    37bc:	5e                   	pop    %esi
    37bd:	5f                   	pop    %edi
    37be:	5d                   	pop    %ebp
    37bf:	c3                   	ret    
    37c0:	8b 45 08             	mov    0x8(%ebp),%eax
    37c3:	89 de                	mov    %ebx,%esi
    37c5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
    37c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37cc:	5b                   	pop    %ebx
    37cd:	5e                   	pop    %esi
    37ce:	5f                   	pop    %edi
    37cf:	5d                   	pop    %ebp
    37d0:	c3                   	ret    
    37d1:	eb 0d                	jmp    37e0 <stat>
    37d3:	90                   	nop
    37d4:	90                   	nop
    37d5:	90                   	nop
    37d6:	90                   	nop
    37d7:	90                   	nop
    37d8:	90                   	nop
    37d9:	90                   	nop
    37da:	90                   	nop
    37db:	90                   	nop
    37dc:	90                   	nop
    37dd:	90                   	nop
    37de:	90                   	nop
    37df:	90                   	nop

000037e0 <stat>:
    37e0:	55                   	push   %ebp
    37e1:	89 e5                	mov    %esp,%ebp
    37e3:	56                   	push   %esi
    37e4:	53                   	push   %ebx
    37e5:	83 ec 08             	sub    $0x8,%esp
    37e8:	6a 00                	push   $0x0
    37ea:	ff 75 08             	pushl  0x8(%ebp)
    37ed:	e8 f0 00 00 00       	call   38e2 <open>
    37f2:	83 c4 10             	add    $0x10,%esp
    37f5:	85 c0                	test   %eax,%eax
    37f7:	78 27                	js     3820 <stat+0x40>
    37f9:	83 ec 08             	sub    $0x8,%esp
    37fc:	ff 75 0c             	pushl  0xc(%ebp)
    37ff:	89 c3                	mov    %eax,%ebx
    3801:	50                   	push   %eax
    3802:	e8 f3 00 00 00       	call   38fa <fstat>
    3807:	89 c6                	mov    %eax,%esi
    3809:	89 1c 24             	mov    %ebx,(%esp)
    380c:	e8 b9 00 00 00       	call   38ca <close>
    3811:	83 c4 10             	add    $0x10,%esp
    3814:	89 f0                	mov    %esi,%eax
    3816:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3819:	5b                   	pop    %ebx
    381a:	5e                   	pop    %esi
    381b:	5d                   	pop    %ebp
    381c:	c3                   	ret    
    381d:	8d 76 00             	lea    0x0(%esi),%esi
    3820:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3825:	eb ef                	jmp    3816 <stat+0x36>
    3827:	89 f6                	mov    %esi,%esi
    3829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003830 <atoi>:
    3830:	55                   	push   %ebp
    3831:	89 e5                	mov    %esp,%ebp
    3833:	53                   	push   %ebx
    3834:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3837:	0f be 11             	movsbl (%ecx),%edx
    383a:	8d 42 d0             	lea    -0x30(%edx),%eax
    383d:	3c 09                	cmp    $0x9,%al
    383f:	b8 00 00 00 00       	mov    $0x0,%eax
    3844:	77 1f                	ja     3865 <atoi+0x35>
    3846:	8d 76 00             	lea    0x0(%esi),%esi
    3849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3850:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3853:	83 c1 01             	add    $0x1,%ecx
    3856:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
    385a:	0f be 11             	movsbl (%ecx),%edx
    385d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3860:	80 fb 09             	cmp    $0x9,%bl
    3863:	76 eb                	jbe    3850 <atoi+0x20>
    3865:	5b                   	pop    %ebx
    3866:	5d                   	pop    %ebp
    3867:	c3                   	ret    
    3868:	90                   	nop
    3869:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003870 <memmove>:
    3870:	55                   	push   %ebp
    3871:	89 e5                	mov    %esp,%ebp
    3873:	56                   	push   %esi
    3874:	53                   	push   %ebx
    3875:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3878:	8b 45 08             	mov    0x8(%ebp),%eax
    387b:	8b 75 0c             	mov    0xc(%ebp),%esi
    387e:	85 db                	test   %ebx,%ebx
    3880:	7e 14                	jle    3896 <memmove+0x26>
    3882:	31 d2                	xor    %edx,%edx
    3884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3888:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    388c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    388f:	83 c2 01             	add    $0x1,%edx
    3892:	39 da                	cmp    %ebx,%edx
    3894:	75 f2                	jne    3888 <memmove+0x18>
    3896:	5b                   	pop    %ebx
    3897:	5e                   	pop    %esi
    3898:	5d                   	pop    %ebp
    3899:	c3                   	ret    

0000389a <fork>:
    389a:	b8 01 00 00 00       	mov    $0x1,%eax
    389f:	cd 40                	int    $0x40
    38a1:	c3                   	ret    

000038a2 <exit>:
    38a2:	b8 02 00 00 00       	mov    $0x2,%eax
    38a7:	cd 40                	int    $0x40
    38a9:	c3                   	ret    

000038aa <wait>:
    38aa:	b8 03 00 00 00       	mov    $0x3,%eax
    38af:	cd 40                	int    $0x40
    38b1:	c3                   	ret    

000038b2 <pipe>:
    38b2:	b8 04 00 00 00       	mov    $0x4,%eax
    38b7:	cd 40                	int    $0x40
    38b9:	c3                   	ret    

000038ba <read>:
    38ba:	b8 05 00 00 00       	mov    $0x5,%eax
    38bf:	cd 40                	int    $0x40
    38c1:	c3                   	ret    

000038c2 <write>:
    38c2:	b8 10 00 00 00       	mov    $0x10,%eax
    38c7:	cd 40                	int    $0x40
    38c9:	c3                   	ret    

000038ca <close>:
    38ca:	b8 15 00 00 00       	mov    $0x15,%eax
    38cf:	cd 40                	int    $0x40
    38d1:	c3                   	ret    

000038d2 <kill>:
    38d2:	b8 06 00 00 00       	mov    $0x6,%eax
    38d7:	cd 40                	int    $0x40
    38d9:	c3                   	ret    

000038da <exec>:
    38da:	b8 07 00 00 00       	mov    $0x7,%eax
    38df:	cd 40                	int    $0x40
    38e1:	c3                   	ret    

000038e2 <open>:
    38e2:	b8 0f 00 00 00       	mov    $0xf,%eax
    38e7:	cd 40                	int    $0x40
    38e9:	c3                   	ret    

000038ea <mknod>:
    38ea:	b8 11 00 00 00       	mov    $0x11,%eax
    38ef:	cd 40                	int    $0x40
    38f1:	c3                   	ret    

000038f2 <unlink>:
    38f2:	b8 12 00 00 00       	mov    $0x12,%eax
    38f7:	cd 40                	int    $0x40
    38f9:	c3                   	ret    

000038fa <fstat>:
    38fa:	b8 08 00 00 00       	mov    $0x8,%eax
    38ff:	cd 40                	int    $0x40
    3901:	c3                   	ret    

00003902 <link>:
    3902:	b8 13 00 00 00       	mov    $0x13,%eax
    3907:	cd 40                	int    $0x40
    3909:	c3                   	ret    

0000390a <mkdir>:
    390a:	b8 14 00 00 00       	mov    $0x14,%eax
    390f:	cd 40                	int    $0x40
    3911:	c3                   	ret    

00003912 <chdir>:
    3912:	b8 09 00 00 00       	mov    $0x9,%eax
    3917:	cd 40                	int    $0x40
    3919:	c3                   	ret    

0000391a <dup>:
    391a:	b8 0a 00 00 00       	mov    $0xa,%eax
    391f:	cd 40                	int    $0x40
    3921:	c3                   	ret    

00003922 <getpid>:
    3922:	b8 0b 00 00 00       	mov    $0xb,%eax
    3927:	cd 40                	int    $0x40
    3929:	c3                   	ret    

0000392a <sbrk>:
    392a:	b8 0c 00 00 00       	mov    $0xc,%eax
    392f:	cd 40                	int    $0x40
    3931:	c3                   	ret    

00003932 <sleep>:
    3932:	b8 0d 00 00 00       	mov    $0xd,%eax
    3937:	cd 40                	int    $0x40
    3939:	c3                   	ret    

0000393a <uptime>:
    393a:	b8 0e 00 00 00       	mov    $0xe,%eax
    393f:	cd 40                	int    $0x40
    3941:	c3                   	ret    

00003942 <random>:
    3942:	b8 16 00 00 00       	mov    $0x16,%eax
    3947:	cd 40                	int    $0x40
    3949:	c3                   	ret    

0000394a <cprocstate>:
    394a:	b8 18 00 00 00       	mov    $0x18,%eax
    394f:	cd 40                	int    $0x40
    3951:	c3                   	ret    

00003952 <signalinfo>:
    3952:	b8 19 00 00 00       	mov    $0x19,%eax
    3957:	cd 40                	int    $0x40
    3959:	c3                   	ret    

0000395a <setseed>:
    395a:	b8 17 00 00 00       	mov    $0x17,%eax
    395f:	cd 40                	int    $0x40
    3961:	c3                   	ret    
    3962:	66 90                	xchg   %ax,%ax
    3964:	66 90                	xchg   %ax,%ax
    3966:	66 90                	xchg   %ax,%ax
    3968:	66 90                	xchg   %ax,%ax
    396a:	66 90                	xchg   %ax,%ax
    396c:	66 90                	xchg   %ax,%ax
    396e:	66 90                	xchg   %ax,%ax

00003970 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3970:	55                   	push   %ebp
    3971:	89 e5                	mov    %esp,%ebp
    3973:	57                   	push   %edi
    3974:	56                   	push   %esi
    3975:	89 c6                	mov    %eax,%esi
    3977:	53                   	push   %ebx
    3978:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    397b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    397e:	85 db                	test   %ebx,%ebx
    3980:	74 09                	je     398b <printint+0x1b>
    3982:	89 d0                	mov    %edx,%eax
    3984:	c1 e8 1f             	shr    $0x1f,%eax
    3987:	84 c0                	test   %al,%al
    3989:	75 75                	jne    3a00 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    398b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    398d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3994:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
    3997:	31 ff                	xor    %edi,%edi
    3999:	89 ce                	mov    %ecx,%esi
    399b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    399e:	eb 02                	jmp    39a2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    39a0:	89 cf                	mov    %ecx,%edi
    39a2:	31 d2                	xor    %edx,%edx
    39a4:	f7 f6                	div    %esi
    39a6:	8d 4f 01             	lea    0x1(%edi),%ecx
    39a9:	0f b6 92 1f 55 00 00 	movzbl 0x551f(%edx),%edx
  }while((x /= base) != 0);
    39b0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    39b2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    39b5:	75 e9                	jne    39a0 <printint+0x30>
  if(neg)
    39b7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    39ba:	89 c8                	mov    %ecx,%eax
    39bc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
    39bf:	85 d2                	test   %edx,%edx
    39c1:	74 08                	je     39cb <printint+0x5b>
    buf[i++] = '-';
    39c3:	8d 4f 02             	lea    0x2(%edi),%ecx
    39c6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    39cb:	8d 79 ff             	lea    -0x1(%ecx),%edi
    39ce:	66 90                	xchg   %ax,%ax
    39d0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    39d5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    39d8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    39df:	00 
    39e0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    39e4:	89 34 24             	mov    %esi,(%esp)
    39e7:	88 45 d7             	mov    %al,-0x29(%ebp)
    39ea:	e8 d3 fe ff ff       	call   38c2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    39ef:	83 ff ff             	cmp    $0xffffffff,%edi
    39f2:	75 dc                	jne    39d0 <printint+0x60>
    putc(fd, buf[i]);
}
    39f4:	83 c4 4c             	add    $0x4c,%esp
    39f7:	5b                   	pop    %ebx
    39f8:	5e                   	pop    %esi
    39f9:	5f                   	pop    %edi
    39fa:	5d                   	pop    %ebp
    39fb:	c3                   	ret    
    39fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    3a00:	89 d0                	mov    %edx,%eax
    3a02:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    3a04:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    3a0b:	eb 87                	jmp    3994 <printint+0x24>
    3a0d:	8d 76 00             	lea    0x0(%esi),%esi

00003a10 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3a10:	55                   	push   %ebp
    3a11:	89 e5                	mov    %esp,%ebp
    3a13:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    3a14:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3a16:	56                   	push   %esi
    3a17:	53                   	push   %ebx
    3a18:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a1b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    3a1e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3a21:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    3a24:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    3a27:	0f b6 13             	movzbl (%ebx),%edx
    3a2a:	83 c3 01             	add    $0x1,%ebx
    3a2d:	84 d2                	test   %dl,%dl
    3a2f:	75 39                	jne    3a6a <printf+0x5a>
    3a31:	e9 c2 00 00 00       	jmp    3af8 <printf+0xe8>
    3a36:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3a38:	83 fa 25             	cmp    $0x25,%edx
    3a3b:	0f 84 bf 00 00 00    	je     3b00 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3a41:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3a44:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3a4b:	00 
    3a4c:	89 44 24 04          	mov    %eax,0x4(%esp)
    3a50:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
    3a53:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3a56:	e8 67 fe ff ff       	call   38c2 <write>
    3a5b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a5e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3a62:	84 d2                	test   %dl,%dl
    3a64:	0f 84 8e 00 00 00    	je     3af8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    3a6a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    3a6c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    3a6f:	74 c7                	je     3a38 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3a71:	83 ff 25             	cmp    $0x25,%edi
    3a74:	75 e5                	jne    3a5b <printf+0x4b>
      if(c == 'd'){
    3a76:	83 fa 64             	cmp    $0x64,%edx
    3a79:	0f 84 31 01 00 00    	je     3bb0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3a7f:	25 f7 00 00 00       	and    $0xf7,%eax
    3a84:	83 f8 70             	cmp    $0x70,%eax
    3a87:	0f 84 83 00 00 00    	je     3b10 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3a8d:	83 fa 73             	cmp    $0x73,%edx
    3a90:	0f 84 a2 00 00 00    	je     3b38 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3a96:	83 fa 63             	cmp    $0x63,%edx
    3a99:	0f 84 35 01 00 00    	je     3bd4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3a9f:	83 fa 25             	cmp    $0x25,%edx
    3aa2:	0f 84 e0 00 00 00    	je     3b88 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3aa8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3aab:	83 c3 01             	add    $0x1,%ebx
    3aae:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ab5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3ab6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3ab8:	89 44 24 04          	mov    %eax,0x4(%esp)
    3abc:	89 34 24             	mov    %esi,(%esp)
    3abf:	89 55 d0             	mov    %edx,-0x30(%ebp)
    3ac2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    3ac6:	e8 f7 fd ff ff       	call   38c2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    3acb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3ace:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3ad1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ad8:	00 
    3ad9:	89 44 24 04          	mov    %eax,0x4(%esp)
    3add:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    3ae0:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3ae3:	e8 da fd ff ff       	call   38c2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3ae8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3aec:	84 d2                	test   %dl,%dl
    3aee:	0f 85 76 ff ff ff    	jne    3a6a <printf+0x5a>
    3af4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3af8:	83 c4 3c             	add    $0x3c,%esp
    3afb:	5b                   	pop    %ebx
    3afc:	5e                   	pop    %esi
    3afd:	5f                   	pop    %edi
    3afe:	5d                   	pop    %ebp
    3aff:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3b00:	bf 25 00 00 00       	mov    $0x25,%edi
    3b05:	e9 51 ff ff ff       	jmp    3a5b <printf+0x4b>
    3b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    3b10:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3b13:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3b18:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    3b1a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b21:	8b 10                	mov    (%eax),%edx
    3b23:	89 f0                	mov    %esi,%eax
    3b25:	e8 46 fe ff ff       	call   3970 <printint>
        ap++;
    3b2a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3b2e:	e9 28 ff ff ff       	jmp    3a5b <printf+0x4b>
    3b33:	90                   	nop
    3b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    3b38:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    3b3b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    3b3f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    3b41:	b8 18 55 00 00       	mov    $0x5518,%eax
    3b46:	85 ff                	test   %edi,%edi
    3b48:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    3b4b:	0f b6 07             	movzbl (%edi),%eax
    3b4e:	84 c0                	test   %al,%al
    3b50:	74 2a                	je     3b7c <printf+0x16c>
    3b52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3b58:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3b5b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    3b5e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3b61:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3b68:	00 
    3b69:	89 44 24 04          	mov    %eax,0x4(%esp)
    3b6d:	89 34 24             	mov    %esi,(%esp)
    3b70:	e8 4d fd ff ff       	call   38c2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    3b75:	0f b6 07             	movzbl (%edi),%eax
    3b78:	84 c0                	test   %al,%al
    3b7a:	75 dc                	jne    3b58 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3b7c:	31 ff                	xor    %edi,%edi
    3b7e:	e9 d8 fe ff ff       	jmp    3a5b <printf+0x4b>
    3b83:	90                   	nop
    3b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3b88:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3b8b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3b8d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3b94:	00 
    3b95:	89 44 24 04          	mov    %eax,0x4(%esp)
    3b99:	89 34 24             	mov    %esi,(%esp)
    3b9c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    3ba0:	e8 1d fd ff ff       	call   38c2 <write>
    3ba5:	e9 b1 fe ff ff       	jmp    3a5b <printf+0x4b>
    3baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    3bb0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3bb3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3bb8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    3bbb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3bc2:	8b 10                	mov    (%eax),%edx
    3bc4:	89 f0                	mov    %esi,%eax
    3bc6:	e8 a5 fd ff ff       	call   3970 <printint>
        ap++;
    3bcb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3bcf:	e9 87 fe ff ff       	jmp    3a5b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    3bd4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3bd7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    3bd9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3bdb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3be2:	00 
    3be3:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    3be6:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3be9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3bec:	89 44 24 04          	mov    %eax,0x4(%esp)
    3bf0:	e8 cd fc ff ff       	call   38c2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    3bf5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3bf9:	e9 5d fe ff ff       	jmp    3a5b <printf+0x4b>
    3bfe:	66 90                	xchg   %ax,%ax

00003c00 <free>:
    3c00:	55                   	push   %ebp
    3c01:	a1 c0 5e 00 00       	mov    0x5ec0,%eax
    3c06:	89 e5                	mov    %esp,%ebp
    3c08:	57                   	push   %edi
    3c09:	56                   	push   %esi
    3c0a:	53                   	push   %ebx
    3c0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3c0e:	8b 10                	mov    (%eax),%edx
    3c10:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    3c13:	39 c8                	cmp    %ecx,%eax
    3c15:	73 19                	jae    3c30 <free+0x30>
    3c17:	89 f6                	mov    %esi,%esi
    3c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3c20:	39 d1                	cmp    %edx,%ecx
    3c22:	72 1c                	jb     3c40 <free+0x40>
    3c24:	39 d0                	cmp    %edx,%eax
    3c26:	73 18                	jae    3c40 <free+0x40>
    3c28:	89 d0                	mov    %edx,%eax
    3c2a:	39 c8                	cmp    %ecx,%eax
    3c2c:	8b 10                	mov    (%eax),%edx
    3c2e:	72 f0                	jb     3c20 <free+0x20>
    3c30:	39 d0                	cmp    %edx,%eax
    3c32:	72 f4                	jb     3c28 <free+0x28>
    3c34:	39 d1                	cmp    %edx,%ecx
    3c36:	73 f0                	jae    3c28 <free+0x28>
    3c38:	90                   	nop
    3c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c40:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c43:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c46:	39 d7                	cmp    %edx,%edi
    3c48:	74 19                	je     3c63 <free+0x63>
    3c4a:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3c4d:	8b 50 04             	mov    0x4(%eax),%edx
    3c50:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c53:	39 f1                	cmp    %esi,%ecx
    3c55:	74 23                	je     3c7a <free+0x7a>
    3c57:	89 08                	mov    %ecx,(%eax)
    3c59:	a3 c0 5e 00 00       	mov    %eax,0x5ec0
    3c5e:	5b                   	pop    %ebx
    3c5f:	5e                   	pop    %esi
    3c60:	5f                   	pop    %edi
    3c61:	5d                   	pop    %ebp
    3c62:	c3                   	ret    
    3c63:	03 72 04             	add    0x4(%edx),%esi
    3c66:	89 73 fc             	mov    %esi,-0x4(%ebx)
    3c69:	8b 10                	mov    (%eax),%edx
    3c6b:	8b 12                	mov    (%edx),%edx
    3c6d:	89 53 f8             	mov    %edx,-0x8(%ebx)
    3c70:	8b 50 04             	mov    0x4(%eax),%edx
    3c73:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c76:	39 f1                	cmp    %esi,%ecx
    3c78:	75 dd                	jne    3c57 <free+0x57>
    3c7a:	03 53 fc             	add    -0x4(%ebx),%edx
    3c7d:	a3 c0 5e 00 00       	mov    %eax,0x5ec0
    3c82:	89 50 04             	mov    %edx,0x4(%eax)
    3c85:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3c88:	89 10                	mov    %edx,(%eax)
    3c8a:	5b                   	pop    %ebx
    3c8b:	5e                   	pop    %esi
    3c8c:	5f                   	pop    %edi
    3c8d:	5d                   	pop    %ebp
    3c8e:	c3                   	ret    
    3c8f:	90                   	nop

00003c90 <malloc>:
    3c90:	55                   	push   %ebp
    3c91:	89 e5                	mov    %esp,%ebp
    3c93:	57                   	push   %edi
    3c94:	56                   	push   %esi
    3c95:	53                   	push   %ebx
    3c96:	83 ec 0c             	sub    $0xc,%esp
    3c99:	8b 45 08             	mov    0x8(%ebp),%eax
    3c9c:	8b 15 c0 5e 00 00    	mov    0x5ec0,%edx
    3ca2:	8d 78 07             	lea    0x7(%eax),%edi
    3ca5:	c1 ef 03             	shr    $0x3,%edi
    3ca8:	83 c7 01             	add    $0x1,%edi
    3cab:	85 d2                	test   %edx,%edx
    3cad:	0f 84 a3 00 00 00    	je     3d56 <malloc+0xc6>
    3cb3:	8b 02                	mov    (%edx),%eax
    3cb5:	8b 48 04             	mov    0x4(%eax),%ecx
    3cb8:	39 cf                	cmp    %ecx,%edi
    3cba:	76 74                	jbe    3d30 <malloc+0xa0>
    3cbc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    3cc2:	be 00 10 00 00       	mov    $0x1000,%esi
    3cc7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    3cce:	0f 43 f7             	cmovae %edi,%esi
    3cd1:	ba 00 80 00 00       	mov    $0x8000,%edx
    3cd6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    3cdc:	0f 46 da             	cmovbe %edx,%ebx
    3cdf:	eb 10                	jmp    3cf1 <malloc+0x61>
    3ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3ce8:	8b 02                	mov    (%edx),%eax
    3cea:	8b 48 04             	mov    0x4(%eax),%ecx
    3ced:	39 cf                	cmp    %ecx,%edi
    3cef:	76 3f                	jbe    3d30 <malloc+0xa0>
    3cf1:	39 05 c0 5e 00 00    	cmp    %eax,0x5ec0
    3cf7:	89 c2                	mov    %eax,%edx
    3cf9:	75 ed                	jne    3ce8 <malloc+0x58>
    3cfb:	83 ec 0c             	sub    $0xc,%esp
    3cfe:	53                   	push   %ebx
    3cff:	e8 26 fc ff ff       	call   392a <sbrk>
    3d04:	83 c4 10             	add    $0x10,%esp
    3d07:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d0a:	74 1c                	je     3d28 <malloc+0x98>
    3d0c:	89 70 04             	mov    %esi,0x4(%eax)
    3d0f:	83 ec 0c             	sub    $0xc,%esp
    3d12:	83 c0 08             	add    $0x8,%eax
    3d15:	50                   	push   %eax
    3d16:	e8 e5 fe ff ff       	call   3c00 <free>
    3d1b:	8b 15 c0 5e 00 00    	mov    0x5ec0,%edx
    3d21:	83 c4 10             	add    $0x10,%esp
    3d24:	85 d2                	test   %edx,%edx
    3d26:	75 c0                	jne    3ce8 <malloc+0x58>
    3d28:	31 c0                	xor    %eax,%eax
    3d2a:	eb 1c                	jmp    3d48 <malloc+0xb8>
    3d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d30:	39 cf                	cmp    %ecx,%edi
    3d32:	74 1c                	je     3d50 <malloc+0xc0>
    3d34:	29 f9                	sub    %edi,%ecx
    3d36:	89 48 04             	mov    %ecx,0x4(%eax)
    3d39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
    3d3c:	89 78 04             	mov    %edi,0x4(%eax)
    3d3f:	89 15 c0 5e 00 00    	mov    %edx,0x5ec0
    3d45:	83 c0 08             	add    $0x8,%eax
    3d48:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d4b:	5b                   	pop    %ebx
    3d4c:	5e                   	pop    %esi
    3d4d:	5f                   	pop    %edi
    3d4e:	5d                   	pop    %ebp
    3d4f:	c3                   	ret    
    3d50:	8b 08                	mov    (%eax),%ecx
    3d52:	89 0a                	mov    %ecx,(%edx)
    3d54:	eb e9                	jmp    3d3f <malloc+0xaf>
    3d56:	c7 05 c0 5e 00 00 c4 	movl   $0x5ec4,0x5ec0
    3d5d:	5e 00 00 
    3d60:	c7 05 c4 5e 00 00 c4 	movl   $0x5ec4,0x5ec4
    3d67:	5e 00 00 
    3d6a:	b8 c4 5e 00 00       	mov    $0x5ec4,%eax
    3d6f:	c7 05 c8 5e 00 00 00 	movl   $0x0,0x5ec8
    3d76:	00 00 00 
    3d79:	e9 3e ff ff ff       	jmp    3cbc <malloc+0x2c>
