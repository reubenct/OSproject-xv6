
_cps:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"
int main()
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
	cprocstate();
   6:	e8 ef 02 00 00       	call   2fa <cprocstate>
	exit();
   b:	e8 42 02 00 00       	call   252 <exit>

00000010 <strcpy>:
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	53                   	push   %ebx
  14:	8b 45 08             	mov    0x8(%ebp),%eax
  17:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  1a:	89 c2                	mov    %eax,%edx
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  20:	83 c1 01             	add    $0x1,%ecx
  23:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
  27:	83 c2 01             	add    $0x1,%edx
  2a:	84 db                	test   %bl,%bl
  2c:	88 5a ff             	mov    %bl,-0x1(%edx)
  2f:	75 ef                	jne    20 <strcpy+0x10>
  31:	5b                   	pop    %ebx
  32:	5d                   	pop    %ebp
  33:	c3                   	ret    
  34:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  3a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000040 <strcmp>:
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	56                   	push   %esi
  44:	53                   	push   %ebx
  45:	8b 55 08             	mov    0x8(%ebp),%edx
  48:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4b:	0f b6 02             	movzbl (%edx),%eax
  4e:	0f b6 19             	movzbl (%ecx),%ebx
  51:	84 c0                	test   %al,%al
  53:	75 1e                	jne    73 <strcmp+0x33>
  55:	eb 29                	jmp    80 <strcmp+0x40>
  57:	89 f6                	mov    %esi,%esi
  59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  60:	83 c2 01             	add    $0x1,%edx
  63:	0f b6 02             	movzbl (%edx),%eax
  66:	8d 71 01             	lea    0x1(%ecx),%esi
  69:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  6d:	84 c0                	test   %al,%al
  6f:	74 0f                	je     80 <strcmp+0x40>
  71:	89 f1                	mov    %esi,%ecx
  73:	38 d8                	cmp    %bl,%al
  75:	74 e9                	je     60 <strcmp+0x20>
  77:	29 d8                	sub    %ebx,%eax
  79:	5b                   	pop    %ebx
  7a:	5e                   	pop    %esi
  7b:	5d                   	pop    %ebp
  7c:	c3                   	ret    
  7d:	8d 76 00             	lea    0x0(%esi),%esi
  80:	31 c0                	xor    %eax,%eax
  82:	29 d8                	sub    %ebx,%eax
  84:	5b                   	pop    %ebx
  85:	5e                   	pop    %esi
  86:	5d                   	pop    %ebp
  87:	c3                   	ret    
  88:	90                   	nop
  89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000090 <strlen>:
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	8b 4d 08             	mov    0x8(%ebp),%ecx
  96:	80 39 00             	cmpb   $0x0,(%ecx)
  99:	74 12                	je     ad <strlen+0x1d>
  9b:	31 d2                	xor    %edx,%edx
  9d:	8d 76 00             	lea    0x0(%esi),%esi
  a0:	83 c2 01             	add    $0x1,%edx
  a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
  a7:	89 d0                	mov    %edx,%eax
  a9:	75 f5                	jne    a0 <strlen+0x10>
  ab:	5d                   	pop    %ebp
  ac:	c3                   	ret    
  ad:	31 c0                	xor    %eax,%eax
  af:	5d                   	pop    %ebp
  b0:	c3                   	ret    
  b1:	eb 0d                	jmp    c0 <memset>
  b3:	90                   	nop
  b4:	90                   	nop
  b5:	90                   	nop
  b6:	90                   	nop
  b7:	90                   	nop
  b8:	90                   	nop
  b9:	90                   	nop
  ba:	90                   	nop
  bb:	90                   	nop
  bc:	90                   	nop
  bd:	90                   	nop
  be:	90                   	nop
  bf:	90                   	nop

000000c0 <memset>:
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	8b 55 08             	mov    0x8(%ebp),%edx
  c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  ca:	8b 45 0c             	mov    0xc(%ebp),%eax
  cd:	89 d7                	mov    %edx,%edi
  cf:	fc                   	cld    
  d0:	f3 aa                	rep stos %al,%es:(%edi)
  d2:	89 d0                	mov    %edx,%eax
  d4:	5f                   	pop    %edi
  d5:	5d                   	pop    %ebp
  d6:	c3                   	ret    
  d7:	89 f6                	mov    %esi,%esi
  d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000000e0 <strchr>:
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	53                   	push   %ebx
  e4:	8b 45 08             	mov    0x8(%ebp),%eax
  e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ea:	0f b6 10             	movzbl (%eax),%edx
  ed:	84 d2                	test   %dl,%dl
  ef:	74 1d                	je     10e <strchr+0x2e>
  f1:	38 d3                	cmp    %dl,%bl
  f3:	89 d9                	mov    %ebx,%ecx
  f5:	75 0d                	jne    104 <strchr+0x24>
  f7:	eb 17                	jmp    110 <strchr+0x30>
  f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 100:	38 ca                	cmp    %cl,%dl
 102:	74 0c                	je     110 <strchr+0x30>
 104:	83 c0 01             	add    $0x1,%eax
 107:	0f b6 10             	movzbl (%eax),%edx
 10a:	84 d2                	test   %dl,%dl
 10c:	75 f2                	jne    100 <strchr+0x20>
 10e:	31 c0                	xor    %eax,%eax
 110:	5b                   	pop    %ebx
 111:	5d                   	pop    %ebp
 112:	c3                   	ret    
 113:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000120 <gets>:
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	56                   	push   %esi
 125:	53                   	push   %ebx
 126:	31 f6                	xor    %esi,%esi
 128:	8d 7d e7             	lea    -0x19(%ebp),%edi
 12b:	83 ec 1c             	sub    $0x1c,%esp
 12e:	eb 29                	jmp    159 <gets+0x39>
 130:	83 ec 04             	sub    $0x4,%esp
 133:	6a 01                	push   $0x1
 135:	57                   	push   %edi
 136:	6a 00                	push   $0x0
 138:	e8 2d 01 00 00       	call   26a <read>
 13d:	83 c4 10             	add    $0x10,%esp
 140:	85 c0                	test   %eax,%eax
 142:	7e 1d                	jle    161 <gets+0x41>
 144:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 148:	8b 55 08             	mov    0x8(%ebp),%edx
 14b:	89 de                	mov    %ebx,%esi
 14d:	3c 0a                	cmp    $0xa,%al
 14f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 153:	74 1b                	je     170 <gets+0x50>
 155:	3c 0d                	cmp    $0xd,%al
 157:	74 17                	je     170 <gets+0x50>
 159:	8d 5e 01             	lea    0x1(%esi),%ebx
 15c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 15f:	7c cf                	jl     130 <gets+0x10>
 161:	8b 45 08             	mov    0x8(%ebp),%eax
 164:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 168:	8d 65 f4             	lea    -0xc(%ebp),%esp
 16b:	5b                   	pop    %ebx
 16c:	5e                   	pop    %esi
 16d:	5f                   	pop    %edi
 16e:	5d                   	pop    %ebp
 16f:	c3                   	ret    
 170:	8b 45 08             	mov    0x8(%ebp),%eax
 173:	89 de                	mov    %ebx,%esi
 175:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 179:	8d 65 f4             	lea    -0xc(%ebp),%esp
 17c:	5b                   	pop    %ebx
 17d:	5e                   	pop    %esi
 17e:	5f                   	pop    %edi
 17f:	5d                   	pop    %ebp
 180:	c3                   	ret    
 181:	eb 0d                	jmp    190 <stat>
 183:	90                   	nop
 184:	90                   	nop
 185:	90                   	nop
 186:	90                   	nop
 187:	90                   	nop
 188:	90                   	nop
 189:	90                   	nop
 18a:	90                   	nop
 18b:	90                   	nop
 18c:	90                   	nop
 18d:	90                   	nop
 18e:	90                   	nop
 18f:	90                   	nop

00000190 <stat>:
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	56                   	push   %esi
 194:	53                   	push   %ebx
 195:	83 ec 08             	sub    $0x8,%esp
 198:	6a 00                	push   $0x0
 19a:	ff 75 08             	pushl  0x8(%ebp)
 19d:	e8 f0 00 00 00       	call   292 <open>
 1a2:	83 c4 10             	add    $0x10,%esp
 1a5:	85 c0                	test   %eax,%eax
 1a7:	78 27                	js     1d0 <stat+0x40>
 1a9:	83 ec 08             	sub    $0x8,%esp
 1ac:	ff 75 0c             	pushl  0xc(%ebp)
 1af:	89 c3                	mov    %eax,%ebx
 1b1:	50                   	push   %eax
 1b2:	e8 f3 00 00 00       	call   2aa <fstat>
 1b7:	89 c6                	mov    %eax,%esi
 1b9:	89 1c 24             	mov    %ebx,(%esp)
 1bc:	e8 b9 00 00 00       	call   27a <close>
 1c1:	83 c4 10             	add    $0x10,%esp
 1c4:	89 f0                	mov    %esi,%eax
 1c6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1c9:	5b                   	pop    %ebx
 1ca:	5e                   	pop    %esi
 1cb:	5d                   	pop    %ebp
 1cc:	c3                   	ret    
 1cd:	8d 76 00             	lea    0x0(%esi),%esi
 1d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 1d5:	eb ef                	jmp    1c6 <stat+0x36>
 1d7:	89 f6                	mov    %esi,%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001e0 <atoi>:
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1e7:	0f be 11             	movsbl (%ecx),%edx
 1ea:	8d 42 d0             	lea    -0x30(%edx),%eax
 1ed:	3c 09                	cmp    $0x9,%al
 1ef:	b8 00 00 00 00       	mov    $0x0,%eax
 1f4:	77 1f                	ja     215 <atoi+0x35>
 1f6:	8d 76 00             	lea    0x0(%esi),%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 200:	8d 04 80             	lea    (%eax,%eax,4),%eax
 203:	83 c1 01             	add    $0x1,%ecx
 206:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 20a:	0f be 11             	movsbl (%ecx),%edx
 20d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 210:	80 fb 09             	cmp    $0x9,%bl
 213:	76 eb                	jbe    200 <atoi+0x20>
 215:	5b                   	pop    %ebx
 216:	5d                   	pop    %ebp
 217:	c3                   	ret    
 218:	90                   	nop
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000220 <memmove>:
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	56                   	push   %esi
 224:	53                   	push   %ebx
 225:	8b 5d 10             	mov    0x10(%ebp),%ebx
 228:	8b 45 08             	mov    0x8(%ebp),%eax
 22b:	8b 75 0c             	mov    0xc(%ebp),%esi
 22e:	85 db                	test   %ebx,%ebx
 230:	7e 14                	jle    246 <memmove+0x26>
 232:	31 d2                	xor    %edx,%edx
 234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 238:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 23c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 23f:	83 c2 01             	add    $0x1,%edx
 242:	39 da                	cmp    %ebx,%edx
 244:	75 f2                	jne    238 <memmove+0x18>
 246:	5b                   	pop    %ebx
 247:	5e                   	pop    %esi
 248:	5d                   	pop    %ebp
 249:	c3                   	ret    

0000024a <fork>:
 24a:	b8 01 00 00 00       	mov    $0x1,%eax
 24f:	cd 40                	int    $0x40
 251:	c3                   	ret    

00000252 <exit>:
 252:	b8 02 00 00 00       	mov    $0x2,%eax
 257:	cd 40                	int    $0x40
 259:	c3                   	ret    

0000025a <wait>:
 25a:	b8 03 00 00 00       	mov    $0x3,%eax
 25f:	cd 40                	int    $0x40
 261:	c3                   	ret    

00000262 <pipe>:
 262:	b8 04 00 00 00       	mov    $0x4,%eax
 267:	cd 40                	int    $0x40
 269:	c3                   	ret    

0000026a <read>:
 26a:	b8 05 00 00 00       	mov    $0x5,%eax
 26f:	cd 40                	int    $0x40
 271:	c3                   	ret    

00000272 <write>:
 272:	b8 10 00 00 00       	mov    $0x10,%eax
 277:	cd 40                	int    $0x40
 279:	c3                   	ret    

0000027a <close>:
 27a:	b8 15 00 00 00       	mov    $0x15,%eax
 27f:	cd 40                	int    $0x40
 281:	c3                   	ret    

00000282 <kill>:
 282:	b8 06 00 00 00       	mov    $0x6,%eax
 287:	cd 40                	int    $0x40
 289:	c3                   	ret    

0000028a <exec>:
 28a:	b8 07 00 00 00       	mov    $0x7,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    

00000292 <open>:
 292:	b8 0f 00 00 00       	mov    $0xf,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    

0000029a <mknod>:
 29a:	b8 11 00 00 00       	mov    $0x11,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    

000002a2 <unlink>:
 2a2:	b8 12 00 00 00       	mov    $0x12,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    

000002aa <fstat>:
 2aa:	b8 08 00 00 00       	mov    $0x8,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    

000002b2 <link>:
 2b2:	b8 13 00 00 00       	mov    $0x13,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    

000002ba <mkdir>:
 2ba:	b8 14 00 00 00       	mov    $0x14,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    

000002c2 <chdir>:
 2c2:	b8 09 00 00 00       	mov    $0x9,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    

000002ca <dup>:
 2ca:	b8 0a 00 00 00       	mov    $0xa,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    

000002d2 <getpid>:
 2d2:	b8 0b 00 00 00       	mov    $0xb,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    

000002da <sbrk>:
 2da:	b8 0c 00 00 00       	mov    $0xc,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    

000002e2 <sleep>:
 2e2:	b8 0d 00 00 00       	mov    $0xd,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    

000002ea <uptime>:
 2ea:	b8 0e 00 00 00       	mov    $0xe,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    

000002f2 <random>:
 2f2:	b8 16 00 00 00       	mov    $0x16,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    

000002fa <cprocstate>:
 2fa:	b8 18 00 00 00       	mov    $0x18,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    

00000302 <signalinfo>:
 302:	b8 19 00 00 00       	mov    $0x19,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    

0000030a <setseed>:
 30a:	b8 17 00 00 00       	mov    $0x17,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    
 312:	66 90                	xchg   %ax,%ax
 314:	66 90                	xchg   %ax,%ax
 316:	66 90                	xchg   %ax,%ax
 318:	66 90                	xchg   %ax,%ax
 31a:	66 90                	xchg   %ax,%ax
 31c:	66 90                	xchg   %ax,%ax
 31e:	66 90                	xchg   %ax,%ax

00000320 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	57                   	push   %edi
 324:	56                   	push   %esi
 325:	89 c6                	mov    %eax,%esi
 327:	53                   	push   %ebx
 328:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 32b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 32e:	85 db                	test   %ebx,%ebx
 330:	74 09                	je     33b <printint+0x1b>
 332:	89 d0                	mov    %edx,%eax
 334:	c1 e8 1f             	shr    $0x1f,%eax
 337:	84 c0                	test   %al,%al
 339:	75 75                	jne    3b0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 33b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 33d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 344:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 347:	31 ff                	xor    %edi,%edi
 349:	89 ce                	mov    %ecx,%esi
 34b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 34e:	eb 02                	jmp    352 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 350:	89 cf                	mov    %ecx,%edi
 352:	31 d2                	xor    %edx,%edx
 354:	f7 f6                	div    %esi
 356:	8d 4f 01             	lea    0x1(%edi),%ecx
 359:	0f b6 92 35 07 00 00 	movzbl 0x735(%edx),%edx
  }while((x /= base) != 0);
 360:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 362:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 365:	75 e9                	jne    350 <printint+0x30>
  if(neg)
 367:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 36a:	89 c8                	mov    %ecx,%eax
 36c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 36f:	85 d2                	test   %edx,%edx
 371:	74 08                	je     37b <printint+0x5b>
    buf[i++] = '-';
 373:	8d 4f 02             	lea    0x2(%edi),%ecx
 376:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 37b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 37e:	66 90                	xchg   %ax,%ax
 380:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 385:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 388:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 38f:	00 
 390:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 394:	89 34 24             	mov    %esi,(%esp)
 397:	88 45 d7             	mov    %al,-0x29(%ebp)
 39a:	e8 d3 fe ff ff       	call   272 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 39f:	83 ff ff             	cmp    $0xffffffff,%edi
 3a2:	75 dc                	jne    380 <printint+0x60>
    putc(fd, buf[i]);
}
 3a4:	83 c4 4c             	add    $0x4c,%esp
 3a7:	5b                   	pop    %ebx
 3a8:	5e                   	pop    %esi
 3a9:	5f                   	pop    %edi
 3aa:	5d                   	pop    %ebp
 3ab:	c3                   	ret    
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 3b0:	89 d0                	mov    %edx,%eax
 3b2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 3b4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 3bb:	eb 87                	jmp    344 <printint+0x24>
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 3c4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3c6:	56                   	push   %esi
 3c7:	53                   	push   %ebx
 3c8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 3cb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 3ce:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3d1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 3d4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 3d7:	0f b6 13             	movzbl (%ebx),%edx
 3da:	83 c3 01             	add    $0x1,%ebx
 3dd:	84 d2                	test   %dl,%dl
 3df:	75 39                	jne    41a <printf+0x5a>
 3e1:	e9 c2 00 00 00       	jmp    4a8 <printf+0xe8>
 3e6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 3e8:	83 fa 25             	cmp    $0x25,%edx
 3eb:	0f 84 bf 00 00 00    	je     4b0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 3f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 3f4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3fb:	00 
 3fc:	89 44 24 04          	mov    %eax,0x4(%esp)
 400:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 403:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 406:	e8 67 fe ff ff       	call   272 <write>
 40b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 40e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 412:	84 d2                	test   %dl,%dl
 414:	0f 84 8e 00 00 00    	je     4a8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 41a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 41c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 41f:	74 c7                	je     3e8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 421:	83 ff 25             	cmp    $0x25,%edi
 424:	75 e5                	jne    40b <printf+0x4b>
      if(c == 'd'){
 426:	83 fa 64             	cmp    $0x64,%edx
 429:	0f 84 31 01 00 00    	je     560 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 42f:	25 f7 00 00 00       	and    $0xf7,%eax
 434:	83 f8 70             	cmp    $0x70,%eax
 437:	0f 84 83 00 00 00    	je     4c0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 43d:	83 fa 73             	cmp    $0x73,%edx
 440:	0f 84 a2 00 00 00    	je     4e8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 446:	83 fa 63             	cmp    $0x63,%edx
 449:	0f 84 35 01 00 00    	je     584 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 44f:	83 fa 25             	cmp    $0x25,%edx
 452:	0f 84 e0 00 00 00    	je     538 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 458:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 45b:	83 c3 01             	add    $0x1,%ebx
 45e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 465:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 466:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 468:	89 44 24 04          	mov    %eax,0x4(%esp)
 46c:	89 34 24             	mov    %esi,(%esp)
 46f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 472:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 476:	e8 f7 fd ff ff       	call   272 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 47b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 47e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 481:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 488:	00 
 489:	89 44 24 04          	mov    %eax,0x4(%esp)
 48d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 490:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 493:	e8 da fd ff ff       	call   272 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 498:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 49c:	84 d2                	test   %dl,%dl
 49e:	0f 85 76 ff ff ff    	jne    41a <printf+0x5a>
 4a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 4a8:	83 c4 3c             	add    $0x3c,%esp
 4ab:	5b                   	pop    %ebx
 4ac:	5e                   	pop    %esi
 4ad:	5f                   	pop    %edi
 4ae:	5d                   	pop    %ebp
 4af:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 4b0:	bf 25 00 00 00       	mov    $0x25,%edi
 4b5:	e9 51 ff ff ff       	jmp    40b <printf+0x4b>
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 4c0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 4c3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 4c8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 4ca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 4d1:	8b 10                	mov    (%eax),%edx
 4d3:	89 f0                	mov    %esi,%eax
 4d5:	e8 46 fe ff ff       	call   320 <printint>
        ap++;
 4da:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 4de:	e9 28 ff ff ff       	jmp    40b <printf+0x4b>
 4e3:	90                   	nop
 4e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 4e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 4eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 4ef:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 4f1:	b8 2e 07 00 00       	mov    $0x72e,%eax
 4f6:	85 ff                	test   %edi,%edi
 4f8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 4fb:	0f b6 07             	movzbl (%edi),%eax
 4fe:	84 c0                	test   %al,%al
 500:	74 2a                	je     52c <printf+0x16c>
 502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 508:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 50b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 50e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 511:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 518:	00 
 519:	89 44 24 04          	mov    %eax,0x4(%esp)
 51d:	89 34 24             	mov    %esi,(%esp)
 520:	e8 4d fd ff ff       	call   272 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 525:	0f b6 07             	movzbl (%edi),%eax
 528:	84 c0                	test   %al,%al
 52a:	75 dc                	jne    508 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 52c:	31 ff                	xor    %edi,%edi
 52e:	e9 d8 fe ff ff       	jmp    40b <printf+0x4b>
 533:	90                   	nop
 534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 538:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 53b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 53d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 544:	00 
 545:	89 44 24 04          	mov    %eax,0x4(%esp)
 549:	89 34 24             	mov    %esi,(%esp)
 54c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 550:	e8 1d fd ff ff       	call   272 <write>
 555:	e9 b1 fe ff ff       	jmp    40b <printf+0x4b>
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 560:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 563:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 568:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 56b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 572:	8b 10                	mov    (%eax),%edx
 574:	89 f0                	mov    %esi,%eax
 576:	e8 a5 fd ff ff       	call   320 <printint>
        ap++;
 57b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 57f:	e9 87 fe ff ff       	jmp    40b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 584:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 587:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 589:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 58b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 592:	00 
 593:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 596:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 599:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 59c:	89 44 24 04          	mov    %eax,0x4(%esp)
 5a0:	e8 cd fc ff ff       	call   272 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 5a5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5a9:	e9 5d fe ff ff       	jmp    40b <printf+0x4b>
 5ae:	66 90                	xchg   %ax,%ax

000005b0 <free>:
 5b0:	55                   	push   %ebp
 5b1:	a1 c4 09 00 00       	mov    0x9c4,%eax
 5b6:	89 e5                	mov    %esp,%ebp
 5b8:	57                   	push   %edi
 5b9:	56                   	push   %esi
 5ba:	53                   	push   %ebx
 5bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5be:	8b 10                	mov    (%eax),%edx
 5c0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 5c3:	39 c8                	cmp    %ecx,%eax
 5c5:	73 19                	jae    5e0 <free+0x30>
 5c7:	89 f6                	mov    %esi,%esi
 5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 5d0:	39 d1                	cmp    %edx,%ecx
 5d2:	72 1c                	jb     5f0 <free+0x40>
 5d4:	39 d0                	cmp    %edx,%eax
 5d6:	73 18                	jae    5f0 <free+0x40>
 5d8:	89 d0                	mov    %edx,%eax
 5da:	39 c8                	cmp    %ecx,%eax
 5dc:	8b 10                	mov    (%eax),%edx
 5de:	72 f0                	jb     5d0 <free+0x20>
 5e0:	39 d0                	cmp    %edx,%eax
 5e2:	72 f4                	jb     5d8 <free+0x28>
 5e4:	39 d1                	cmp    %edx,%ecx
 5e6:	73 f0                	jae    5d8 <free+0x28>
 5e8:	90                   	nop
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5f0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5f3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5f6:	39 d7                	cmp    %edx,%edi
 5f8:	74 19                	je     613 <free+0x63>
 5fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5fd:	8b 50 04             	mov    0x4(%eax),%edx
 600:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 603:	39 f1                	cmp    %esi,%ecx
 605:	74 23                	je     62a <free+0x7a>
 607:	89 08                	mov    %ecx,(%eax)
 609:	a3 c4 09 00 00       	mov    %eax,0x9c4
 60e:	5b                   	pop    %ebx
 60f:	5e                   	pop    %esi
 610:	5f                   	pop    %edi
 611:	5d                   	pop    %ebp
 612:	c3                   	ret    
 613:	03 72 04             	add    0x4(%edx),%esi
 616:	89 73 fc             	mov    %esi,-0x4(%ebx)
 619:	8b 10                	mov    (%eax),%edx
 61b:	8b 12                	mov    (%edx),%edx
 61d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 620:	8b 50 04             	mov    0x4(%eax),%edx
 623:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 626:	39 f1                	cmp    %esi,%ecx
 628:	75 dd                	jne    607 <free+0x57>
 62a:	03 53 fc             	add    -0x4(%ebx),%edx
 62d:	a3 c4 09 00 00       	mov    %eax,0x9c4
 632:	89 50 04             	mov    %edx,0x4(%eax)
 635:	8b 53 f8             	mov    -0x8(%ebx),%edx
 638:	89 10                	mov    %edx,(%eax)
 63a:	5b                   	pop    %ebx
 63b:	5e                   	pop    %esi
 63c:	5f                   	pop    %edi
 63d:	5d                   	pop    %ebp
 63e:	c3                   	ret    
 63f:	90                   	nop

00000640 <malloc>:
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
 645:	53                   	push   %ebx
 646:	83 ec 0c             	sub    $0xc,%esp
 649:	8b 45 08             	mov    0x8(%ebp),%eax
 64c:	8b 15 c4 09 00 00    	mov    0x9c4,%edx
 652:	8d 78 07             	lea    0x7(%eax),%edi
 655:	c1 ef 03             	shr    $0x3,%edi
 658:	83 c7 01             	add    $0x1,%edi
 65b:	85 d2                	test   %edx,%edx
 65d:	0f 84 a3 00 00 00    	je     706 <malloc+0xc6>
 663:	8b 02                	mov    (%edx),%eax
 665:	8b 48 04             	mov    0x4(%eax),%ecx
 668:	39 cf                	cmp    %ecx,%edi
 66a:	76 74                	jbe    6e0 <malloc+0xa0>
 66c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 672:	be 00 10 00 00       	mov    $0x1000,%esi
 677:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 67e:	0f 43 f7             	cmovae %edi,%esi
 681:	ba 00 80 00 00       	mov    $0x8000,%edx
 686:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 68c:	0f 46 da             	cmovbe %edx,%ebx
 68f:	eb 10                	jmp    6a1 <malloc+0x61>
 691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 698:	8b 02                	mov    (%edx),%eax
 69a:	8b 48 04             	mov    0x4(%eax),%ecx
 69d:	39 cf                	cmp    %ecx,%edi
 69f:	76 3f                	jbe    6e0 <malloc+0xa0>
 6a1:	39 05 c4 09 00 00    	cmp    %eax,0x9c4
 6a7:	89 c2                	mov    %eax,%edx
 6a9:	75 ed                	jne    698 <malloc+0x58>
 6ab:	83 ec 0c             	sub    $0xc,%esp
 6ae:	53                   	push   %ebx
 6af:	e8 26 fc ff ff       	call   2da <sbrk>
 6b4:	83 c4 10             	add    $0x10,%esp
 6b7:	83 f8 ff             	cmp    $0xffffffff,%eax
 6ba:	74 1c                	je     6d8 <malloc+0x98>
 6bc:	89 70 04             	mov    %esi,0x4(%eax)
 6bf:	83 ec 0c             	sub    $0xc,%esp
 6c2:	83 c0 08             	add    $0x8,%eax
 6c5:	50                   	push   %eax
 6c6:	e8 e5 fe ff ff       	call   5b0 <free>
 6cb:	8b 15 c4 09 00 00    	mov    0x9c4,%edx
 6d1:	83 c4 10             	add    $0x10,%esp
 6d4:	85 d2                	test   %edx,%edx
 6d6:	75 c0                	jne    698 <malloc+0x58>
 6d8:	31 c0                	xor    %eax,%eax
 6da:	eb 1c                	jmp    6f8 <malloc+0xb8>
 6dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6e0:	39 cf                	cmp    %ecx,%edi
 6e2:	74 1c                	je     700 <malloc+0xc0>
 6e4:	29 f9                	sub    %edi,%ecx
 6e6:	89 48 04             	mov    %ecx,0x4(%eax)
 6e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 6ec:	89 78 04             	mov    %edi,0x4(%eax)
 6ef:	89 15 c4 09 00 00    	mov    %edx,0x9c4
 6f5:	83 c0 08             	add    $0x8,%eax
 6f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6fb:	5b                   	pop    %ebx
 6fc:	5e                   	pop    %esi
 6fd:	5f                   	pop    %edi
 6fe:	5d                   	pop    %ebp
 6ff:	c3                   	ret    
 700:	8b 08                	mov    (%eax),%ecx
 702:	89 0a                	mov    %ecx,(%edx)
 704:	eb e9                	jmp    6ef <malloc+0xaf>
 706:	c7 05 c4 09 00 00 c8 	movl   $0x9c8,0x9c4
 70d:	09 00 00 
 710:	c7 05 c8 09 00 00 c8 	movl   $0x9c8,0x9c8
 717:	09 00 00 
 71a:	b8 c8 09 00 00       	mov    $0x9c8,%eax
 71f:	c7 05 cc 09 00 00 00 	movl   $0x0,0x9cc
 726:	00 00 00 
 729:	e9 3e ff ff ff       	jmp    66c <malloc+0x2c>
