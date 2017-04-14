
_sleeper:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	56                   	push   %esi
   4:	53                   	push   %ebx
   5:	83 e4 f0             	and    $0xfffffff0,%esp
   8:	83 ec 10             	sub    $0x10,%esp
   b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	int n=0,i,len=0;
	len=strlen(argv[1]);//using strlen function of user library
   e:	8b 43 04             	mov    0x4(%ebx),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	e8 d7 00 00 00       	call   f0 <strlen>
	for(i=0; i<len; i++){
  19:	85 c0                	test   %eax,%eax
  1b:	7e 43                	jle    60 <main+0x60>
  1d:	8b 73 04             	mov    0x4(%ebx),%esi
  20:	31 d2                	xor    %edx,%edx
#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
	int n=0,i,len=0;
  22:	31 c9                	xor    %ecx,%ecx
  24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	len=strlen(argv[1]);//using strlen function of user library
	for(i=0; i<len; i++){
		n= (n* 10 + ( argv[1][i] - '0' ));
  28:	8d 1c 89             	lea    (%ecx,%ecx,4),%ebx
  2b:	0f be 0c 16          	movsbl (%esi,%edx,1),%ecx
#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
	int n=0,i,len=0;
	len=strlen(argv[1]);//using strlen function of user library
	for(i=0; i<len; i++){
  2f:	83 c2 01             	add    $0x1,%edx
  32:	39 d0                	cmp    %edx,%eax
		n= (n* 10 + ( argv[1][i] - '0' ));
  34:	8d 4c 59 d0          	lea    -0x30(%ecx,%ebx,2),%ecx
#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
	int n=0,i,len=0;
	len=strlen(argv[1]);//using strlen function of user library
	for(i=0; i<len; i++){
  38:	75 ee                	jne    28 <main+0x28>
		n= (n* 10 + ( argv[1][i] - '0' ));
		}
	sleep((int)(1000*n/15));//found by trial and error that sleep(1000)~=15sec
  3a:	69 c9 e8 03 00 00    	imul   $0x3e8,%ecx,%ecx
  40:	ba 89 88 88 88       	mov    $0x88888889,%edx
  45:	89 c8                	mov    %ecx,%eax
  47:	f7 ea                	imul   %edx
  49:	01 ca                	add    %ecx,%edx
  4b:	c1 fa 03             	sar    $0x3,%edx
  4e:	c1 f9 1f             	sar    $0x1f,%ecx
  51:	29 ca                	sub    %ecx,%edx
  53:	89 14 24             	mov    %edx,(%esp)
  56:	e8 c7 02 00 00       	call   322 <sleep>
	exit();
  5b:	e8 32 02 00 00       	call   292 <exit>
#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
	int n=0,i,len=0;
  60:	31 c9                	xor    %ecx,%ecx
  62:	eb d6                	jmp    3a <main+0x3a>
  64:	66 90                	xchg   %ax,%ax
  66:	66 90                	xchg   %ax,%ax
  68:	66 90                	xchg   %ax,%ax
  6a:	66 90                	xchg   %ax,%ax
  6c:	66 90                	xchg   %ax,%ax
  6e:	66 90                	xchg   %ax,%ax

00000070 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
  70:	55                   	push   %ebp
  71:	89 e5                	mov    %esp,%ebp
  73:	8b 45 08             	mov    0x8(%ebp),%eax
  76:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  79:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  7a:	89 c2                	mov    %eax,%edx
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  80:	83 c1 01             	add    $0x1,%ecx
  83:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
  87:	83 c2 01             	add    $0x1,%edx
  8a:	84 db                	test   %bl,%bl
  8c:	88 5a ff             	mov    %bl,-0x1(%edx)
  8f:	75 ef                	jne    80 <strcpy+0x10>
    ;
  return os;
}
  91:	5b                   	pop    %ebx
  92:	5d                   	pop    %ebp
  93:	c3                   	ret    
  94:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  9a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000000a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	8b 55 08             	mov    0x8(%ebp),%edx
  a6:	53                   	push   %ebx
  a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  aa:	0f b6 02             	movzbl (%edx),%eax
  ad:	84 c0                	test   %al,%al
  af:	74 2d                	je     de <strcmp+0x3e>
  b1:	0f b6 19             	movzbl (%ecx),%ebx
  b4:	38 d8                	cmp    %bl,%al
  b6:	74 0e                	je     c6 <strcmp+0x26>
  b8:	eb 2b                	jmp    e5 <strcmp+0x45>
  ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  c0:	38 c8                	cmp    %cl,%al
  c2:	75 15                	jne    d9 <strcmp+0x39>
    p++, q++;
  c4:	89 d9                	mov    %ebx,%ecx
  c6:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  c9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
  cc:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  cf:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
  d3:	84 c0                	test   %al,%al
  d5:	75 e9                	jne    c0 <strcmp+0x20>
  d7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
  d9:	29 c8                	sub    %ecx,%eax
}
  db:	5b                   	pop    %ebx
  dc:	5d                   	pop    %ebp
  dd:	c3                   	ret    
  de:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  e1:	31 c0                	xor    %eax,%eax
  e3:	eb f4                	jmp    d9 <strcmp+0x39>
  e5:	0f b6 cb             	movzbl %bl,%ecx
  e8:	eb ef                	jmp    d9 <strcmp+0x39>
  ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000000f0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
  f6:	80 39 00             	cmpb   $0x0,(%ecx)
  f9:	74 12                	je     10d <strlen+0x1d>
  fb:	31 d2                	xor    %edx,%edx
  fd:	8d 76 00             	lea    0x0(%esi),%esi
 100:	83 c2 01             	add    $0x1,%edx
 103:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 107:	89 d0                	mov    %edx,%eax
 109:	75 f5                	jne    100 <strlen+0x10>
    ;
  return n;
}
 10b:	5d                   	pop    %ebp
 10c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 10d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 10f:	5d                   	pop    %ebp
 110:	c3                   	ret    
 111:	eb 0d                	jmp    120 <memset>
 113:	90                   	nop
 114:	90                   	nop
 115:	90                   	nop
 116:	90                   	nop
 117:	90                   	nop
 118:	90                   	nop
 119:	90                   	nop
 11a:	90                   	nop
 11b:	90                   	nop
 11c:	90                   	nop
 11d:	90                   	nop
 11e:	90                   	nop
 11f:	90                   	nop

00000120 <memset>:

void*
memset(void *dst, int c, uint n)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	8b 55 08             	mov    0x8(%ebp),%edx
 126:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 127:	8b 4d 10             	mov    0x10(%ebp),%ecx
 12a:	8b 45 0c             	mov    0xc(%ebp),%eax
 12d:	89 d7                	mov    %edx,%edi
 12f:	fc                   	cld    
 130:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 132:	89 d0                	mov    %edx,%eax
 134:	5f                   	pop    %edi
 135:	5d                   	pop    %ebp
 136:	c3                   	ret    
 137:	89 f6                	mov    %esi,%esi
 139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000140 <strchr>:

char*
strchr(const char *s, char c)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 45 08             	mov    0x8(%ebp),%eax
 146:	53                   	push   %ebx
 147:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 14a:	0f b6 18             	movzbl (%eax),%ebx
 14d:	84 db                	test   %bl,%bl
 14f:	74 1d                	je     16e <strchr+0x2e>
    if(*s == c)
 151:	38 d3                	cmp    %dl,%bl
 153:	89 d1                	mov    %edx,%ecx
 155:	75 0d                	jne    164 <strchr+0x24>
 157:	eb 17                	jmp    170 <strchr+0x30>
 159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 160:	38 ca                	cmp    %cl,%dl
 162:	74 0c                	je     170 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 164:	83 c0 01             	add    $0x1,%eax
 167:	0f b6 10             	movzbl (%eax),%edx
 16a:	84 d2                	test   %dl,%dl
 16c:	75 f2                	jne    160 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 16e:	31 c0                	xor    %eax,%eax
}
 170:	5b                   	pop    %ebx
 171:	5d                   	pop    %ebp
 172:	c3                   	ret    
 173:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000180 <gets>:

char*
gets(char *buf, int max)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	57                   	push   %edi
 184:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 185:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 187:	53                   	push   %ebx
 188:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 18b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 18e:	eb 31                	jmp    1c1 <gets+0x41>
    cc = read(0, &c, 1);
 190:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 197:	00 
 198:	89 7c 24 04          	mov    %edi,0x4(%esp)
 19c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1a3:	e8 02 01 00 00       	call   2aa <read>
    if(cc < 1)
 1a8:	85 c0                	test   %eax,%eax
 1aa:	7e 1d                	jle    1c9 <gets+0x49>
      break;
    buf[i++] = c;
 1ac:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 1b0:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 1b2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 1b5:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 1b7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1bb:	74 0c                	je     1c9 <gets+0x49>
 1bd:	3c 0a                	cmp    $0xa,%al
 1bf:	74 08                	je     1c9 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 1c1:	8d 5e 01             	lea    0x1(%esi),%ebx
 1c4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1c7:	7c c7                	jl     190 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 1c9:	8b 45 08             	mov    0x8(%ebp),%eax
 1cc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1d0:	83 c4 2c             	add    $0x2c,%esp
 1d3:	5b                   	pop    %ebx
 1d4:	5e                   	pop    %esi
 1d5:	5f                   	pop    %edi
 1d6:	5d                   	pop    %ebp
 1d7:	c3                   	ret    
 1d8:	90                   	nop
 1d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001e0 <stat>:

int
stat(char *n, struct stat *st)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	56                   	push   %esi
 1e4:	53                   	push   %ebx
 1e5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1e8:	8b 45 08             	mov    0x8(%ebp),%eax
 1eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1f2:	00 
 1f3:	89 04 24             	mov    %eax,(%esp)
 1f6:	e8 d7 00 00 00       	call   2d2 <open>
  if(fd < 0)
 1fb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1fd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 1ff:	78 27                	js     228 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 201:	8b 45 0c             	mov    0xc(%ebp),%eax
 204:	89 1c 24             	mov    %ebx,(%esp)
 207:	89 44 24 04          	mov    %eax,0x4(%esp)
 20b:	e8 da 00 00 00       	call   2ea <fstat>
  close(fd);
 210:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 213:	89 c6                	mov    %eax,%esi
  close(fd);
 215:	e8 a0 00 00 00       	call   2ba <close>
  return r;
 21a:	89 f0                	mov    %esi,%eax
}
 21c:	83 c4 10             	add    $0x10,%esp
 21f:	5b                   	pop    %ebx
 220:	5e                   	pop    %esi
 221:	5d                   	pop    %ebp
 222:	c3                   	ret    
 223:	90                   	nop
 224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 228:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 22d:	eb ed                	jmp    21c <stat+0x3c>
 22f:	90                   	nop

00000230 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 4d 08             	mov    0x8(%ebp),%ecx
 236:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 237:	0f be 11             	movsbl (%ecx),%edx
 23a:	8d 42 d0             	lea    -0x30(%edx),%eax
 23d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 23f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 244:	77 17                	ja     25d <atoi+0x2d>
 246:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 248:	83 c1 01             	add    $0x1,%ecx
 24b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 24e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 252:	0f be 11             	movsbl (%ecx),%edx
 255:	8d 5a d0             	lea    -0x30(%edx),%ebx
 258:	80 fb 09             	cmp    $0x9,%bl
 25b:	76 eb                	jbe    248 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 25d:	5b                   	pop    %ebx
 25e:	5d                   	pop    %ebp
 25f:	c3                   	ret    

00000260 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 260:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 261:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 263:	89 e5                	mov    %esp,%ebp
 265:	56                   	push   %esi
 266:	8b 45 08             	mov    0x8(%ebp),%eax
 269:	53                   	push   %ebx
 26a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 26d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 270:	85 db                	test   %ebx,%ebx
 272:	7e 12                	jle    286 <memmove+0x26>
 274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 278:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 27c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 27f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 282:	39 da                	cmp    %ebx,%edx
 284:	75 f2                	jne    278 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 286:	5b                   	pop    %ebx
 287:	5e                   	pop    %esi
 288:	5d                   	pop    %ebp
 289:	c3                   	ret    

0000028a <fork>:
 28a:	b8 01 00 00 00       	mov    $0x1,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    

00000292 <exit>:
 292:	b8 02 00 00 00       	mov    $0x2,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    

0000029a <wait>:
 29a:	b8 03 00 00 00       	mov    $0x3,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    

000002a2 <pipe>:
 2a2:	b8 04 00 00 00       	mov    $0x4,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    

000002aa <read>:
 2aa:	b8 05 00 00 00       	mov    $0x5,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    

000002b2 <write>:
 2b2:	b8 10 00 00 00       	mov    $0x10,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    

000002ba <close>:
 2ba:	b8 15 00 00 00       	mov    $0x15,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    

000002c2 <kill>:
 2c2:	b8 06 00 00 00       	mov    $0x6,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    

000002ca <exec>:
 2ca:	b8 07 00 00 00       	mov    $0x7,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    

000002d2 <open>:
 2d2:	b8 0f 00 00 00       	mov    $0xf,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    

000002da <mknod>:
 2da:	b8 11 00 00 00       	mov    $0x11,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    

000002e2 <unlink>:
 2e2:	b8 12 00 00 00       	mov    $0x12,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    

000002ea <fstat>:
 2ea:	b8 08 00 00 00       	mov    $0x8,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    

000002f2 <link>:
 2f2:	b8 13 00 00 00       	mov    $0x13,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    

000002fa <mkdir>:
 2fa:	b8 14 00 00 00       	mov    $0x14,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    

00000302 <chdir>:
 302:	b8 09 00 00 00       	mov    $0x9,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    

0000030a <dup>:
 30a:	b8 0a 00 00 00       	mov    $0xa,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    

00000312 <getpid>:
 312:	b8 0b 00 00 00       	mov    $0xb,%eax
 317:	cd 40                	int    $0x40
 319:	c3                   	ret    

0000031a <sbrk>:
 31a:	b8 0c 00 00 00       	mov    $0xc,%eax
 31f:	cd 40                	int    $0x40
 321:	c3                   	ret    

00000322 <sleep>:
 322:	b8 0d 00 00 00       	mov    $0xd,%eax
 327:	cd 40                	int    $0x40
 329:	c3                   	ret    

0000032a <uptime>:
 32a:	b8 0e 00 00 00       	mov    $0xe,%eax
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
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	53                   	push   %ebx
 346:	89 c6                	mov    %eax,%esi
 348:	83 ec 3c             	sub    $0x3c,%esp
 34b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 34e:	85 db                	test   %ebx,%ebx
 350:	74 7e                	je     3d0 <printint+0x90>
 352:	89 d0                	mov    %edx,%eax
 354:	c1 e8 1f             	shr    $0x1f,%eax
 357:	84 c0                	test   %al,%al
 359:	74 75                	je     3d0 <printint+0x90>
 35b:	89 d0                	mov    %edx,%eax
 35d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 364:	f7 d8                	neg    %eax
 366:	89 75 c0             	mov    %esi,-0x40(%ebp)
 369:	31 ff                	xor    %edi,%edi
 36b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 36e:	89 ce                	mov    %ecx,%esi
 370:	eb 08                	jmp    37a <printint+0x3a>
 372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 378:	89 cf                	mov    %ecx,%edi
 37a:	31 d2                	xor    %edx,%edx
 37c:	8d 4f 01             	lea    0x1(%edi),%ecx
 37f:	f7 f6                	div    %esi
 381:	0f b6 92 08 07 00 00 	movzbl 0x708(%edx),%edx
 388:	85 c0                	test   %eax,%eax
 38a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
 38d:	75 e9                	jne    378 <printint+0x38>
 38f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 392:	8b 75 c0             	mov    -0x40(%ebp),%esi
 395:	85 c0                	test   %eax,%eax
 397:	74 08                	je     3a1 <printint+0x61>
 399:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 39e:	8d 4f 02             	lea    0x2(%edi),%ecx
 3a1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 3a5:	8d 76 00             	lea    0x0(%esi),%esi
 3a8:	0f b6 07             	movzbl (%edi),%eax
 3ab:	83 ec 04             	sub    $0x4,%esp
 3ae:	83 ef 01             	sub    $0x1,%edi
 3b1:	6a 01                	push   $0x1
 3b3:	53                   	push   %ebx
 3b4:	56                   	push   %esi
 3b5:	88 45 d7             	mov    %al,-0x29(%ebp)
 3b8:	e8 f5 fe ff ff       	call   2b2 <write>
 3bd:	83 c4 10             	add    $0x10,%esp
 3c0:	39 df                	cmp    %ebx,%edi
 3c2:	75 e4                	jne    3a8 <printint+0x68>
 3c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3c7:	5b                   	pop    %ebx
 3c8:	5e                   	pop    %esi
 3c9:	5f                   	pop    %edi
 3ca:	5d                   	pop    %ebp
 3cb:	c3                   	ret    
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d0:	89 d0                	mov    %edx,%eax
 3d2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 3d9:	eb 8b                	jmp    366 <printint+0x26>
 3db:	90                   	nop
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003e0 <printf>:
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
 3e5:	53                   	push   %ebx
 3e6:	8d 45 10             	lea    0x10(%ebp),%eax
 3e9:	83 ec 2c             	sub    $0x2c,%esp
 3ec:	8b 75 0c             	mov    0xc(%ebp),%esi
 3ef:	8b 7d 08             	mov    0x8(%ebp),%edi
 3f2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 3f5:	0f b6 1e             	movzbl (%esi),%ebx
 3f8:	83 c6 01             	add    $0x1,%esi
 3fb:	84 db                	test   %bl,%bl
 3fd:	0f 84 b0 00 00 00    	je     4b3 <printf+0xd3>
 403:	31 d2                	xor    %edx,%edx
 405:	eb 39                	jmp    440 <printf+0x60>
 407:	89 f6                	mov    %esi,%esi
 409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 410:	83 f8 25             	cmp    $0x25,%eax
 413:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 416:	ba 25 00 00 00       	mov    $0x25,%edx
 41b:	74 18                	je     435 <printf+0x55>
 41d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 420:	83 ec 04             	sub    $0x4,%esp
 423:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 426:	6a 01                	push   $0x1
 428:	50                   	push   %eax
 429:	57                   	push   %edi
 42a:	e8 83 fe ff ff       	call   2b2 <write>
 42f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 432:	83 c4 10             	add    $0x10,%esp
 435:	83 c6 01             	add    $0x1,%esi
 438:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 43c:	84 db                	test   %bl,%bl
 43e:	74 73                	je     4b3 <printf+0xd3>
 440:	85 d2                	test   %edx,%edx
 442:	0f be cb             	movsbl %bl,%ecx
 445:	0f b6 c3             	movzbl %bl,%eax
 448:	74 c6                	je     410 <printf+0x30>
 44a:	83 fa 25             	cmp    $0x25,%edx
 44d:	75 e6                	jne    435 <printf+0x55>
 44f:	83 f8 64             	cmp    $0x64,%eax
 452:	0f 84 f8 00 00 00    	je     550 <printf+0x170>
 458:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 45e:	83 f9 70             	cmp    $0x70,%ecx
 461:	74 5d                	je     4c0 <printf+0xe0>
 463:	83 f8 73             	cmp    $0x73,%eax
 466:	0f 84 84 00 00 00    	je     4f0 <printf+0x110>
 46c:	83 f8 63             	cmp    $0x63,%eax
 46f:	0f 84 ea 00 00 00    	je     55f <printf+0x17f>
 475:	83 f8 25             	cmp    $0x25,%eax
 478:	0f 84 c2 00 00 00    	je     540 <printf+0x160>
 47e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 481:	83 ec 04             	sub    $0x4,%esp
 484:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 488:	6a 01                	push   $0x1
 48a:	50                   	push   %eax
 48b:	57                   	push   %edi
 48c:	e8 21 fe ff ff       	call   2b2 <write>
 491:	83 c4 0c             	add    $0xc,%esp
 494:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 497:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 49a:	6a 01                	push   $0x1
 49c:	50                   	push   %eax
 49d:	57                   	push   %edi
 49e:	83 c6 01             	add    $0x1,%esi
 4a1:	e8 0c fe ff ff       	call   2b2 <write>
 4a6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 4aa:	83 c4 10             	add    $0x10,%esp
 4ad:	31 d2                	xor    %edx,%edx
 4af:	84 db                	test   %bl,%bl
 4b1:	75 8d                	jne    440 <printf+0x60>
 4b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4b6:	5b                   	pop    %ebx
 4b7:	5e                   	pop    %esi
 4b8:	5f                   	pop    %edi
 4b9:	5d                   	pop    %ebp
 4ba:	c3                   	ret    
 4bb:	90                   	nop
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4c0:	83 ec 0c             	sub    $0xc,%esp
 4c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 4c8:	6a 00                	push   $0x0
 4ca:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 4cd:	89 f8                	mov    %edi,%eax
 4cf:	8b 13                	mov    (%ebx),%edx
 4d1:	e8 6a fe ff ff       	call   340 <printint>
 4d6:	89 d8                	mov    %ebx,%eax
 4d8:	83 c4 10             	add    $0x10,%esp
 4db:	31 d2                	xor    %edx,%edx
 4dd:	83 c0 04             	add    $0x4,%eax
 4e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 4e3:	e9 4d ff ff ff       	jmp    435 <printf+0x55>
 4e8:	90                   	nop
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 4f3:	8b 18                	mov    (%eax),%ebx
 4f5:	83 c0 04             	add    $0x4,%eax
 4f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 4fb:	b8 00 07 00 00       	mov    $0x700,%eax
 500:	85 db                	test   %ebx,%ebx
 502:	0f 44 d8             	cmove  %eax,%ebx
 505:	0f b6 03             	movzbl (%ebx),%eax
 508:	84 c0                	test   %al,%al
 50a:	74 23                	je     52f <printf+0x14f>
 50c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 510:	88 45 e3             	mov    %al,-0x1d(%ebp)
 513:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 516:	83 ec 04             	sub    $0x4,%esp
 519:	6a 01                	push   $0x1
 51b:	83 c3 01             	add    $0x1,%ebx
 51e:	50                   	push   %eax
 51f:	57                   	push   %edi
 520:	e8 8d fd ff ff       	call   2b2 <write>
 525:	0f b6 03             	movzbl (%ebx),%eax
 528:	83 c4 10             	add    $0x10,%esp
 52b:	84 c0                	test   %al,%al
 52d:	75 e1                	jne    510 <printf+0x130>
 52f:	31 d2                	xor    %edx,%edx
 531:	e9 ff fe ff ff       	jmp    435 <printf+0x55>
 536:	8d 76 00             	lea    0x0(%esi),%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 540:	83 ec 04             	sub    $0x4,%esp
 543:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 546:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 549:	6a 01                	push   $0x1
 54b:	e9 4c ff ff ff       	jmp    49c <printf+0xbc>
 550:	83 ec 0c             	sub    $0xc,%esp
 553:	b9 0a 00 00 00       	mov    $0xa,%ecx
 558:	6a 01                	push   $0x1
 55a:	e9 6b ff ff ff       	jmp    4ca <printf+0xea>
 55f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 562:	83 ec 04             	sub    $0x4,%esp
 565:	8b 03                	mov    (%ebx),%eax
 567:	6a 01                	push   $0x1
 569:	88 45 e4             	mov    %al,-0x1c(%ebp)
 56c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 56f:	50                   	push   %eax
 570:	57                   	push   %edi
 571:	e8 3c fd ff ff       	call   2b2 <write>
 576:	e9 5b ff ff ff       	jmp    4d6 <printf+0xf6>
 57b:	66 90                	xchg   %ax,%ax
 57d:	66 90                	xchg   %ax,%ax
 57f:	90                   	nop

00000580 <free>:
 580:	55                   	push   %ebp
 581:	a1 84 09 00 00       	mov    0x984,%eax
 586:	89 e5                	mov    %esp,%ebp
 588:	57                   	push   %edi
 589:	56                   	push   %esi
 58a:	53                   	push   %ebx
 58b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 58e:	8b 10                	mov    (%eax),%edx
 590:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 593:	39 c8                	cmp    %ecx,%eax
 595:	73 19                	jae    5b0 <free+0x30>
 597:	89 f6                	mov    %esi,%esi
 599:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 5a0:	39 d1                	cmp    %edx,%ecx
 5a2:	72 1c                	jb     5c0 <free+0x40>
 5a4:	39 d0                	cmp    %edx,%eax
 5a6:	73 18                	jae    5c0 <free+0x40>
 5a8:	89 d0                	mov    %edx,%eax
 5aa:	39 c8                	cmp    %ecx,%eax
 5ac:	8b 10                	mov    (%eax),%edx
 5ae:	72 f0                	jb     5a0 <free+0x20>
 5b0:	39 d0                	cmp    %edx,%eax
 5b2:	72 f4                	jb     5a8 <free+0x28>
 5b4:	39 d1                	cmp    %edx,%ecx
 5b6:	73 f0                	jae    5a8 <free+0x28>
 5b8:	90                   	nop
 5b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5c0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5c3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5c6:	39 d7                	cmp    %edx,%edi
 5c8:	74 19                	je     5e3 <free+0x63>
 5ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5cd:	8b 50 04             	mov    0x4(%eax),%edx
 5d0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5d3:	39 f1                	cmp    %esi,%ecx
 5d5:	74 23                	je     5fa <free+0x7a>
 5d7:	89 08                	mov    %ecx,(%eax)
 5d9:	a3 84 09 00 00       	mov    %eax,0x984
 5de:	5b                   	pop    %ebx
 5df:	5e                   	pop    %esi
 5e0:	5f                   	pop    %edi
 5e1:	5d                   	pop    %ebp
 5e2:	c3                   	ret    
 5e3:	03 72 04             	add    0x4(%edx),%esi
 5e6:	89 73 fc             	mov    %esi,-0x4(%ebx)
 5e9:	8b 10                	mov    (%eax),%edx
 5eb:	8b 12                	mov    (%edx),%edx
 5ed:	89 53 f8             	mov    %edx,-0x8(%ebx)
 5f0:	8b 50 04             	mov    0x4(%eax),%edx
 5f3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 5f6:	39 f1                	cmp    %esi,%ecx
 5f8:	75 dd                	jne    5d7 <free+0x57>
 5fa:	03 53 fc             	add    -0x4(%ebx),%edx
 5fd:	a3 84 09 00 00       	mov    %eax,0x984
 602:	89 50 04             	mov    %edx,0x4(%eax)
 605:	8b 53 f8             	mov    -0x8(%ebx),%edx
 608:	89 10                	mov    %edx,(%eax)
 60a:	5b                   	pop    %ebx
 60b:	5e                   	pop    %esi
 60c:	5f                   	pop    %edi
 60d:	5d                   	pop    %ebp
 60e:	c3                   	ret    
 60f:	90                   	nop

00000610 <malloc>:
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	56                   	push   %esi
 615:	53                   	push   %ebx
 616:	83 ec 0c             	sub    $0xc,%esp
 619:	8b 45 08             	mov    0x8(%ebp),%eax
 61c:	8b 15 84 09 00 00    	mov    0x984,%edx
 622:	8d 78 07             	lea    0x7(%eax),%edi
 625:	c1 ef 03             	shr    $0x3,%edi
 628:	83 c7 01             	add    $0x1,%edi
 62b:	85 d2                	test   %edx,%edx
 62d:	0f 84 a3 00 00 00    	je     6d6 <malloc+0xc6>
 633:	8b 02                	mov    (%edx),%eax
 635:	8b 48 04             	mov    0x4(%eax),%ecx
 638:	39 cf                	cmp    %ecx,%edi
 63a:	76 74                	jbe    6b0 <malloc+0xa0>
 63c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 642:	be 00 10 00 00       	mov    $0x1000,%esi
 647:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 64e:	0f 43 f7             	cmovae %edi,%esi
 651:	ba 00 80 00 00       	mov    $0x8000,%edx
 656:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 65c:	0f 46 da             	cmovbe %edx,%ebx
 65f:	eb 10                	jmp    671 <malloc+0x61>
 661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 668:	8b 02                	mov    (%edx),%eax
 66a:	8b 48 04             	mov    0x4(%eax),%ecx
 66d:	39 cf                	cmp    %ecx,%edi
 66f:	76 3f                	jbe    6b0 <malloc+0xa0>
 671:	39 05 84 09 00 00    	cmp    %eax,0x984
 677:	89 c2                	mov    %eax,%edx
 679:	75 ed                	jne    668 <malloc+0x58>
 67b:	83 ec 0c             	sub    $0xc,%esp
 67e:	53                   	push   %ebx
 67f:	e8 96 fc ff ff       	call   31a <sbrk>
 684:	83 c4 10             	add    $0x10,%esp
 687:	83 f8 ff             	cmp    $0xffffffff,%eax
 68a:	74 1c                	je     6a8 <malloc+0x98>
 68c:	89 70 04             	mov    %esi,0x4(%eax)
 68f:	83 ec 0c             	sub    $0xc,%esp
 692:	83 c0 08             	add    $0x8,%eax
 695:	50                   	push   %eax
 696:	e8 e5 fe ff ff       	call   580 <free>
 69b:	8b 15 84 09 00 00    	mov    0x984,%edx
 6a1:	83 c4 10             	add    $0x10,%esp
 6a4:	85 d2                	test   %edx,%edx
 6a6:	75 c0                	jne    668 <malloc+0x58>
 6a8:	31 c0                	xor    %eax,%eax
 6aa:	eb 1c                	jmp    6c8 <malloc+0xb8>
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6b0:	39 cf                	cmp    %ecx,%edi
 6b2:	74 1c                	je     6d0 <malloc+0xc0>
 6b4:	29 f9                	sub    %edi,%ecx
 6b6:	89 48 04             	mov    %ecx,0x4(%eax)
 6b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 6bc:	89 78 04             	mov    %edi,0x4(%eax)
 6bf:	89 15 84 09 00 00    	mov    %edx,0x984
 6c5:	83 c0 08             	add    $0x8,%eax
 6c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6cb:	5b                   	pop    %ebx
 6cc:	5e                   	pop    %esi
 6cd:	5f                   	pop    %edi
 6ce:	5d                   	pop    %ebp
 6cf:	c3                   	ret    
 6d0:	8b 08                	mov    (%eax),%ecx
 6d2:	89 0a                	mov    %ecx,(%edx)
 6d4:	eb e9                	jmp    6bf <malloc+0xaf>
 6d6:	c7 05 84 09 00 00 88 	movl   $0x988,0x984
 6dd:	09 00 00 
 6e0:	c7 05 88 09 00 00 88 	movl   $0x988,0x988
 6e7:	09 00 00 
 6ea:	b8 88 09 00 00       	mov    $0x988,%eax
 6ef:	c7 05 8c 09 00 00 00 	movl   $0x0,0x98c
 6f6:	00 00 00 
 6f9:	e9 3e ff ff ff       	jmp    63c <malloc+0x2c>
