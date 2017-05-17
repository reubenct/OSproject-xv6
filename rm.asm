
_rm:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
  int i;

  if(argc < 2){
   5:	be 01 00 00 00       	mov    $0x1,%esi
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   a:	53                   	push   %ebx
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 7d 08             	mov    0x8(%ebp),%edi
  14:	8b 45 0c             	mov    0xc(%ebp),%eax
  int i;

  if(argc < 2){
  17:	83 ff 01             	cmp    $0x1,%edi
  1a:	8d 58 04             	lea    0x4(%eax),%ebx
  1d:	7e 3a                	jle    59 <main+0x59>
  1f:	90                   	nop
    printf(2, "Usage: rm files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
  20:	8b 03                	mov    (%ebx),%eax
  22:	89 04 24             	mov    %eax,(%esp)
  25:	e8 e8 02 00 00       	call   312 <unlink>
  2a:	85 c0                	test   %eax,%eax
  2c:	78 0f                	js     3d <main+0x3d>
  if(argc < 2){
    printf(2, "Usage: rm files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
  2e:	83 c6 01             	add    $0x1,%esi
  31:	83 c3 04             	add    $0x4,%ebx
  34:	39 fe                	cmp    %edi,%esi
  36:	75 e8                	jne    20 <main+0x20>
      printf(2, "rm: %s failed to delete\n", argv[i]);
      break;
    }
  }

  exit();
  38:	e8 85 02 00 00       	call   2c2 <exit>
    exit();
  }

  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
      printf(2, "rm: %s failed to delete\n", argv[i]);
  3d:	8b 03                	mov    (%ebx),%eax
  3f:	c7 44 24 04 b2 07 00 	movl   $0x7b2,0x4(%esp)
  46:	00 
  47:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  4e:	89 44 24 08          	mov    %eax,0x8(%esp)
  52:	e8 d9 03 00 00       	call   430 <printf>
      break;
  57:	eb df                	jmp    38 <main+0x38>
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "Usage: rm files...\n");
  59:	c7 44 24 04 9e 07 00 	movl   $0x79e,0x4(%esp)
  60:	00 
  61:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  68:	e8 c3 03 00 00       	call   430 <printf>
    exit();
  6d:	e8 50 02 00 00       	call   2c2 <exit>
  72:	66 90                	xchg   %ax,%ax
  74:	66 90                	xchg   %ax,%ax
  76:	66 90                	xchg   %ax,%ax
  78:	66 90                	xchg   %ax,%ax
  7a:	66 90                	xchg   %ax,%ax
  7c:	66 90                	xchg   %ax,%ax
  7e:	66 90                	xchg   %ax,%ax

00000080 <strcpy>:
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	53                   	push   %ebx
  84:	8b 45 08             	mov    0x8(%ebp),%eax
  87:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  8a:	89 c2                	mov    %eax,%edx
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  90:	83 c1 01             	add    $0x1,%ecx
  93:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
  97:	83 c2 01             	add    $0x1,%edx
  9a:	84 db                	test   %bl,%bl
  9c:	88 5a ff             	mov    %bl,-0x1(%edx)
  9f:	75 ef                	jne    90 <strcpy+0x10>
  a1:	5b                   	pop    %ebx
  a2:	5d                   	pop    %ebp
  a3:	c3                   	ret    
  a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000000b0 <strcmp>:
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	56                   	push   %esi
  b4:	53                   	push   %ebx
  b5:	8b 55 08             	mov    0x8(%ebp),%edx
  b8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  bb:	0f b6 02             	movzbl (%edx),%eax
  be:	0f b6 19             	movzbl (%ecx),%ebx
  c1:	84 c0                	test   %al,%al
  c3:	75 1e                	jne    e3 <strcmp+0x33>
  c5:	eb 29                	jmp    f0 <strcmp+0x40>
  c7:	89 f6                	mov    %esi,%esi
  c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  d0:	83 c2 01             	add    $0x1,%edx
  d3:	0f b6 02             	movzbl (%edx),%eax
  d6:	8d 71 01             	lea    0x1(%ecx),%esi
  d9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  dd:	84 c0                	test   %al,%al
  df:	74 0f                	je     f0 <strcmp+0x40>
  e1:	89 f1                	mov    %esi,%ecx
  e3:	38 d8                	cmp    %bl,%al
  e5:	74 e9                	je     d0 <strcmp+0x20>
  e7:	29 d8                	sub    %ebx,%eax
  e9:	5b                   	pop    %ebx
  ea:	5e                   	pop    %esi
  eb:	5d                   	pop    %ebp
  ec:	c3                   	ret    
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	31 c0                	xor    %eax,%eax
  f2:	29 d8                	sub    %ebx,%eax
  f4:	5b                   	pop    %ebx
  f5:	5e                   	pop    %esi
  f6:	5d                   	pop    %ebp
  f7:	c3                   	ret    
  f8:	90                   	nop
  f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000100 <strlen>:
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	8b 4d 08             	mov    0x8(%ebp),%ecx
 106:	80 39 00             	cmpb   $0x0,(%ecx)
 109:	74 12                	je     11d <strlen+0x1d>
 10b:	31 d2                	xor    %edx,%edx
 10d:	8d 76 00             	lea    0x0(%esi),%esi
 110:	83 c2 01             	add    $0x1,%edx
 113:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 117:	89 d0                	mov    %edx,%eax
 119:	75 f5                	jne    110 <strlen+0x10>
 11b:	5d                   	pop    %ebp
 11c:	c3                   	ret    
 11d:	31 c0                	xor    %eax,%eax
 11f:	5d                   	pop    %ebp
 120:	c3                   	ret    
 121:	eb 0d                	jmp    130 <memset>
 123:	90                   	nop
 124:	90                   	nop
 125:	90                   	nop
 126:	90                   	nop
 127:	90                   	nop
 128:	90                   	nop
 129:	90                   	nop
 12a:	90                   	nop
 12b:	90                   	nop
 12c:	90                   	nop
 12d:	90                   	nop
 12e:	90                   	nop
 12f:	90                   	nop

00000130 <memset>:
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
 134:	8b 55 08             	mov    0x8(%ebp),%edx
 137:	8b 4d 10             	mov    0x10(%ebp),%ecx
 13a:	8b 45 0c             	mov    0xc(%ebp),%eax
 13d:	89 d7                	mov    %edx,%edi
 13f:	fc                   	cld    
 140:	f3 aa                	rep stos %al,%es:(%edi)
 142:	89 d0                	mov    %edx,%eax
 144:	5f                   	pop    %edi
 145:	5d                   	pop    %ebp
 146:	c3                   	ret    
 147:	89 f6                	mov    %esi,%esi
 149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000150 <strchr>:
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	53                   	push   %ebx
 154:	8b 45 08             	mov    0x8(%ebp),%eax
 157:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 15a:	0f b6 10             	movzbl (%eax),%edx
 15d:	84 d2                	test   %dl,%dl
 15f:	74 1d                	je     17e <strchr+0x2e>
 161:	38 d3                	cmp    %dl,%bl
 163:	89 d9                	mov    %ebx,%ecx
 165:	75 0d                	jne    174 <strchr+0x24>
 167:	eb 17                	jmp    180 <strchr+0x30>
 169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 170:	38 ca                	cmp    %cl,%dl
 172:	74 0c                	je     180 <strchr+0x30>
 174:	83 c0 01             	add    $0x1,%eax
 177:	0f b6 10             	movzbl (%eax),%edx
 17a:	84 d2                	test   %dl,%dl
 17c:	75 f2                	jne    170 <strchr+0x20>
 17e:	31 c0                	xor    %eax,%eax
 180:	5b                   	pop    %ebx
 181:	5d                   	pop    %ebp
 182:	c3                   	ret    
 183:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000190 <gets>:
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	57                   	push   %edi
 194:	56                   	push   %esi
 195:	53                   	push   %ebx
 196:	31 f6                	xor    %esi,%esi
 198:	8d 7d e7             	lea    -0x19(%ebp),%edi
 19b:	83 ec 1c             	sub    $0x1c,%esp
 19e:	eb 29                	jmp    1c9 <gets+0x39>
 1a0:	83 ec 04             	sub    $0x4,%esp
 1a3:	6a 01                	push   $0x1
 1a5:	57                   	push   %edi
 1a6:	6a 00                	push   $0x0
 1a8:	e8 2d 01 00 00       	call   2da <read>
 1ad:	83 c4 10             	add    $0x10,%esp
 1b0:	85 c0                	test   %eax,%eax
 1b2:	7e 1d                	jle    1d1 <gets+0x41>
 1b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1b8:	8b 55 08             	mov    0x8(%ebp),%edx
 1bb:	89 de                	mov    %ebx,%esi
 1bd:	3c 0a                	cmp    $0xa,%al
 1bf:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 1c3:	74 1b                	je     1e0 <gets+0x50>
 1c5:	3c 0d                	cmp    $0xd,%al
 1c7:	74 17                	je     1e0 <gets+0x50>
 1c9:	8d 5e 01             	lea    0x1(%esi),%ebx
 1cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1cf:	7c cf                	jl     1a0 <gets+0x10>
 1d1:	8b 45 08             	mov    0x8(%ebp),%eax
 1d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 1d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1db:	5b                   	pop    %ebx
 1dc:	5e                   	pop    %esi
 1dd:	5f                   	pop    %edi
 1de:	5d                   	pop    %ebp
 1df:	c3                   	ret    
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
 1e3:	89 de                	mov    %ebx,%esi
 1e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 1e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ec:	5b                   	pop    %ebx
 1ed:	5e                   	pop    %esi
 1ee:	5f                   	pop    %edi
 1ef:	5d                   	pop    %ebp
 1f0:	c3                   	ret    
 1f1:	eb 0d                	jmp    200 <stat>
 1f3:	90                   	nop
 1f4:	90                   	nop
 1f5:	90                   	nop
 1f6:	90                   	nop
 1f7:	90                   	nop
 1f8:	90                   	nop
 1f9:	90                   	nop
 1fa:	90                   	nop
 1fb:	90                   	nop
 1fc:	90                   	nop
 1fd:	90                   	nop
 1fe:	90                   	nop
 1ff:	90                   	nop

00000200 <stat>:
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
 205:	83 ec 08             	sub    $0x8,%esp
 208:	6a 00                	push   $0x0
 20a:	ff 75 08             	pushl  0x8(%ebp)
 20d:	e8 f0 00 00 00       	call   302 <open>
 212:	83 c4 10             	add    $0x10,%esp
 215:	85 c0                	test   %eax,%eax
 217:	78 27                	js     240 <stat+0x40>
 219:	83 ec 08             	sub    $0x8,%esp
 21c:	ff 75 0c             	pushl  0xc(%ebp)
 21f:	89 c3                	mov    %eax,%ebx
 221:	50                   	push   %eax
 222:	e8 f3 00 00 00       	call   31a <fstat>
 227:	89 c6                	mov    %eax,%esi
 229:	89 1c 24             	mov    %ebx,(%esp)
 22c:	e8 b9 00 00 00       	call   2ea <close>
 231:	83 c4 10             	add    $0x10,%esp
 234:	89 f0                	mov    %esi,%eax
 236:	8d 65 f8             	lea    -0x8(%ebp),%esp
 239:	5b                   	pop    %ebx
 23a:	5e                   	pop    %esi
 23b:	5d                   	pop    %ebp
 23c:	c3                   	ret    
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 245:	eb ef                	jmp    236 <stat+0x36>
 247:	89 f6                	mov    %esi,%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000250 <atoi>:
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	53                   	push   %ebx
 254:	8b 4d 08             	mov    0x8(%ebp),%ecx
 257:	0f be 11             	movsbl (%ecx),%edx
 25a:	8d 42 d0             	lea    -0x30(%edx),%eax
 25d:	3c 09                	cmp    $0x9,%al
 25f:	b8 00 00 00 00       	mov    $0x0,%eax
 264:	77 1f                	ja     285 <atoi+0x35>
 266:	8d 76 00             	lea    0x0(%esi),%esi
 269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 270:	8d 04 80             	lea    (%eax,%eax,4),%eax
 273:	83 c1 01             	add    $0x1,%ecx
 276:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 27a:	0f be 11             	movsbl (%ecx),%edx
 27d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 280:	80 fb 09             	cmp    $0x9,%bl
 283:	76 eb                	jbe    270 <atoi+0x20>
 285:	5b                   	pop    %ebx
 286:	5d                   	pop    %ebp
 287:	c3                   	ret    
 288:	90                   	nop
 289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000290 <memmove>:
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	56                   	push   %esi
 294:	53                   	push   %ebx
 295:	8b 5d 10             	mov    0x10(%ebp),%ebx
 298:	8b 45 08             	mov    0x8(%ebp),%eax
 29b:	8b 75 0c             	mov    0xc(%ebp),%esi
 29e:	85 db                	test   %ebx,%ebx
 2a0:	7e 14                	jle    2b6 <memmove+0x26>
 2a2:	31 d2                	xor    %edx,%edx
 2a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2a8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 2ac:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 2af:	83 c2 01             	add    $0x1,%edx
 2b2:	39 da                	cmp    %ebx,%edx
 2b4:	75 f2                	jne    2a8 <memmove+0x18>
 2b6:	5b                   	pop    %ebx
 2b7:	5e                   	pop    %esi
 2b8:	5d                   	pop    %ebp
 2b9:	c3                   	ret    

000002ba <fork>:
 2ba:	b8 01 00 00 00       	mov    $0x1,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    

000002c2 <exit>:
 2c2:	b8 02 00 00 00       	mov    $0x2,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    

000002ca <wait>:
 2ca:	b8 03 00 00 00       	mov    $0x3,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    

000002d2 <pipe>:
 2d2:	b8 04 00 00 00       	mov    $0x4,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    

000002da <read>:
 2da:	b8 05 00 00 00       	mov    $0x5,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    

000002e2 <write>:
 2e2:	b8 10 00 00 00       	mov    $0x10,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    

000002ea <close>:
 2ea:	b8 15 00 00 00       	mov    $0x15,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    

000002f2 <kill>:
 2f2:	b8 06 00 00 00       	mov    $0x6,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    

000002fa <exec>:
 2fa:	b8 07 00 00 00       	mov    $0x7,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    

00000302 <open>:
 302:	b8 0f 00 00 00       	mov    $0xf,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    

0000030a <mknod>:
 30a:	b8 11 00 00 00       	mov    $0x11,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    

00000312 <unlink>:
 312:	b8 12 00 00 00       	mov    $0x12,%eax
 317:	cd 40                	int    $0x40
 319:	c3                   	ret    

0000031a <fstat>:
 31a:	b8 08 00 00 00       	mov    $0x8,%eax
 31f:	cd 40                	int    $0x40
 321:	c3                   	ret    

00000322 <link>:
 322:	b8 13 00 00 00       	mov    $0x13,%eax
 327:	cd 40                	int    $0x40
 329:	c3                   	ret    

0000032a <mkdir>:
 32a:	b8 14 00 00 00       	mov    $0x14,%eax
 32f:	cd 40                	int    $0x40
 331:	c3                   	ret    

00000332 <chdir>:
 332:	b8 09 00 00 00       	mov    $0x9,%eax
 337:	cd 40                	int    $0x40
 339:	c3                   	ret    

0000033a <dup>:
 33a:	b8 0a 00 00 00       	mov    $0xa,%eax
 33f:	cd 40                	int    $0x40
 341:	c3                   	ret    

00000342 <getpid>:
 342:	b8 0b 00 00 00       	mov    $0xb,%eax
 347:	cd 40                	int    $0x40
 349:	c3                   	ret    

0000034a <sbrk>:
 34a:	b8 0c 00 00 00       	mov    $0xc,%eax
 34f:	cd 40                	int    $0x40
 351:	c3                   	ret    

00000352 <sleep>:
 352:	b8 0d 00 00 00       	mov    $0xd,%eax
 357:	cd 40                	int    $0x40
 359:	c3                   	ret    

0000035a <uptime>:
 35a:	b8 0e 00 00 00       	mov    $0xe,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <random>:
 362:	b8 16 00 00 00       	mov    $0x16,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <cprocstate>:
 36a:	b8 18 00 00 00       	mov    $0x18,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <signalinfo>:
 372:	b8 19 00 00 00       	mov    $0x19,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <setseed>:
 37a:	b8 17 00 00 00       	mov    $0x17,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    
 382:	66 90                	xchg   %ax,%ax
 384:	66 90                	xchg   %ax,%ax
 386:	66 90                	xchg   %ax,%ax
 388:	66 90                	xchg   %ax,%ax
 38a:	66 90                	xchg   %ax,%ax
 38c:	66 90                	xchg   %ax,%ax
 38e:	66 90                	xchg   %ax,%ax

00000390 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	56                   	push   %esi
 395:	89 c6                	mov    %eax,%esi
 397:	53                   	push   %ebx
 398:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 39b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 39e:	85 db                	test   %ebx,%ebx
 3a0:	74 09                	je     3ab <printint+0x1b>
 3a2:	89 d0                	mov    %edx,%eax
 3a4:	c1 e8 1f             	shr    $0x1f,%eax
 3a7:	84 c0                	test   %al,%al
 3a9:	75 75                	jne    420 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 3ab:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 3ad:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 3b4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 3b7:	31 ff                	xor    %edi,%edi
 3b9:	89 ce                	mov    %ecx,%esi
 3bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 3be:	eb 02                	jmp    3c2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 3c0:	89 cf                	mov    %ecx,%edi
 3c2:	31 d2                	xor    %edx,%edx
 3c4:	f7 f6                	div    %esi
 3c6:	8d 4f 01             	lea    0x1(%edi),%ecx
 3c9:	0f b6 92 d2 07 00 00 	movzbl 0x7d2(%edx),%edx
  }while((x /= base) != 0);
 3d0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 3d2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 3d5:	75 e9                	jne    3c0 <printint+0x30>
  if(neg)
 3d7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 3da:	89 c8                	mov    %ecx,%eax
 3dc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 3df:	85 d2                	test   %edx,%edx
 3e1:	74 08                	je     3eb <printint+0x5b>
    buf[i++] = '-';
 3e3:	8d 4f 02             	lea    0x2(%edi),%ecx
 3e6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 3eb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 3ee:	66 90                	xchg   %ax,%ax
 3f0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 3f5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 3f8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3ff:	00 
 400:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 404:	89 34 24             	mov    %esi,(%esp)
 407:	88 45 d7             	mov    %al,-0x29(%ebp)
 40a:	e8 d3 fe ff ff       	call   2e2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 40f:	83 ff ff             	cmp    $0xffffffff,%edi
 412:	75 dc                	jne    3f0 <printint+0x60>
    putc(fd, buf[i]);
}
 414:	83 c4 4c             	add    $0x4c,%esp
 417:	5b                   	pop    %ebx
 418:	5e                   	pop    %esi
 419:	5f                   	pop    %edi
 41a:	5d                   	pop    %ebp
 41b:	c3                   	ret    
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 420:	89 d0                	mov    %edx,%eax
 422:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 424:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 42b:	eb 87                	jmp    3b4 <printint+0x24>
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 434:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 436:	56                   	push   %esi
 437:	53                   	push   %ebx
 438:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 43b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 43e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 441:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 444:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 447:	0f b6 13             	movzbl (%ebx),%edx
 44a:	83 c3 01             	add    $0x1,%ebx
 44d:	84 d2                	test   %dl,%dl
 44f:	75 39                	jne    48a <printf+0x5a>
 451:	e9 c2 00 00 00       	jmp    518 <printf+0xe8>
 456:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 458:	83 fa 25             	cmp    $0x25,%edx
 45b:	0f 84 bf 00 00 00    	je     520 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 461:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 464:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 46b:	00 
 46c:	89 44 24 04          	mov    %eax,0x4(%esp)
 470:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 473:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 476:	e8 67 fe ff ff       	call   2e2 <write>
 47b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 47e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 482:	84 d2                	test   %dl,%dl
 484:	0f 84 8e 00 00 00    	je     518 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 48a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 48c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 48f:	74 c7                	je     458 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 491:	83 ff 25             	cmp    $0x25,%edi
 494:	75 e5                	jne    47b <printf+0x4b>
      if(c == 'd'){
 496:	83 fa 64             	cmp    $0x64,%edx
 499:	0f 84 31 01 00 00    	je     5d0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 49f:	25 f7 00 00 00       	and    $0xf7,%eax
 4a4:	83 f8 70             	cmp    $0x70,%eax
 4a7:	0f 84 83 00 00 00    	je     530 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 4ad:	83 fa 73             	cmp    $0x73,%edx
 4b0:	0f 84 a2 00 00 00    	je     558 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 4b6:	83 fa 63             	cmp    $0x63,%edx
 4b9:	0f 84 35 01 00 00    	je     5f4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 4bf:	83 fa 25             	cmp    $0x25,%edx
 4c2:	0f 84 e0 00 00 00    	je     5a8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4c8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 4cb:	83 c3 01             	add    $0x1,%ebx
 4ce:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4d5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 4d6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4d8:	89 44 24 04          	mov    %eax,0x4(%esp)
 4dc:	89 34 24             	mov    %esi,(%esp)
 4df:	89 55 d0             	mov    %edx,-0x30(%ebp)
 4e2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 4e6:	e8 f7 fd ff ff       	call   2e2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 4eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
 4f1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4f8:	00 
 4f9:	89 44 24 04          	mov    %eax,0x4(%esp)
 4fd:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 500:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 503:	e8 da fd ff ff       	call   2e2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 508:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 50c:	84 d2                	test   %dl,%dl
 50e:	0f 85 76 ff ff ff    	jne    48a <printf+0x5a>
 514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 518:	83 c4 3c             	add    $0x3c,%esp
 51b:	5b                   	pop    %ebx
 51c:	5e                   	pop    %esi
 51d:	5f                   	pop    %edi
 51e:	5d                   	pop    %ebp
 51f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 520:	bf 25 00 00 00       	mov    $0x25,%edi
 525:	e9 51 ff ff ff       	jmp    47b <printf+0x4b>
 52a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 530:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 533:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 538:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 53a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 541:	8b 10                	mov    (%eax),%edx
 543:	89 f0                	mov    %esi,%eax
 545:	e8 46 fe ff ff       	call   390 <printint>
        ap++;
 54a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 54e:	e9 28 ff ff ff       	jmp    47b <printf+0x4b>
 553:	90                   	nop
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 558:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 55b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 55f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 561:	b8 cb 07 00 00       	mov    $0x7cb,%eax
 566:	85 ff                	test   %edi,%edi
 568:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 56b:	0f b6 07             	movzbl (%edi),%eax
 56e:	84 c0                	test   %al,%al
 570:	74 2a                	je     59c <printf+0x16c>
 572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 578:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 57b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 57e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 581:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 588:	00 
 589:	89 44 24 04          	mov    %eax,0x4(%esp)
 58d:	89 34 24             	mov    %esi,(%esp)
 590:	e8 4d fd ff ff       	call   2e2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 595:	0f b6 07             	movzbl (%edi),%eax
 598:	84 c0                	test   %al,%al
 59a:	75 dc                	jne    578 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 59c:	31 ff                	xor    %edi,%edi
 59e:	e9 d8 fe ff ff       	jmp    47b <printf+0x4b>
 5a3:	90                   	nop
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5a8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5ab:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5ad:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5b4:	00 
 5b5:	89 44 24 04          	mov    %eax,0x4(%esp)
 5b9:	89 34 24             	mov    %esi,(%esp)
 5bc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 5c0:	e8 1d fd ff ff       	call   2e2 <write>
 5c5:	e9 b1 fe ff ff       	jmp    47b <printf+0x4b>
 5ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 5d0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5d8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 5db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 5e2:	8b 10                	mov    (%eax),%edx
 5e4:	89 f0                	mov    %esi,%eax
 5e6:	e8 a5 fd ff ff       	call   390 <printint>
        ap++;
 5eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5ef:	e9 87 fe ff ff       	jmp    47b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5f4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5f7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5f9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5fb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 602:	00 
 603:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 606:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 609:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 60c:	89 44 24 04          	mov    %eax,0x4(%esp)
 610:	e8 cd fc ff ff       	call   2e2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 615:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 619:	e9 5d fe ff ff       	jmp    47b <printf+0x4b>
 61e:	66 90                	xchg   %ax,%ax

00000620 <free>:
 620:	55                   	push   %ebp
 621:	a1 68 0a 00 00       	mov    0xa68,%eax
 626:	89 e5                	mov    %esp,%ebp
 628:	57                   	push   %edi
 629:	56                   	push   %esi
 62a:	53                   	push   %ebx
 62b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 62e:	8b 10                	mov    (%eax),%edx
 630:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 633:	39 c8                	cmp    %ecx,%eax
 635:	73 19                	jae    650 <free+0x30>
 637:	89 f6                	mov    %esi,%esi
 639:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 640:	39 d1                	cmp    %edx,%ecx
 642:	72 1c                	jb     660 <free+0x40>
 644:	39 d0                	cmp    %edx,%eax
 646:	73 18                	jae    660 <free+0x40>
 648:	89 d0                	mov    %edx,%eax
 64a:	39 c8                	cmp    %ecx,%eax
 64c:	8b 10                	mov    (%eax),%edx
 64e:	72 f0                	jb     640 <free+0x20>
 650:	39 d0                	cmp    %edx,%eax
 652:	72 f4                	jb     648 <free+0x28>
 654:	39 d1                	cmp    %edx,%ecx
 656:	73 f0                	jae    648 <free+0x28>
 658:	90                   	nop
 659:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 660:	8b 73 fc             	mov    -0x4(%ebx),%esi
 663:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 666:	39 d7                	cmp    %edx,%edi
 668:	74 19                	je     683 <free+0x63>
 66a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 66d:	8b 50 04             	mov    0x4(%eax),%edx
 670:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 673:	39 f1                	cmp    %esi,%ecx
 675:	74 23                	je     69a <free+0x7a>
 677:	89 08                	mov    %ecx,(%eax)
 679:	a3 68 0a 00 00       	mov    %eax,0xa68
 67e:	5b                   	pop    %ebx
 67f:	5e                   	pop    %esi
 680:	5f                   	pop    %edi
 681:	5d                   	pop    %ebp
 682:	c3                   	ret    
 683:	03 72 04             	add    0x4(%edx),%esi
 686:	89 73 fc             	mov    %esi,-0x4(%ebx)
 689:	8b 10                	mov    (%eax),%edx
 68b:	8b 12                	mov    (%edx),%edx
 68d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 690:	8b 50 04             	mov    0x4(%eax),%edx
 693:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 696:	39 f1                	cmp    %esi,%ecx
 698:	75 dd                	jne    677 <free+0x57>
 69a:	03 53 fc             	add    -0x4(%ebx),%edx
 69d:	a3 68 0a 00 00       	mov    %eax,0xa68
 6a2:	89 50 04             	mov    %edx,0x4(%eax)
 6a5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 6a8:	89 10                	mov    %edx,(%eax)
 6aa:	5b                   	pop    %ebx
 6ab:	5e                   	pop    %esi
 6ac:	5f                   	pop    %edi
 6ad:	5d                   	pop    %ebp
 6ae:	c3                   	ret    
 6af:	90                   	nop

000006b0 <malloc>:
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 0c             	sub    $0xc,%esp
 6b9:	8b 45 08             	mov    0x8(%ebp),%eax
 6bc:	8b 15 68 0a 00 00    	mov    0xa68,%edx
 6c2:	8d 78 07             	lea    0x7(%eax),%edi
 6c5:	c1 ef 03             	shr    $0x3,%edi
 6c8:	83 c7 01             	add    $0x1,%edi
 6cb:	85 d2                	test   %edx,%edx
 6cd:	0f 84 a3 00 00 00    	je     776 <malloc+0xc6>
 6d3:	8b 02                	mov    (%edx),%eax
 6d5:	8b 48 04             	mov    0x4(%eax),%ecx
 6d8:	39 cf                	cmp    %ecx,%edi
 6da:	76 74                	jbe    750 <malloc+0xa0>
 6dc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 6e2:	be 00 10 00 00       	mov    $0x1000,%esi
 6e7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 6ee:	0f 43 f7             	cmovae %edi,%esi
 6f1:	ba 00 80 00 00       	mov    $0x8000,%edx
 6f6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 6fc:	0f 46 da             	cmovbe %edx,%ebx
 6ff:	eb 10                	jmp    711 <malloc+0x61>
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 708:	8b 02                	mov    (%edx),%eax
 70a:	8b 48 04             	mov    0x4(%eax),%ecx
 70d:	39 cf                	cmp    %ecx,%edi
 70f:	76 3f                	jbe    750 <malloc+0xa0>
 711:	39 05 68 0a 00 00    	cmp    %eax,0xa68
 717:	89 c2                	mov    %eax,%edx
 719:	75 ed                	jne    708 <malloc+0x58>
 71b:	83 ec 0c             	sub    $0xc,%esp
 71e:	53                   	push   %ebx
 71f:	e8 26 fc ff ff       	call   34a <sbrk>
 724:	83 c4 10             	add    $0x10,%esp
 727:	83 f8 ff             	cmp    $0xffffffff,%eax
 72a:	74 1c                	je     748 <malloc+0x98>
 72c:	89 70 04             	mov    %esi,0x4(%eax)
 72f:	83 ec 0c             	sub    $0xc,%esp
 732:	83 c0 08             	add    $0x8,%eax
 735:	50                   	push   %eax
 736:	e8 e5 fe ff ff       	call   620 <free>
 73b:	8b 15 68 0a 00 00    	mov    0xa68,%edx
 741:	83 c4 10             	add    $0x10,%esp
 744:	85 d2                	test   %edx,%edx
 746:	75 c0                	jne    708 <malloc+0x58>
 748:	31 c0                	xor    %eax,%eax
 74a:	eb 1c                	jmp    768 <malloc+0xb8>
 74c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 750:	39 cf                	cmp    %ecx,%edi
 752:	74 1c                	je     770 <malloc+0xc0>
 754:	29 f9                	sub    %edi,%ecx
 756:	89 48 04             	mov    %ecx,0x4(%eax)
 759:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 75c:	89 78 04             	mov    %edi,0x4(%eax)
 75f:	89 15 68 0a 00 00    	mov    %edx,0xa68
 765:	83 c0 08             	add    $0x8,%eax
 768:	8d 65 f4             	lea    -0xc(%ebp),%esp
 76b:	5b                   	pop    %ebx
 76c:	5e                   	pop    %esi
 76d:	5f                   	pop    %edi
 76e:	5d                   	pop    %ebp
 76f:	c3                   	ret    
 770:	8b 08                	mov    (%eax),%ecx
 772:	89 0a                	mov    %ecx,(%edx)
 774:	eb e9                	jmp    75f <malloc+0xaf>
 776:	c7 05 68 0a 00 00 6c 	movl   $0xa6c,0xa68
 77d:	0a 00 00 
 780:	c7 05 6c 0a 00 00 6c 	movl   $0xa6c,0xa6c
 787:	0a 00 00 
 78a:	b8 6c 0a 00 00       	mov    $0xa6c,%eax
 78f:	c7 05 70 0a 00 00 00 	movl   $0x0,0xa70
 796:	00 00 00 
 799:	e9 3e ff ff ff       	jmp    6dc <malloc+0x2c>
