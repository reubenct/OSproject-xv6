
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 10             	sub    $0x10,%esp
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
   a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  11:	00 
  12:	c7 04 24 2e 08 00 00 	movl   $0x82e,(%esp)
  19:	e8 74 03 00 00       	call   392 <open>
  1e:	85 c0                	test   %eax,%eax
  20:	0f 88 ac 00 00 00    	js     d2 <main+0xd2>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  2d:	e8 98 03 00 00       	call   3ca <dup>
  dup(0);  // stderr
  32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  39:	e8 8c 03 00 00       	call   3ca <dup>
  3e:	66 90                	xchg   %ax,%ax

  for(;;){
    printf(1, "init: starting sh\n");
  40:	c7 44 24 04 36 08 00 	movl   $0x836,0x4(%esp)
  47:	00 
  48:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  4f:	e8 6c 04 00 00       	call   4c0 <printf>
    pid = fork();
  54:	e8 f1 02 00 00       	call   34a <fork>
    if(pid < 0){
  59:	85 c0                	test   %eax,%eax
  dup(0);  // stdout
  dup(0);  // stderr

  for(;;){
    printf(1, "init: starting sh\n");
    pid = fork();
  5b:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
  5d:	78 2d                	js     8c <main+0x8c>
  5f:	90                   	nop
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  60:	74 43                	je     a5 <main+0xa5>
  62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
  68:	e8 ed 02 00 00       	call   35a <wait>
  6d:	85 c0                	test   %eax,%eax
  6f:	90                   	nop
  70:	78 ce                	js     40 <main+0x40>
  72:	39 d8                	cmp    %ebx,%eax
  74:	74 ca                	je     40 <main+0x40>
      printf(1, "zombie!\n");
  76:	c7 44 24 04 75 08 00 	movl   $0x875,0x4(%esp)
  7d:	00 
  7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  85:	e8 36 04 00 00       	call   4c0 <printf>
  8a:	eb dc                	jmp    68 <main+0x68>

  for(;;){
    printf(1, "init: starting sh\n");
    pid = fork();
    if(pid < 0){
      printf(1, "init: fork failed\n");
  8c:	c7 44 24 04 49 08 00 	movl   $0x849,0x4(%esp)
  93:	00 
  94:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  9b:	e8 20 04 00 00       	call   4c0 <printf>
      exit();
  a0:	e8 ad 02 00 00       	call   352 <exit>
    }
    if(pid == 0){
      exec("sh", argv);
  a5:	c7 44 24 04 14 0b 00 	movl   $0xb14,0x4(%esp)
  ac:	00 
  ad:	c7 04 24 5c 08 00 00 	movl   $0x85c,(%esp)
  b4:	e8 d1 02 00 00       	call   38a <exec>
      printf(1, "init: exec sh failed\n");
  b9:	c7 44 24 04 5f 08 00 	movl   $0x85f,0x4(%esp)
  c0:	00 
  c1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  c8:	e8 f3 03 00 00       	call   4c0 <printf>
      exit();
  cd:	e8 80 02 00 00       	call   352 <exit>
main(void)
{
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
    mknod("console", 1, 1);
  d2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
  d9:	00 
  da:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  e1:	00 
  e2:	c7 04 24 2e 08 00 00 	movl   $0x82e,(%esp)
  e9:	e8 ac 02 00 00       	call   39a <mknod>
    open("console", O_RDWR);
  ee:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  f5:	00 
  f6:	c7 04 24 2e 08 00 00 	movl   $0x82e,(%esp)
  fd:	e8 90 02 00 00       	call   392 <open>
 102:	e9 1f ff ff ff       	jmp    26 <main+0x26>
 107:	66 90                	xchg   %ax,%ax
 109:	66 90                	xchg   %ax,%ax
 10b:	66 90                	xchg   %ax,%ax
 10d:	66 90                	xchg   %ax,%ax
 10f:	90                   	nop

00000110 <strcpy>:
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	53                   	push   %ebx
 114:	8b 45 08             	mov    0x8(%ebp),%eax
 117:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 11a:	89 c2                	mov    %eax,%edx
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 120:	83 c1 01             	add    $0x1,%ecx
 123:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 127:	83 c2 01             	add    $0x1,%edx
 12a:	84 db                	test   %bl,%bl
 12c:	88 5a ff             	mov    %bl,-0x1(%edx)
 12f:	75 ef                	jne    120 <strcpy+0x10>
 131:	5b                   	pop    %ebx
 132:	5d                   	pop    %ebp
 133:	c3                   	ret    
 134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 13a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000140 <strcmp>:
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	56                   	push   %esi
 144:	53                   	push   %ebx
 145:	8b 55 08             	mov    0x8(%ebp),%edx
 148:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 14b:	0f b6 02             	movzbl (%edx),%eax
 14e:	0f b6 19             	movzbl (%ecx),%ebx
 151:	84 c0                	test   %al,%al
 153:	75 1e                	jne    173 <strcmp+0x33>
 155:	eb 29                	jmp    180 <strcmp+0x40>
 157:	89 f6                	mov    %esi,%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 160:	83 c2 01             	add    $0x1,%edx
 163:	0f b6 02             	movzbl (%edx),%eax
 166:	8d 71 01             	lea    0x1(%ecx),%esi
 169:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 16d:	84 c0                	test   %al,%al
 16f:	74 0f                	je     180 <strcmp+0x40>
 171:	89 f1                	mov    %esi,%ecx
 173:	38 d8                	cmp    %bl,%al
 175:	74 e9                	je     160 <strcmp+0x20>
 177:	29 d8                	sub    %ebx,%eax
 179:	5b                   	pop    %ebx
 17a:	5e                   	pop    %esi
 17b:	5d                   	pop    %ebp
 17c:	c3                   	ret    
 17d:	8d 76 00             	lea    0x0(%esi),%esi
 180:	31 c0                	xor    %eax,%eax
 182:	29 d8                	sub    %ebx,%eax
 184:	5b                   	pop    %ebx
 185:	5e                   	pop    %esi
 186:	5d                   	pop    %ebp
 187:	c3                   	ret    
 188:	90                   	nop
 189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000190 <strlen>:
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	8b 4d 08             	mov    0x8(%ebp),%ecx
 196:	80 39 00             	cmpb   $0x0,(%ecx)
 199:	74 12                	je     1ad <strlen+0x1d>
 19b:	31 d2                	xor    %edx,%edx
 19d:	8d 76 00             	lea    0x0(%esi),%esi
 1a0:	83 c2 01             	add    $0x1,%edx
 1a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1a7:	89 d0                	mov    %edx,%eax
 1a9:	75 f5                	jne    1a0 <strlen+0x10>
 1ab:	5d                   	pop    %ebp
 1ac:	c3                   	ret    
 1ad:	31 c0                	xor    %eax,%eax
 1af:	5d                   	pop    %ebp
 1b0:	c3                   	ret    
 1b1:	eb 0d                	jmp    1c0 <memset>
 1b3:	90                   	nop
 1b4:	90                   	nop
 1b5:	90                   	nop
 1b6:	90                   	nop
 1b7:	90                   	nop
 1b8:	90                   	nop
 1b9:	90                   	nop
 1ba:	90                   	nop
 1bb:	90                   	nop
 1bc:	90                   	nop
 1bd:	90                   	nop
 1be:	90                   	nop
 1bf:	90                   	nop

000001c0 <memset>:
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	57                   	push   %edi
 1c4:	8b 55 08             	mov    0x8(%ebp),%edx
 1c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 1cd:	89 d7                	mov    %edx,%edi
 1cf:	fc                   	cld    
 1d0:	f3 aa                	rep stos %al,%es:(%edi)
 1d2:	89 d0                	mov    %edx,%eax
 1d4:	5f                   	pop    %edi
 1d5:	5d                   	pop    %ebp
 1d6:	c3                   	ret    
 1d7:	89 f6                	mov    %esi,%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001e0 <strchr>:
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	8b 45 08             	mov    0x8(%ebp),%eax
 1e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1ea:	0f b6 10             	movzbl (%eax),%edx
 1ed:	84 d2                	test   %dl,%dl
 1ef:	74 1d                	je     20e <strchr+0x2e>
 1f1:	38 d3                	cmp    %dl,%bl
 1f3:	89 d9                	mov    %ebx,%ecx
 1f5:	75 0d                	jne    204 <strchr+0x24>
 1f7:	eb 17                	jmp    210 <strchr+0x30>
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	38 ca                	cmp    %cl,%dl
 202:	74 0c                	je     210 <strchr+0x30>
 204:	83 c0 01             	add    $0x1,%eax
 207:	0f b6 10             	movzbl (%eax),%edx
 20a:	84 d2                	test   %dl,%dl
 20c:	75 f2                	jne    200 <strchr+0x20>
 20e:	31 c0                	xor    %eax,%eax
 210:	5b                   	pop    %ebx
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <gets>:
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	56                   	push   %esi
 225:	53                   	push   %ebx
 226:	31 f6                	xor    %esi,%esi
 228:	8d 7d e7             	lea    -0x19(%ebp),%edi
 22b:	83 ec 1c             	sub    $0x1c,%esp
 22e:	eb 29                	jmp    259 <gets+0x39>
 230:	83 ec 04             	sub    $0x4,%esp
 233:	6a 01                	push   $0x1
 235:	57                   	push   %edi
 236:	6a 00                	push   $0x0
 238:	e8 2d 01 00 00       	call   36a <read>
 23d:	83 c4 10             	add    $0x10,%esp
 240:	85 c0                	test   %eax,%eax
 242:	7e 1d                	jle    261 <gets+0x41>
 244:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 248:	8b 55 08             	mov    0x8(%ebp),%edx
 24b:	89 de                	mov    %ebx,%esi
 24d:	3c 0a                	cmp    $0xa,%al
 24f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 253:	74 1b                	je     270 <gets+0x50>
 255:	3c 0d                	cmp    $0xd,%al
 257:	74 17                	je     270 <gets+0x50>
 259:	8d 5e 01             	lea    0x1(%esi),%ebx
 25c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 25f:	7c cf                	jl     230 <gets+0x10>
 261:	8b 45 08             	mov    0x8(%ebp),%eax
 264:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 268:	8d 65 f4             	lea    -0xc(%ebp),%esp
 26b:	5b                   	pop    %ebx
 26c:	5e                   	pop    %esi
 26d:	5f                   	pop    %edi
 26e:	5d                   	pop    %ebp
 26f:	c3                   	ret    
 270:	8b 45 08             	mov    0x8(%ebp),%eax
 273:	89 de                	mov    %ebx,%esi
 275:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 279:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27c:	5b                   	pop    %ebx
 27d:	5e                   	pop    %esi
 27e:	5f                   	pop    %edi
 27f:	5d                   	pop    %ebp
 280:	c3                   	ret    
 281:	eb 0d                	jmp    290 <stat>
 283:	90                   	nop
 284:	90                   	nop
 285:	90                   	nop
 286:	90                   	nop
 287:	90                   	nop
 288:	90                   	nop
 289:	90                   	nop
 28a:	90                   	nop
 28b:	90                   	nop
 28c:	90                   	nop
 28d:	90                   	nop
 28e:	90                   	nop
 28f:	90                   	nop

00000290 <stat>:
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	56                   	push   %esi
 294:	53                   	push   %ebx
 295:	83 ec 08             	sub    $0x8,%esp
 298:	6a 00                	push   $0x0
 29a:	ff 75 08             	pushl  0x8(%ebp)
 29d:	e8 f0 00 00 00       	call   392 <open>
 2a2:	83 c4 10             	add    $0x10,%esp
 2a5:	85 c0                	test   %eax,%eax
 2a7:	78 27                	js     2d0 <stat+0x40>
 2a9:	83 ec 08             	sub    $0x8,%esp
 2ac:	ff 75 0c             	pushl  0xc(%ebp)
 2af:	89 c3                	mov    %eax,%ebx
 2b1:	50                   	push   %eax
 2b2:	e8 f3 00 00 00       	call   3aa <fstat>
 2b7:	89 c6                	mov    %eax,%esi
 2b9:	89 1c 24             	mov    %ebx,(%esp)
 2bc:	e8 b9 00 00 00       	call   37a <close>
 2c1:	83 c4 10             	add    $0x10,%esp
 2c4:	89 f0                	mov    %esi,%eax
 2c6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2c9:	5b                   	pop    %ebx
 2ca:	5e                   	pop    %esi
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret    
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
 2d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2d5:	eb ef                	jmp    2c6 <stat+0x36>
 2d7:	89 f6                	mov    %esi,%esi
 2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <atoi>:
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	53                   	push   %ebx
 2e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e7:	0f be 11             	movsbl (%ecx),%edx
 2ea:	8d 42 d0             	lea    -0x30(%edx),%eax
 2ed:	3c 09                	cmp    $0x9,%al
 2ef:	b8 00 00 00 00       	mov    $0x0,%eax
 2f4:	77 1f                	ja     315 <atoi+0x35>
 2f6:	8d 76 00             	lea    0x0(%esi),%esi
 2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 300:	8d 04 80             	lea    (%eax,%eax,4),%eax
 303:	83 c1 01             	add    $0x1,%ecx
 306:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 30a:	0f be 11             	movsbl (%ecx),%edx
 30d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 310:	80 fb 09             	cmp    $0x9,%bl
 313:	76 eb                	jbe    300 <atoi+0x20>
 315:	5b                   	pop    %ebx
 316:	5d                   	pop    %ebp
 317:	c3                   	ret    
 318:	90                   	nop
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <memmove>:
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	56                   	push   %esi
 324:	53                   	push   %ebx
 325:	8b 5d 10             	mov    0x10(%ebp),%ebx
 328:	8b 45 08             	mov    0x8(%ebp),%eax
 32b:	8b 75 0c             	mov    0xc(%ebp),%esi
 32e:	85 db                	test   %ebx,%ebx
 330:	7e 14                	jle    346 <memmove+0x26>
 332:	31 d2                	xor    %edx,%edx
 334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 338:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 33c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 33f:	83 c2 01             	add    $0x1,%edx
 342:	39 da                	cmp    %ebx,%edx
 344:	75 f2                	jne    338 <memmove+0x18>
 346:	5b                   	pop    %ebx
 347:	5e                   	pop    %esi
 348:	5d                   	pop    %ebp
 349:	c3                   	ret    

0000034a <fork>:
 34a:	b8 01 00 00 00       	mov    $0x1,%eax
 34f:	cd 40                	int    $0x40
 351:	c3                   	ret    

00000352 <exit>:
 352:	b8 02 00 00 00       	mov    $0x2,%eax
 357:	cd 40                	int    $0x40
 359:	c3                   	ret    

0000035a <wait>:
 35a:	b8 03 00 00 00       	mov    $0x3,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <pipe>:
 362:	b8 04 00 00 00       	mov    $0x4,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <read>:
 36a:	b8 05 00 00 00       	mov    $0x5,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <write>:
 372:	b8 10 00 00 00       	mov    $0x10,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <close>:
 37a:	b8 15 00 00 00       	mov    $0x15,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <kill>:
 382:	b8 06 00 00 00       	mov    $0x6,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <exec>:
 38a:	b8 07 00 00 00       	mov    $0x7,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <open>:
 392:	b8 0f 00 00 00       	mov    $0xf,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <mknod>:
 39a:	b8 11 00 00 00       	mov    $0x11,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <unlink>:
 3a2:	b8 12 00 00 00       	mov    $0x12,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <fstat>:
 3aa:	b8 08 00 00 00       	mov    $0x8,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <link>:
 3b2:	b8 13 00 00 00       	mov    $0x13,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <mkdir>:
 3ba:	b8 14 00 00 00       	mov    $0x14,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <chdir>:
 3c2:	b8 09 00 00 00       	mov    $0x9,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <dup>:
 3ca:	b8 0a 00 00 00       	mov    $0xa,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <getpid>:
 3d2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <sbrk>:
 3da:	b8 0c 00 00 00       	mov    $0xc,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <sleep>:
 3e2:	b8 0d 00 00 00       	mov    $0xd,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <uptime>:
 3ea:	b8 0e 00 00 00       	mov    $0xe,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <random>:
 3f2:	b8 16 00 00 00       	mov    $0x16,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <cprocstate>:
 3fa:	b8 18 00 00 00       	mov    $0x18,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <signalinfo>:
 402:	b8 19 00 00 00       	mov    $0x19,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <setseed>:
 40a:	b8 17 00 00 00       	mov    $0x17,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    
 412:	66 90                	xchg   %ax,%ax
 414:	66 90                	xchg   %ax,%ax
 416:	66 90                	xchg   %ax,%ax
 418:	66 90                	xchg   %ax,%ax
 41a:	66 90                	xchg   %ax,%ax
 41c:	66 90                	xchg   %ax,%ax
 41e:	66 90                	xchg   %ax,%ax

00000420 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	89 c6                	mov    %eax,%esi
 427:	53                   	push   %ebx
 428:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 42b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 42e:	85 db                	test   %ebx,%ebx
 430:	74 09                	je     43b <printint+0x1b>
 432:	89 d0                	mov    %edx,%eax
 434:	c1 e8 1f             	shr    $0x1f,%eax
 437:	84 c0                	test   %al,%al
 439:	75 75                	jne    4b0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 43b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 43d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 444:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 447:	31 ff                	xor    %edi,%edi
 449:	89 ce                	mov    %ecx,%esi
 44b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 44e:	eb 02                	jmp    452 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 450:	89 cf                	mov    %ecx,%edi
 452:	31 d2                	xor    %edx,%edx
 454:	f7 f6                	div    %esi
 456:	8d 4f 01             	lea    0x1(%edi),%ecx
 459:	0f b6 92 85 08 00 00 	movzbl 0x885(%edx),%edx
  }while((x /= base) != 0);
 460:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 462:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 465:	75 e9                	jne    450 <printint+0x30>
  if(neg)
 467:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 46a:	89 c8                	mov    %ecx,%eax
 46c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 46f:	85 d2                	test   %edx,%edx
 471:	74 08                	je     47b <printint+0x5b>
    buf[i++] = '-';
 473:	8d 4f 02             	lea    0x2(%edi),%ecx
 476:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 47b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 47e:	66 90                	xchg   %ax,%ax
 480:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 485:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 488:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 48f:	00 
 490:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 494:	89 34 24             	mov    %esi,(%esp)
 497:	88 45 d7             	mov    %al,-0x29(%ebp)
 49a:	e8 d3 fe ff ff       	call   372 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 49f:	83 ff ff             	cmp    $0xffffffff,%edi
 4a2:	75 dc                	jne    480 <printint+0x60>
    putc(fd, buf[i]);
}
 4a4:	83 c4 4c             	add    $0x4c,%esp
 4a7:	5b                   	pop    %ebx
 4a8:	5e                   	pop    %esi
 4a9:	5f                   	pop    %edi
 4aa:	5d                   	pop    %ebp
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4b0:	89 d0                	mov    %edx,%eax
 4b2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 4b4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 4bb:	eb 87                	jmp    444 <printint+0x24>
 4bd:	8d 76 00             	lea    0x0(%esi),%esi

000004c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 4c4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4c6:	56                   	push   %esi
 4c7:	53                   	push   %ebx
 4c8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4cb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4ce:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4d1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4d4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 4d7:	0f b6 13             	movzbl (%ebx),%edx
 4da:	83 c3 01             	add    $0x1,%ebx
 4dd:	84 d2                	test   %dl,%dl
 4df:	75 39                	jne    51a <printf+0x5a>
 4e1:	e9 c2 00 00 00       	jmp    5a8 <printf+0xe8>
 4e6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 4e8:	83 fa 25             	cmp    $0x25,%edx
 4eb:	0f 84 bf 00 00 00    	je     5b0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 4f4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4fb:	00 
 4fc:	89 44 24 04          	mov    %eax,0x4(%esp)
 500:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 503:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 506:	e8 67 fe ff ff       	call   372 <write>
 50b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 50e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 512:	84 d2                	test   %dl,%dl
 514:	0f 84 8e 00 00 00    	je     5a8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 51a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 51c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 51f:	74 c7                	je     4e8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 521:	83 ff 25             	cmp    $0x25,%edi
 524:	75 e5                	jne    50b <printf+0x4b>
      if(c == 'd'){
 526:	83 fa 64             	cmp    $0x64,%edx
 529:	0f 84 31 01 00 00    	je     660 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 52f:	25 f7 00 00 00       	and    $0xf7,%eax
 534:	83 f8 70             	cmp    $0x70,%eax
 537:	0f 84 83 00 00 00    	je     5c0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 53d:	83 fa 73             	cmp    $0x73,%edx
 540:	0f 84 a2 00 00 00    	je     5e8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 546:	83 fa 63             	cmp    $0x63,%edx
 549:	0f 84 35 01 00 00    	je     684 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 54f:	83 fa 25             	cmp    $0x25,%edx
 552:	0f 84 e0 00 00 00    	je     638 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 558:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 55b:	83 c3 01             	add    $0x1,%ebx
 55e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 565:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 566:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 568:	89 44 24 04          	mov    %eax,0x4(%esp)
 56c:	89 34 24             	mov    %esi,(%esp)
 56f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 572:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 576:	e8 f7 fd ff ff       	call   372 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 57b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 57e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 581:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 588:	00 
 589:	89 44 24 04          	mov    %eax,0x4(%esp)
 58d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 590:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 593:	e8 da fd ff ff       	call   372 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 598:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 59c:	84 d2                	test   %dl,%dl
 59e:	0f 85 76 ff ff ff    	jne    51a <printf+0x5a>
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5a8:	83 c4 3c             	add    $0x3c,%esp
 5ab:	5b                   	pop    %ebx
 5ac:	5e                   	pop    %esi
 5ad:	5f                   	pop    %edi
 5ae:	5d                   	pop    %ebp
 5af:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5b0:	bf 25 00 00 00       	mov    $0x25,%edi
 5b5:	e9 51 ff ff ff       	jmp    50b <printf+0x4b>
 5ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5c0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5c3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5c8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5ca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5d1:	8b 10                	mov    (%eax),%edx
 5d3:	89 f0                	mov    %esi,%eax
 5d5:	e8 46 fe ff ff       	call   420 <printint>
        ap++;
 5da:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5de:	e9 28 ff ff ff       	jmp    50b <printf+0x4b>
 5e3:	90                   	nop
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 5e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 5eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 5ef:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 5f1:	b8 7e 08 00 00       	mov    $0x87e,%eax
 5f6:	85 ff                	test   %edi,%edi
 5f8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 5fb:	0f b6 07             	movzbl (%edi),%eax
 5fe:	84 c0                	test   %al,%al
 600:	74 2a                	je     62c <printf+0x16c>
 602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 608:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 60b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 60e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 611:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 618:	00 
 619:	89 44 24 04          	mov    %eax,0x4(%esp)
 61d:	89 34 24             	mov    %esi,(%esp)
 620:	e8 4d fd ff ff       	call   372 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 625:	0f b6 07             	movzbl (%edi),%eax
 628:	84 c0                	test   %al,%al
 62a:	75 dc                	jne    608 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 62c:	31 ff                	xor    %edi,%edi
 62e:	e9 d8 fe ff ff       	jmp    50b <printf+0x4b>
 633:	90                   	nop
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 638:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 63b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 63d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 644:	00 
 645:	89 44 24 04          	mov    %eax,0x4(%esp)
 649:	89 34 24             	mov    %esi,(%esp)
 64c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 650:	e8 1d fd ff ff       	call   372 <write>
 655:	e9 b1 fe ff ff       	jmp    50b <printf+0x4b>
 65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 660:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 663:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 668:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 66b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 672:	8b 10                	mov    (%eax),%edx
 674:	89 f0                	mov    %esi,%eax
 676:	e8 a5 fd ff ff       	call   420 <printint>
        ap++;
 67b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 67f:	e9 87 fe ff ff       	jmp    50b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 684:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 687:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 689:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 68b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 692:	00 
 693:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 696:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 699:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 69c:	89 44 24 04          	mov    %eax,0x4(%esp)
 6a0:	e8 cd fc ff ff       	call   372 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 6a5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6a9:	e9 5d fe ff ff       	jmp    50b <printf+0x4b>
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <free>:
 6b0:	55                   	push   %ebp
 6b1:	a1 1c 0b 00 00       	mov    0xb1c,%eax
 6b6:	89 e5                	mov    %esp,%ebp
 6b8:	57                   	push   %edi
 6b9:	56                   	push   %esi
 6ba:	53                   	push   %ebx
 6bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6be:	8b 10                	mov    (%eax),%edx
 6c0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 6c3:	39 c8                	cmp    %ecx,%eax
 6c5:	73 19                	jae    6e0 <free+0x30>
 6c7:	89 f6                	mov    %esi,%esi
 6c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 6d0:	39 d1                	cmp    %edx,%ecx
 6d2:	72 1c                	jb     6f0 <free+0x40>
 6d4:	39 d0                	cmp    %edx,%eax
 6d6:	73 18                	jae    6f0 <free+0x40>
 6d8:	89 d0                	mov    %edx,%eax
 6da:	39 c8                	cmp    %ecx,%eax
 6dc:	8b 10                	mov    (%eax),%edx
 6de:	72 f0                	jb     6d0 <free+0x20>
 6e0:	39 d0                	cmp    %edx,%eax
 6e2:	72 f4                	jb     6d8 <free+0x28>
 6e4:	39 d1                	cmp    %edx,%ecx
 6e6:	73 f0                	jae    6d8 <free+0x28>
 6e8:	90                   	nop
 6e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6f0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6f3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6f6:	39 d7                	cmp    %edx,%edi
 6f8:	74 19                	je     713 <free+0x63>
 6fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
 6fd:	8b 50 04             	mov    0x4(%eax),%edx
 700:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 703:	39 f1                	cmp    %esi,%ecx
 705:	74 23                	je     72a <free+0x7a>
 707:	89 08                	mov    %ecx,(%eax)
 709:	a3 1c 0b 00 00       	mov    %eax,0xb1c
 70e:	5b                   	pop    %ebx
 70f:	5e                   	pop    %esi
 710:	5f                   	pop    %edi
 711:	5d                   	pop    %ebp
 712:	c3                   	ret    
 713:	03 72 04             	add    0x4(%edx),%esi
 716:	89 73 fc             	mov    %esi,-0x4(%ebx)
 719:	8b 10                	mov    (%eax),%edx
 71b:	8b 12                	mov    (%edx),%edx
 71d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 720:	8b 50 04             	mov    0x4(%eax),%edx
 723:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 726:	39 f1                	cmp    %esi,%ecx
 728:	75 dd                	jne    707 <free+0x57>
 72a:	03 53 fc             	add    -0x4(%ebx),%edx
 72d:	a3 1c 0b 00 00       	mov    %eax,0xb1c
 732:	89 50 04             	mov    %edx,0x4(%eax)
 735:	8b 53 f8             	mov    -0x8(%ebx),%edx
 738:	89 10                	mov    %edx,(%eax)
 73a:	5b                   	pop    %ebx
 73b:	5e                   	pop    %esi
 73c:	5f                   	pop    %edi
 73d:	5d                   	pop    %ebp
 73e:	c3                   	ret    
 73f:	90                   	nop

00000740 <malloc>:
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 0c             	sub    $0xc,%esp
 749:	8b 45 08             	mov    0x8(%ebp),%eax
 74c:	8b 15 1c 0b 00 00    	mov    0xb1c,%edx
 752:	8d 78 07             	lea    0x7(%eax),%edi
 755:	c1 ef 03             	shr    $0x3,%edi
 758:	83 c7 01             	add    $0x1,%edi
 75b:	85 d2                	test   %edx,%edx
 75d:	0f 84 a3 00 00 00    	je     806 <malloc+0xc6>
 763:	8b 02                	mov    (%edx),%eax
 765:	8b 48 04             	mov    0x4(%eax),%ecx
 768:	39 cf                	cmp    %ecx,%edi
 76a:	76 74                	jbe    7e0 <malloc+0xa0>
 76c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 772:	be 00 10 00 00       	mov    $0x1000,%esi
 777:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 77e:	0f 43 f7             	cmovae %edi,%esi
 781:	ba 00 80 00 00       	mov    $0x8000,%edx
 786:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 78c:	0f 46 da             	cmovbe %edx,%ebx
 78f:	eb 10                	jmp    7a1 <malloc+0x61>
 791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 798:	8b 02                	mov    (%edx),%eax
 79a:	8b 48 04             	mov    0x4(%eax),%ecx
 79d:	39 cf                	cmp    %ecx,%edi
 79f:	76 3f                	jbe    7e0 <malloc+0xa0>
 7a1:	39 05 1c 0b 00 00    	cmp    %eax,0xb1c
 7a7:	89 c2                	mov    %eax,%edx
 7a9:	75 ed                	jne    798 <malloc+0x58>
 7ab:	83 ec 0c             	sub    $0xc,%esp
 7ae:	53                   	push   %ebx
 7af:	e8 26 fc ff ff       	call   3da <sbrk>
 7b4:	83 c4 10             	add    $0x10,%esp
 7b7:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ba:	74 1c                	je     7d8 <malloc+0x98>
 7bc:	89 70 04             	mov    %esi,0x4(%eax)
 7bf:	83 ec 0c             	sub    $0xc,%esp
 7c2:	83 c0 08             	add    $0x8,%eax
 7c5:	50                   	push   %eax
 7c6:	e8 e5 fe ff ff       	call   6b0 <free>
 7cb:	8b 15 1c 0b 00 00    	mov    0xb1c,%edx
 7d1:	83 c4 10             	add    $0x10,%esp
 7d4:	85 d2                	test   %edx,%edx
 7d6:	75 c0                	jne    798 <malloc+0x58>
 7d8:	31 c0                	xor    %eax,%eax
 7da:	eb 1c                	jmp    7f8 <malloc+0xb8>
 7dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7e0:	39 cf                	cmp    %ecx,%edi
 7e2:	74 1c                	je     800 <malloc+0xc0>
 7e4:	29 f9                	sub    %edi,%ecx
 7e6:	89 48 04             	mov    %ecx,0x4(%eax)
 7e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 7ec:	89 78 04             	mov    %edi,0x4(%eax)
 7ef:	89 15 1c 0b 00 00    	mov    %edx,0xb1c
 7f5:	83 c0 08             	add    $0x8,%eax
 7f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7fb:	5b                   	pop    %ebx
 7fc:	5e                   	pop    %esi
 7fd:	5f                   	pop    %edi
 7fe:	5d                   	pop    %ebp
 7ff:	c3                   	ret    
 800:	8b 08                	mov    (%eax),%ecx
 802:	89 0a                	mov    %ecx,(%edx)
 804:	eb e9                	jmp    7ef <malloc+0xaf>
 806:	c7 05 1c 0b 00 00 20 	movl   $0xb20,0xb1c
 80d:	0b 00 00 
 810:	c7 05 20 0b 00 00 20 	movl   $0xb20,0xb20
 817:	0b 00 00 
 81a:	b8 20 0b 00 00       	mov    $0xb20,%eax
 81f:	c7 05 24 0b 00 00 00 	movl   $0x0,0xb24
 826:	00 00 00 
 829:	e9 3e ff ff ff       	jmp    76c <malloc+0x2c>
