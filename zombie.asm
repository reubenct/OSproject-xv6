
_zombie:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  11:	e8 54 02 00 00       	call   26a <fork>
  16:	85 c0                	test   %eax,%eax
  18:	7e 0d                	jle    27 <main+0x27>
  1a:	83 ec 0c             	sub    $0xc,%esp
  1d:	6a 05                	push   $0x5
  1f:	e8 de 02 00 00       	call   302 <sleep>
  24:	83 c4 10             	add    $0x10,%esp
  27:	e8 46 02 00 00       	call   272 <exit>
  2c:	66 90                	xchg   %ax,%ax
  2e:	66 90                	xchg   %ax,%ax

00000030 <strcpy>:
  30:	55                   	push   %ebp
  31:	89 e5                	mov    %esp,%ebp
  33:	53                   	push   %ebx
  34:	8b 45 08             	mov    0x8(%ebp),%eax
  37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  3a:	89 c2                	mov    %eax,%edx
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  40:	83 c1 01             	add    $0x1,%ecx
  43:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
  47:	83 c2 01             	add    $0x1,%edx
  4a:	84 db                	test   %bl,%bl
  4c:	88 5a ff             	mov    %bl,-0x1(%edx)
  4f:	75 ef                	jne    40 <strcpy+0x10>
  51:	5b                   	pop    %ebx
  52:	5d                   	pop    %ebp
  53:	c3                   	ret    
  54:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  5a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000060 <strcmp>:
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	8b 55 08             	mov    0x8(%ebp),%edx
  68:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  6b:	0f b6 02             	movzbl (%edx),%eax
  6e:	0f b6 19             	movzbl (%ecx),%ebx
  71:	84 c0                	test   %al,%al
  73:	75 1e                	jne    93 <strcmp+0x33>
  75:	eb 29                	jmp    a0 <strcmp+0x40>
  77:	89 f6                	mov    %esi,%esi
  79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  80:	83 c2 01             	add    $0x1,%edx
  83:	0f b6 02             	movzbl (%edx),%eax
  86:	8d 71 01             	lea    0x1(%ecx),%esi
  89:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  8d:	84 c0                	test   %al,%al
  8f:	74 0f                	je     a0 <strcmp+0x40>
  91:	89 f1                	mov    %esi,%ecx
  93:	38 d8                	cmp    %bl,%al
  95:	74 e9                	je     80 <strcmp+0x20>
  97:	29 d8                	sub    %ebx,%eax
  99:	5b                   	pop    %ebx
  9a:	5e                   	pop    %esi
  9b:	5d                   	pop    %ebp
  9c:	c3                   	ret    
  9d:	8d 76 00             	lea    0x0(%esi),%esi
  a0:	31 c0                	xor    %eax,%eax
  a2:	29 d8                	sub    %ebx,%eax
  a4:	5b                   	pop    %ebx
  a5:	5e                   	pop    %esi
  a6:	5d                   	pop    %ebp
  a7:	c3                   	ret    
  a8:	90                   	nop
  a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000000b0 <strlen>:
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b6:	80 39 00             	cmpb   $0x0,(%ecx)
  b9:	74 12                	je     cd <strlen+0x1d>
  bb:	31 d2                	xor    %edx,%edx
  bd:	8d 76 00             	lea    0x0(%esi),%esi
  c0:	83 c2 01             	add    $0x1,%edx
  c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
  c7:	89 d0                	mov    %edx,%eax
  c9:	75 f5                	jne    c0 <strlen+0x10>
  cb:	5d                   	pop    %ebp
  cc:	c3                   	ret    
  cd:	31 c0                	xor    %eax,%eax
  cf:	5d                   	pop    %ebp
  d0:	c3                   	ret    
  d1:	eb 0d                	jmp    e0 <memset>
  d3:	90                   	nop
  d4:	90                   	nop
  d5:	90                   	nop
  d6:	90                   	nop
  d7:	90                   	nop
  d8:	90                   	nop
  d9:	90                   	nop
  da:	90                   	nop
  db:	90                   	nop
  dc:	90                   	nop
  dd:	90                   	nop
  de:	90                   	nop
  df:	90                   	nop

000000e0 <memset>:
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	57                   	push   %edi
  e4:	8b 55 08             	mov    0x8(%ebp),%edx
  e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  ed:	89 d7                	mov    %edx,%edi
  ef:	fc                   	cld    
  f0:	f3 aa                	rep stos %al,%es:(%edi)
  f2:	89 d0                	mov    %edx,%eax
  f4:	5f                   	pop    %edi
  f5:	5d                   	pop    %ebp
  f6:	c3                   	ret    
  f7:	89 f6                	mov    %esi,%esi
  f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000100 <strchr>:
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	53                   	push   %ebx
 104:	8b 45 08             	mov    0x8(%ebp),%eax
 107:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 10a:	0f b6 10             	movzbl (%eax),%edx
 10d:	84 d2                	test   %dl,%dl
 10f:	74 1d                	je     12e <strchr+0x2e>
 111:	38 d3                	cmp    %dl,%bl
 113:	89 d9                	mov    %ebx,%ecx
 115:	75 0d                	jne    124 <strchr+0x24>
 117:	eb 17                	jmp    130 <strchr+0x30>
 119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 120:	38 ca                	cmp    %cl,%dl
 122:	74 0c                	je     130 <strchr+0x30>
 124:	83 c0 01             	add    $0x1,%eax
 127:	0f b6 10             	movzbl (%eax),%edx
 12a:	84 d2                	test   %dl,%dl
 12c:	75 f2                	jne    120 <strchr+0x20>
 12e:	31 c0                	xor    %eax,%eax
 130:	5b                   	pop    %ebx
 131:	5d                   	pop    %ebp
 132:	c3                   	ret    
 133:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000140 <gets>:
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	57                   	push   %edi
 144:	56                   	push   %esi
 145:	53                   	push   %ebx
 146:	31 f6                	xor    %esi,%esi
 148:	8d 7d e7             	lea    -0x19(%ebp),%edi
 14b:	83 ec 1c             	sub    $0x1c,%esp
 14e:	eb 29                	jmp    179 <gets+0x39>
 150:	83 ec 04             	sub    $0x4,%esp
 153:	6a 01                	push   $0x1
 155:	57                   	push   %edi
 156:	6a 00                	push   $0x0
 158:	e8 2d 01 00 00       	call   28a <read>
 15d:	83 c4 10             	add    $0x10,%esp
 160:	85 c0                	test   %eax,%eax
 162:	7e 1d                	jle    181 <gets+0x41>
 164:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 168:	8b 55 08             	mov    0x8(%ebp),%edx
 16b:	89 de                	mov    %ebx,%esi
 16d:	3c 0a                	cmp    $0xa,%al
 16f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 173:	74 1b                	je     190 <gets+0x50>
 175:	3c 0d                	cmp    $0xd,%al
 177:	74 17                	je     190 <gets+0x50>
 179:	8d 5e 01             	lea    0x1(%esi),%ebx
 17c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 17f:	7c cf                	jl     150 <gets+0x10>
 181:	8b 45 08             	mov    0x8(%ebp),%eax
 184:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 188:	8d 65 f4             	lea    -0xc(%ebp),%esp
 18b:	5b                   	pop    %ebx
 18c:	5e                   	pop    %esi
 18d:	5f                   	pop    %edi
 18e:	5d                   	pop    %ebp
 18f:	c3                   	ret    
 190:	8b 45 08             	mov    0x8(%ebp),%eax
 193:	89 de                	mov    %ebx,%esi
 195:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 199:	8d 65 f4             	lea    -0xc(%ebp),%esp
 19c:	5b                   	pop    %ebx
 19d:	5e                   	pop    %esi
 19e:	5f                   	pop    %edi
 19f:	5d                   	pop    %ebp
 1a0:	c3                   	ret    
 1a1:	eb 0d                	jmp    1b0 <stat>
 1a3:	90                   	nop
 1a4:	90                   	nop
 1a5:	90                   	nop
 1a6:	90                   	nop
 1a7:	90                   	nop
 1a8:	90                   	nop
 1a9:	90                   	nop
 1aa:	90                   	nop
 1ab:	90                   	nop
 1ac:	90                   	nop
 1ad:	90                   	nop
 1ae:	90                   	nop
 1af:	90                   	nop

000001b0 <stat>:
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
 1b5:	83 ec 08             	sub    $0x8,%esp
 1b8:	6a 00                	push   $0x0
 1ba:	ff 75 08             	pushl  0x8(%ebp)
 1bd:	e8 f0 00 00 00       	call   2b2 <open>
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	85 c0                	test   %eax,%eax
 1c7:	78 27                	js     1f0 <stat+0x40>
 1c9:	83 ec 08             	sub    $0x8,%esp
 1cc:	ff 75 0c             	pushl  0xc(%ebp)
 1cf:	89 c3                	mov    %eax,%ebx
 1d1:	50                   	push   %eax
 1d2:	e8 f3 00 00 00       	call   2ca <fstat>
 1d7:	89 c6                	mov    %eax,%esi
 1d9:	89 1c 24             	mov    %ebx,(%esp)
 1dc:	e8 b9 00 00 00       	call   29a <close>
 1e1:	83 c4 10             	add    $0x10,%esp
 1e4:	89 f0                	mov    %esi,%eax
 1e6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1e9:	5b                   	pop    %ebx
 1ea:	5e                   	pop    %esi
 1eb:	5d                   	pop    %ebp
 1ec:	c3                   	ret    
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
 1f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 1f5:	eb ef                	jmp    1e6 <stat+0x36>
 1f7:	89 f6                	mov    %esi,%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000200 <atoi>:
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 4d 08             	mov    0x8(%ebp),%ecx
 207:	0f be 11             	movsbl (%ecx),%edx
 20a:	8d 42 d0             	lea    -0x30(%edx),%eax
 20d:	3c 09                	cmp    $0x9,%al
 20f:	b8 00 00 00 00       	mov    $0x0,%eax
 214:	77 1f                	ja     235 <atoi+0x35>
 216:	8d 76 00             	lea    0x0(%esi),%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 220:	8d 04 80             	lea    (%eax,%eax,4),%eax
 223:	83 c1 01             	add    $0x1,%ecx
 226:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 22a:	0f be 11             	movsbl (%ecx),%edx
 22d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 230:	80 fb 09             	cmp    $0x9,%bl
 233:	76 eb                	jbe    220 <atoi+0x20>
 235:	5b                   	pop    %ebx
 236:	5d                   	pop    %ebp
 237:	c3                   	ret    
 238:	90                   	nop
 239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000240 <memmove>:
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	56                   	push   %esi
 244:	53                   	push   %ebx
 245:	8b 5d 10             	mov    0x10(%ebp),%ebx
 248:	8b 45 08             	mov    0x8(%ebp),%eax
 24b:	8b 75 0c             	mov    0xc(%ebp),%esi
 24e:	85 db                	test   %ebx,%ebx
 250:	7e 14                	jle    266 <memmove+0x26>
 252:	31 d2                	xor    %edx,%edx
 254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 258:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 25c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 25f:	83 c2 01             	add    $0x1,%edx
 262:	39 da                	cmp    %ebx,%edx
 264:	75 f2                	jne    258 <memmove+0x18>
 266:	5b                   	pop    %ebx
 267:	5e                   	pop    %esi
 268:	5d                   	pop    %ebp
 269:	c3                   	ret    

0000026a <fork>:
 26a:	b8 01 00 00 00       	mov    $0x1,%eax
 26f:	cd 40                	int    $0x40
 271:	c3                   	ret    

00000272 <exit>:
 272:	b8 02 00 00 00       	mov    $0x2,%eax
 277:	cd 40                	int    $0x40
 279:	c3                   	ret    

0000027a <wait>:
 27a:	b8 03 00 00 00       	mov    $0x3,%eax
 27f:	cd 40                	int    $0x40
 281:	c3                   	ret    

00000282 <pipe>:
 282:	b8 04 00 00 00       	mov    $0x4,%eax
 287:	cd 40                	int    $0x40
 289:	c3                   	ret    

0000028a <read>:
 28a:	b8 05 00 00 00       	mov    $0x5,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    

00000292 <write>:
 292:	b8 10 00 00 00       	mov    $0x10,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    

0000029a <close>:
 29a:	b8 15 00 00 00       	mov    $0x15,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    

000002a2 <kill>:
 2a2:	b8 06 00 00 00       	mov    $0x6,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    

000002aa <exec>:
 2aa:	b8 07 00 00 00       	mov    $0x7,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    

000002b2 <open>:
 2b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    

000002ba <mknod>:
 2ba:	b8 11 00 00 00       	mov    $0x11,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    

000002c2 <unlink>:
 2c2:	b8 12 00 00 00       	mov    $0x12,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    

000002ca <fstat>:
 2ca:	b8 08 00 00 00       	mov    $0x8,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    

000002d2 <link>:
 2d2:	b8 13 00 00 00       	mov    $0x13,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    

000002da <mkdir>:
 2da:	b8 14 00 00 00       	mov    $0x14,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    

000002e2 <chdir>:
 2e2:	b8 09 00 00 00       	mov    $0x9,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    

000002ea <dup>:
 2ea:	b8 0a 00 00 00       	mov    $0xa,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    

000002f2 <getpid>:
 2f2:	b8 0b 00 00 00       	mov    $0xb,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    

000002fa <sbrk>:
 2fa:	b8 0c 00 00 00       	mov    $0xc,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    

00000302 <sleep>:
 302:	b8 0d 00 00 00       	mov    $0xd,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    

0000030a <uptime>:
 30a:	b8 0e 00 00 00       	mov    $0xe,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    

00000312 <random>:
 312:	b8 16 00 00 00       	mov    $0x16,%eax
 317:	cd 40                	int    $0x40
 319:	c3                   	ret    

0000031a <cprocstate>:
 31a:	b8 18 00 00 00       	mov    $0x18,%eax
 31f:	cd 40                	int    $0x40
 321:	c3                   	ret    

00000322 <signalinfo>:
 322:	b8 19 00 00 00       	mov    $0x19,%eax
 327:	cd 40                	int    $0x40
 329:	c3                   	ret    

0000032a <setseed>:
 32a:	b8 17 00 00 00       	mov    $0x17,%eax
 32f:	cd 40                	int    $0x40
 331:	c3                   	ret    
 332:	66 90                	xchg   %ax,%ax
 334:	66 90                	xchg   %ax,%ax
 336:	66 90                	xchg   %ax,%ax
 338:	66 90                	xchg   %ax,%ax
 33a:	66 90                	xchg   %ax,%ax
 33c:	66 90                	xchg   %ax,%ax
 33e:	66 90                	xchg   %ax,%ax

00000340 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	89 c6                	mov    %eax,%esi
 347:	53                   	push   %ebx
 348:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 34b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 34e:	85 db                	test   %ebx,%ebx
 350:	74 09                	je     35b <printint+0x1b>
 352:	89 d0                	mov    %edx,%eax
 354:	c1 e8 1f             	shr    $0x1f,%eax
 357:	84 c0                	test   %al,%al
 359:	75 75                	jne    3d0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 35b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 35d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 364:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 367:	31 ff                	xor    %edi,%edi
 369:	89 ce                	mov    %ecx,%esi
 36b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 36e:	eb 02                	jmp    372 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 370:	89 cf                	mov    %ecx,%edi
 372:	31 d2                	xor    %edx,%edx
 374:	f7 f6                	div    %esi
 376:	8d 4f 01             	lea    0x1(%edi),%ecx
 379:	0f b6 92 55 07 00 00 	movzbl 0x755(%edx),%edx
  }while((x /= base) != 0);
 380:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 382:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 385:	75 e9                	jne    370 <printint+0x30>
  if(neg)
 387:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 38a:	89 c8                	mov    %ecx,%eax
 38c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 38f:	85 d2                	test   %edx,%edx
 391:	74 08                	je     39b <printint+0x5b>
    buf[i++] = '-';
 393:	8d 4f 02             	lea    0x2(%edi),%ecx
 396:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 39b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 39e:	66 90                	xchg   %ax,%ax
 3a0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 3a5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 3a8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3af:	00 
 3b0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 3b4:	89 34 24             	mov    %esi,(%esp)
 3b7:	88 45 d7             	mov    %al,-0x29(%ebp)
 3ba:	e8 d3 fe ff ff       	call   292 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 3bf:	83 ff ff             	cmp    $0xffffffff,%edi
 3c2:	75 dc                	jne    3a0 <printint+0x60>
    putc(fd, buf[i]);
}
 3c4:	83 c4 4c             	add    $0x4c,%esp
 3c7:	5b                   	pop    %ebx
 3c8:	5e                   	pop    %esi
 3c9:	5f                   	pop    %edi
 3ca:	5d                   	pop    %ebp
 3cb:	c3                   	ret    
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 3d0:	89 d0                	mov    %edx,%eax
 3d2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 3d4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 3db:	eb 87                	jmp    364 <printint+0x24>
 3dd:	8d 76 00             	lea    0x0(%esi),%esi

000003e0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 3e4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3e6:	56                   	push   %esi
 3e7:	53                   	push   %ebx
 3e8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 3eb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 3ee:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3f1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 3f4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 3f7:	0f b6 13             	movzbl (%ebx),%edx
 3fa:	83 c3 01             	add    $0x1,%ebx
 3fd:	84 d2                	test   %dl,%dl
 3ff:	75 39                	jne    43a <printf+0x5a>
 401:	e9 c2 00 00 00       	jmp    4c8 <printf+0xe8>
 406:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 408:	83 fa 25             	cmp    $0x25,%edx
 40b:	0f 84 bf 00 00 00    	je     4d0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 411:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 414:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 41b:	00 
 41c:	89 44 24 04          	mov    %eax,0x4(%esp)
 420:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 423:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 426:	e8 67 fe ff ff       	call   292 <write>
 42b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 42e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 432:	84 d2                	test   %dl,%dl
 434:	0f 84 8e 00 00 00    	je     4c8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 43a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 43c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 43f:	74 c7                	je     408 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 441:	83 ff 25             	cmp    $0x25,%edi
 444:	75 e5                	jne    42b <printf+0x4b>
      if(c == 'd'){
 446:	83 fa 64             	cmp    $0x64,%edx
 449:	0f 84 31 01 00 00    	je     580 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 44f:	25 f7 00 00 00       	and    $0xf7,%eax
 454:	83 f8 70             	cmp    $0x70,%eax
 457:	0f 84 83 00 00 00    	je     4e0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 45d:	83 fa 73             	cmp    $0x73,%edx
 460:	0f 84 a2 00 00 00    	je     508 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 466:	83 fa 63             	cmp    $0x63,%edx
 469:	0f 84 35 01 00 00    	je     5a4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 46f:	83 fa 25             	cmp    $0x25,%edx
 472:	0f 84 e0 00 00 00    	je     558 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 478:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 47b:	83 c3 01             	add    $0x1,%ebx
 47e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 485:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 486:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 488:	89 44 24 04          	mov    %eax,0x4(%esp)
 48c:	89 34 24             	mov    %esi,(%esp)
 48f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 492:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 496:	e8 f7 fd ff ff       	call   292 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 49b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 49e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 4a1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4a8:	00 
 4a9:	89 44 24 04          	mov    %eax,0x4(%esp)
 4ad:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 4b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4b3:	e8 da fd ff ff       	call   292 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4b8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4bc:	84 d2                	test   %dl,%dl
 4be:	0f 85 76 ff ff ff    	jne    43a <printf+0x5a>
 4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 4c8:	83 c4 3c             	add    $0x3c,%esp
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 4d0:	bf 25 00 00 00       	mov    $0x25,%edi
 4d5:	e9 51 ff ff ff       	jmp    42b <printf+0x4b>
 4da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 4e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 4e3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 4e8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 4ea:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 4f1:	8b 10                	mov    (%eax),%edx
 4f3:	89 f0                	mov    %esi,%eax
 4f5:	e8 46 fe ff ff       	call   340 <printint>
        ap++;
 4fa:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 4fe:	e9 28 ff ff ff       	jmp    42b <printf+0x4b>
 503:	90                   	nop
 504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 508:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 50b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 50f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 511:	b8 4e 07 00 00       	mov    $0x74e,%eax
 516:	85 ff                	test   %edi,%edi
 518:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 51b:	0f b6 07             	movzbl (%edi),%eax
 51e:	84 c0                	test   %al,%al
 520:	74 2a                	je     54c <printf+0x16c>
 522:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 528:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 52b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 52e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 531:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 538:	00 
 539:	89 44 24 04          	mov    %eax,0x4(%esp)
 53d:	89 34 24             	mov    %esi,(%esp)
 540:	e8 4d fd ff ff       	call   292 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 545:	0f b6 07             	movzbl (%edi),%eax
 548:	84 c0                	test   %al,%al
 54a:	75 dc                	jne    528 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 54c:	31 ff                	xor    %edi,%edi
 54e:	e9 d8 fe ff ff       	jmp    42b <printf+0x4b>
 553:	90                   	nop
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 558:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 55b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 55d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 564:	00 
 565:	89 44 24 04          	mov    %eax,0x4(%esp)
 569:	89 34 24             	mov    %esi,(%esp)
 56c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 570:	e8 1d fd ff ff       	call   292 <write>
 575:	e9 b1 fe ff ff       	jmp    42b <printf+0x4b>
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 580:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 583:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 588:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 58b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 592:	8b 10                	mov    (%eax),%edx
 594:	89 f0                	mov    %esi,%eax
 596:	e8 a5 fd ff ff       	call   340 <printint>
        ap++;
 59b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 59f:	e9 87 fe ff ff       	jmp    42b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5a4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5a7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5a9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5ab:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5b2:	00 
 5b3:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5b6:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5b9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 5bc:	89 44 24 04          	mov    %eax,0x4(%esp)
 5c0:	e8 cd fc ff ff       	call   292 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 5c5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5c9:	e9 5d fe ff ff       	jmp    42b <printf+0x4b>
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <free>:
 5d0:	55                   	push   %ebp
 5d1:	a1 ec 09 00 00       	mov    0x9ec,%eax
 5d6:	89 e5                	mov    %esp,%ebp
 5d8:	57                   	push   %edi
 5d9:	56                   	push   %esi
 5da:	53                   	push   %ebx
 5db:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5de:	8b 10                	mov    (%eax),%edx
 5e0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5e3:	39 c8                	cmp    %ecx,%eax
 5e5:	73 19                	jae    600 <free+0x30>
 5e7:	89 f6                	mov    %esi,%esi
 5e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 5f0:	39 d1                	cmp    %edx,%ecx
 5f2:	72 1c                	jb     610 <free+0x40>
 5f4:	39 d0                	cmp    %edx,%eax
 5f6:	73 18                	jae    610 <free+0x40>
 5f8:	89 d0                	mov    %edx,%eax
 5fa:	39 c8                	cmp    %ecx,%eax
 5fc:	8b 10                	mov    (%eax),%edx
 5fe:	72 f0                	jb     5f0 <free+0x20>
 600:	39 d0                	cmp    %edx,%eax
 602:	72 f4                	jb     5f8 <free+0x28>
 604:	39 d1                	cmp    %edx,%ecx
 606:	73 f0                	jae    5f8 <free+0x28>
 608:	90                   	nop
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 610:	8b 73 fc             	mov    -0x4(%ebx),%esi
 613:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 616:	39 d7                	cmp    %edx,%edi
 618:	74 19                	je     633 <free+0x63>
 61a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 61d:	8b 50 04             	mov    0x4(%eax),%edx
 620:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 623:	39 f1                	cmp    %esi,%ecx
 625:	74 23                	je     64a <free+0x7a>
 627:	89 08                	mov    %ecx,(%eax)
 629:	a3 ec 09 00 00       	mov    %eax,0x9ec
 62e:	5b                   	pop    %ebx
 62f:	5e                   	pop    %esi
 630:	5f                   	pop    %edi
 631:	5d                   	pop    %ebp
 632:	c3                   	ret    
 633:	03 72 04             	add    0x4(%edx),%esi
 636:	89 73 fc             	mov    %esi,-0x4(%ebx)
 639:	8b 10                	mov    (%eax),%edx
 63b:	8b 12                	mov    (%edx),%edx
 63d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 640:	8b 50 04             	mov    0x4(%eax),%edx
 643:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 646:	39 f1                	cmp    %esi,%ecx
 648:	75 dd                	jne    627 <free+0x57>
 64a:	03 53 fc             	add    -0x4(%ebx),%edx
 64d:	a3 ec 09 00 00       	mov    %eax,0x9ec
 652:	89 50 04             	mov    %edx,0x4(%eax)
 655:	8b 53 f8             	mov    -0x8(%ebx),%edx
 658:	89 10                	mov    %edx,(%eax)
 65a:	5b                   	pop    %ebx
 65b:	5e                   	pop    %esi
 65c:	5f                   	pop    %edi
 65d:	5d                   	pop    %ebp
 65e:	c3                   	ret    
 65f:	90                   	nop

00000660 <malloc>:
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 0c             	sub    $0xc,%esp
 669:	8b 45 08             	mov    0x8(%ebp),%eax
 66c:	8b 15 ec 09 00 00    	mov    0x9ec,%edx
 672:	8d 78 07             	lea    0x7(%eax),%edi
 675:	c1 ef 03             	shr    $0x3,%edi
 678:	83 c7 01             	add    $0x1,%edi
 67b:	85 d2                	test   %edx,%edx
 67d:	0f 84 a3 00 00 00    	je     726 <malloc+0xc6>
 683:	8b 02                	mov    (%edx),%eax
 685:	8b 48 04             	mov    0x4(%eax),%ecx
 688:	39 cf                	cmp    %ecx,%edi
 68a:	76 74                	jbe    700 <malloc+0xa0>
 68c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 692:	be 00 10 00 00       	mov    $0x1000,%esi
 697:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 69e:	0f 43 f7             	cmovae %edi,%esi
 6a1:	ba 00 80 00 00       	mov    $0x8000,%edx
 6a6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 6ac:	0f 46 da             	cmovbe %edx,%ebx
 6af:	eb 10                	jmp    6c1 <malloc+0x61>
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6b8:	8b 02                	mov    (%edx),%eax
 6ba:	8b 48 04             	mov    0x4(%eax),%ecx
 6bd:	39 cf                	cmp    %ecx,%edi
 6bf:	76 3f                	jbe    700 <malloc+0xa0>
 6c1:	39 05 ec 09 00 00    	cmp    %eax,0x9ec
 6c7:	89 c2                	mov    %eax,%edx
 6c9:	75 ed                	jne    6b8 <malloc+0x58>
 6cb:	83 ec 0c             	sub    $0xc,%esp
 6ce:	53                   	push   %ebx
 6cf:	e8 26 fc ff ff       	call   2fa <sbrk>
 6d4:	83 c4 10             	add    $0x10,%esp
 6d7:	83 f8 ff             	cmp    $0xffffffff,%eax
 6da:	74 1c                	je     6f8 <malloc+0x98>
 6dc:	89 70 04             	mov    %esi,0x4(%eax)
 6df:	83 ec 0c             	sub    $0xc,%esp
 6e2:	83 c0 08             	add    $0x8,%eax
 6e5:	50                   	push   %eax
 6e6:	e8 e5 fe ff ff       	call   5d0 <free>
 6eb:	8b 15 ec 09 00 00    	mov    0x9ec,%edx
 6f1:	83 c4 10             	add    $0x10,%esp
 6f4:	85 d2                	test   %edx,%edx
 6f6:	75 c0                	jne    6b8 <malloc+0x58>
 6f8:	31 c0                	xor    %eax,%eax
 6fa:	eb 1c                	jmp    718 <malloc+0xb8>
 6fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 700:	39 cf                	cmp    %ecx,%edi
 702:	74 1c                	je     720 <malloc+0xc0>
 704:	29 f9                	sub    %edi,%ecx
 706:	89 48 04             	mov    %ecx,0x4(%eax)
 709:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 70c:	89 78 04             	mov    %edi,0x4(%eax)
 70f:	89 15 ec 09 00 00    	mov    %edx,0x9ec
 715:	83 c0 08             	add    $0x8,%eax
 718:	8d 65 f4             	lea    -0xc(%ebp),%esp
 71b:	5b                   	pop    %ebx
 71c:	5e                   	pop    %esi
 71d:	5f                   	pop    %edi
 71e:	5d                   	pop    %ebp
 71f:	c3                   	ret    
 720:	8b 08                	mov    (%eax),%ecx
 722:	89 0a                	mov    %ecx,(%edx)
 724:	eb e9                	jmp    70f <malloc+0xaf>
 726:	c7 05 ec 09 00 00 f0 	movl   $0x9f0,0x9ec
 72d:	09 00 00 
 730:	c7 05 f0 09 00 00 f0 	movl   $0x9f0,0x9f0
 737:	09 00 00 
 73a:	b8 f0 09 00 00       	mov    $0x9f0,%eax
 73f:	c7 05 f4 09 00 00 00 	movl   $0x0,0x9f4
 746:	00 00 00 
 749:	e9 3e ff ff ff       	jmp    68c <malloc+0x2c>
