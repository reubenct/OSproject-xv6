
_test_sch:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
argv[4]=maxp_runtime
arg[5]=maxnum_processes
*/
int seed=2;

int main ( int argc, char *argv[] ){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 e4 f0             	and    $0xfffffff0,%esp
   9:	83 ec 20             	sub    $0x20,%esp
   c:	8b 7d 0c             	mov    0xc(%ebp),%edi
	int i;

	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
   f:	8b 47 04             	mov    0x4(%edi),%eax
  12:	89 04 24             	mov    %eax,(%esp)
  15:	e8 e6 02 00 00       	call   300 <atoi>
  1a:	89 c3                	mov    %eax,%ebx
	maxp_time=atoi(argv[2]);
  1c:	8b 47 08             	mov    0x8(%edi),%eax
  1f:	89 04 24             	mov    %eax,(%esp)
  22:	e8 d9 02 00 00       	call   300 <atoi>
  27:	89 c6                	mov    %eax,%esi
	minp_runtime=atoi(argv[3]);
  29:	8b 47 0c             	mov    0xc(%edi),%eax
	maxnum_processes=atoi(argv[5]);
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random(maxp_time-minp_time)/15));	
  2c:	29 de                	sub    %ebx,%esi
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  2e:	31 db                	xor    %ebx,%ebx
	int i;

	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
  30:	89 04 24             	mov    %eax,(%esp)
  33:	e8 c8 02 00 00       	call   300 <atoi>
  38:	89 44 24 1c          	mov    %eax,0x1c(%esp)
	maxp_runtime=atoi(argv[4]);
  3c:	8b 47 10             	mov    0x10(%edi),%eax
  3f:	89 04 24             	mov    %eax,(%esp)
  42:	e8 b9 02 00 00       	call   300 <atoi>
  47:	89 44 24 18          	mov    %eax,0x18(%esp)
	maxnum_processes=atoi(argv[5]);
  4b:	8b 47 14             	mov    0x14(%edi),%eax
  4e:	89 04 24             	mov    %eax,(%esp)
  51:	e8 aa 02 00 00       	call   300 <atoi>
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random(maxp_time-minp_time)/15));	
  56:	89 34 24             	mov    %esi,(%esp)
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
  59:	89 c7                	mov    %eax,%edi
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random(maxp_time-minp_time)/15));	
  5b:	e8 a2 03 00 00       	call   402 <random>
  60:	ba 89 88 88 88       	mov    $0x88888889,%edx
  65:	69 c8 e8 03 00 00    	imul   $0x3e8,%eax,%ecx
  6b:	89 c8                	mov    %ecx,%eax
  6d:	f7 ea                	imul   %edx
  6f:	01 ca                	add    %ecx,%edx
  71:	c1 fa 03             	sar    $0x3,%edx
  74:	c1 f9 1f             	sar    $0x1f,%ecx
  77:	29 ca                	sub    %ecx,%edx
  79:	89 14 24             	mov    %edx,(%esp)
  7c:	e8 71 03 00 00       	call   3f2 <sleep>
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  81:	85 ff                	test   %edi,%edi
  83:	7e 42                	jle    c7 <main+0xc7>
  85:	8d 76 00             	lea    0x0(%esi),%esi
				
		int pid=fork();
  88:	e8 cd 02 00 00       	call   35a <fork>
		if(pid < 0){
  8d:	85 c0                	test   %eax,%eax
  8f:	90                   	nop
  90:	78 42                	js     d4 <main+0xd4>
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
  92:	74 59                	je     ed <main+0xed>
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)//waiting for the wrong child
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			sleep((int)(1000*random(maxp_time-minp_time)/15));	
  94:	89 34 24             	mov    %esi,(%esp)
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random(maxp_time-minp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  97:	83 c3 01             	add    $0x1,%ebx
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)//waiting for the wrong child
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			sleep((int)(1000*random(maxp_time-minp_time)/15));	
  9a:	e8 63 03 00 00       	call   402 <random>
  9f:	69 c8 e8 03 00 00    	imul   $0x3e8,%eax,%ecx
  a5:	b8 89 88 88 88       	mov    $0x88888889,%eax
  aa:	f7 e9                	imul   %ecx
  ac:	01 ca                	add    %ecx,%edx
  ae:	c1 fa 03             	sar    $0x3,%edx
  b1:	c1 f9 1f             	sar    $0x1f,%ecx
  b4:	29 ca                	sub    %ecx,%edx
  b6:	89 14 24             	mov    %edx,(%esp)
  b9:	e8 34 03 00 00       	call   3f2 <sleep>
			wait();	
  be:	e8 a7 02 00 00       	call   36a <wait>
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random(maxp_time-minp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  c3:	39 fb                	cmp    %edi,%ebx
  c5:	75 c1                	jne    88 <main+0x88>
	{
	wait();		
	}*/
	return 1;

}
  c7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  ca:	b8 01 00 00 00       	mov    $0x1,%eax
  cf:	5b                   	pop    %ebx
  d0:	5e                   	pop    %esi
  d1:	5f                   	pop    %edi
  d2:	5d                   	pop    %ebp
  d3:	c3                   	ret    
	sleep((int)(1000*random(maxp_time-minp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
				
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
  d4:	c7 44 24 04 16 08 00 	movl   $0x816,0x4(%esp)
  db:	00 
  dc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  e3:	e8 c8 03 00 00       	call   4b0 <printf>
    	  exit();
  e8:	e8 75 02 00 00       	call   362 <exit>
     	}
		 if(pid == 0){
			sleep((int)(1000*random(maxp_runtime-minp_runtime)/15)); //sleep for a randomly chosen runtime
  ed:	8b 44 24 18          	mov    0x18(%esp),%eax
  f1:	2b 44 24 1c          	sub    0x1c(%esp),%eax
  f5:	89 04 24             	mov    %eax,(%esp)
  f8:	e8 05 03 00 00       	call   402 <random>
  fd:	b9 0f 00 00 00       	mov    $0xf,%ecx
 102:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
 108:	99                   	cltd   
 109:	f7 f9                	idiv   %ecx
 10b:	89 04 24             	mov    %eax,(%esp)
 10e:	e8 df 02 00 00       	call   3f2 <sleep>
			//exec("sleep_sec", list);
			
			//printf(1, "init: exec sleep_sec failed\n");
			printf(1,"Child %d\n",getpid());
 113:	e8 ca 02 00 00       	call   3e2 <getpid>
 118:	c7 44 24 04 29 08 00 	movl   $0x829,0x4(%esp)
 11f:	00 
 120:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 127:	89 44 24 08          	mov    %eax,0x8(%esp)
 12b:	e8 80 03 00 00       	call   4b0 <printf>
		   exit();
 130:	e8 2d 02 00 00       	call   362 <exit>
 135:	66 90                	xchg   %ax,%ax
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 45 08             	mov    0x8(%ebp),%eax
 146:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 149:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 14a:	89 c2                	mov    %eax,%edx
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 150:	83 c1 01             	add    $0x1,%ecx
 153:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 157:	83 c2 01             	add    $0x1,%edx
 15a:	84 db                	test   %bl,%bl
 15c:	88 5a ff             	mov    %bl,-0x1(%edx)
 15f:	75 ef                	jne    150 <strcpy+0x10>
    ;
  return os;
}
 161:	5b                   	pop    %ebx
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    
 164:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 16a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 55 08             	mov    0x8(%ebp),%edx
 176:	53                   	push   %ebx
 177:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 17a:	0f b6 02             	movzbl (%edx),%eax
 17d:	84 c0                	test   %al,%al
 17f:	74 2d                	je     1ae <strcmp+0x3e>
 181:	0f b6 19             	movzbl (%ecx),%ebx
 184:	38 d8                	cmp    %bl,%al
 186:	74 0e                	je     196 <strcmp+0x26>
 188:	eb 2b                	jmp    1b5 <strcmp+0x45>
 18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 190:	38 c8                	cmp    %cl,%al
 192:	75 15                	jne    1a9 <strcmp+0x39>
    p++, q++;
 194:	89 d9                	mov    %ebx,%ecx
 196:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 199:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 19c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 19f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 1a3:	84 c0                	test   %al,%al
 1a5:	75 e9                	jne    190 <strcmp+0x20>
 1a7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 1a9:	29 c8                	sub    %ecx,%eax
}
 1ab:	5b                   	pop    %ebx
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1b1:	31 c0                	xor    %eax,%eax
 1b3:	eb f4                	jmp    1a9 <strcmp+0x39>
 1b5:	0f b6 cb             	movzbl %bl,%ecx
 1b8:	eb ef                	jmp    1a9 <strcmp+0x39>
 1ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001c0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1c6:	80 39 00             	cmpb   $0x0,(%ecx)
 1c9:	74 12                	je     1dd <strlen+0x1d>
 1cb:	31 d2                	xor    %edx,%edx
 1cd:	8d 76 00             	lea    0x0(%esi),%esi
 1d0:	83 c2 01             	add    $0x1,%edx
 1d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1d7:	89 d0                	mov    %edx,%eax
 1d9:	75 f5                	jne    1d0 <strlen+0x10>
    ;
  return n;
}
 1db:	5d                   	pop    %ebp
 1dc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 1dd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 1df:	5d                   	pop    %ebp
 1e0:	c3                   	ret    
 1e1:	eb 0d                	jmp    1f0 <memset>
 1e3:	90                   	nop
 1e4:	90                   	nop
 1e5:	90                   	nop
 1e6:	90                   	nop
 1e7:	90                   	nop
 1e8:	90                   	nop
 1e9:	90                   	nop
 1ea:	90                   	nop
 1eb:	90                   	nop
 1ec:	90                   	nop
 1ed:	90                   	nop
 1ee:	90                   	nop
 1ef:	90                   	nop

000001f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 55 08             	mov    0x8(%ebp),%edx
 1f6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 1fd:	89 d7                	mov    %edx,%edi
 1ff:	fc                   	cld    
 200:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 202:	89 d0                	mov    %edx,%eax
 204:	5f                   	pop    %edi
 205:	5d                   	pop    %ebp
 206:	c3                   	ret    
 207:	89 f6                	mov    %esi,%esi
 209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000210 <strchr>:

char*
strchr(const char *s, char c)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 45 08             	mov    0x8(%ebp),%eax
 216:	53                   	push   %ebx
 217:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 21a:	0f b6 18             	movzbl (%eax),%ebx
 21d:	84 db                	test   %bl,%bl
 21f:	74 1d                	je     23e <strchr+0x2e>
    if(*s == c)
 221:	38 d3                	cmp    %dl,%bl
 223:	89 d1                	mov    %edx,%ecx
 225:	75 0d                	jne    234 <strchr+0x24>
 227:	eb 17                	jmp    240 <strchr+0x30>
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 230:	38 ca                	cmp    %cl,%dl
 232:	74 0c                	je     240 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 234:	83 c0 01             	add    $0x1,%eax
 237:	0f b6 10             	movzbl (%eax),%edx
 23a:	84 d2                	test   %dl,%dl
 23c:	75 f2                	jne    230 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 23e:	31 c0                	xor    %eax,%eax
}
 240:	5b                   	pop    %ebx
 241:	5d                   	pop    %ebp
 242:	c3                   	ret    
 243:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000250 <gets>:

char*
gets(char *buf, int max)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 255:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 257:	53                   	push   %ebx
 258:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 25b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 25e:	eb 31                	jmp    291 <gets+0x41>
    cc = read(0, &c, 1);
 260:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 267:	00 
 268:	89 7c 24 04          	mov    %edi,0x4(%esp)
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 02 01 00 00       	call   37a <read>
    if(cc < 1)
 278:	85 c0                	test   %eax,%eax
 27a:	7e 1d                	jle    299 <gets+0x49>
      break;
    buf[i++] = c;
 27c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 280:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 282:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 285:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 287:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 28b:	74 0c                	je     299 <gets+0x49>
 28d:	3c 0a                	cmp    $0xa,%al
 28f:	74 08                	je     299 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 291:	8d 5e 01             	lea    0x1(%esi),%ebx
 294:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 297:	7c c7                	jl     260 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 299:	8b 45 08             	mov    0x8(%ebp),%eax
 29c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2a0:	83 c4 2c             	add    $0x2c,%esp
 2a3:	5b                   	pop    %ebx
 2a4:	5e                   	pop    %esi
 2a5:	5f                   	pop    %edi
 2a6:	5d                   	pop    %ebp
 2a7:	c3                   	ret    
 2a8:	90                   	nop
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002b0 <stat>:

int
stat(char *n, struct stat *st)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	56                   	push   %esi
 2b4:	53                   	push   %ebx
 2b5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b8:	8b 45 08             	mov    0x8(%ebp),%eax
 2bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2c2:	00 
 2c3:	89 04 24             	mov    %eax,(%esp)
 2c6:	e8 d7 00 00 00       	call   3a2 <open>
  if(fd < 0)
 2cb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2cd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 2cf:	78 27                	js     2f8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 2d1:	8b 45 0c             	mov    0xc(%ebp),%eax
 2d4:	89 1c 24             	mov    %ebx,(%esp)
 2d7:	89 44 24 04          	mov    %eax,0x4(%esp)
 2db:	e8 da 00 00 00       	call   3ba <fstat>
  close(fd);
 2e0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 2e3:	89 c6                	mov    %eax,%esi
  close(fd);
 2e5:	e8 a0 00 00 00       	call   38a <close>
  return r;
 2ea:	89 f0                	mov    %esi,%eax
}
 2ec:	83 c4 10             	add    $0x10,%esp
 2ef:	5b                   	pop    %ebx
 2f0:	5e                   	pop    %esi
 2f1:	5d                   	pop    %ebp
 2f2:	c3                   	ret    
 2f3:	90                   	nop
 2f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 2f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2fd:	eb ed                	jmp    2ec <stat+0x3c>
 2ff:	90                   	nop

00000300 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 4d 08             	mov    0x8(%ebp),%ecx
 306:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 307:	0f be 11             	movsbl (%ecx),%edx
 30a:	8d 42 d0             	lea    -0x30(%edx),%eax
 30d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 30f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 314:	77 17                	ja     32d <atoi+0x2d>
 316:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 318:	83 c1 01             	add    $0x1,%ecx
 31b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 31e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 322:	0f be 11             	movsbl (%ecx),%edx
 325:	8d 5a d0             	lea    -0x30(%edx),%ebx
 328:	80 fb 09             	cmp    $0x9,%bl
 32b:	76 eb                	jbe    318 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 32d:	5b                   	pop    %ebx
 32e:	5d                   	pop    %ebp
 32f:	c3                   	ret    

00000330 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 330:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 331:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 333:	89 e5                	mov    %esp,%ebp
 335:	56                   	push   %esi
 336:	8b 45 08             	mov    0x8(%ebp),%eax
 339:	53                   	push   %ebx
 33a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 33d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 340:	85 db                	test   %ebx,%ebx
 342:	7e 12                	jle    356 <memmove+0x26>
 344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 348:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 34c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 34f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 352:	39 da                	cmp    %ebx,%edx
 354:	75 f2                	jne    348 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 356:	5b                   	pop    %ebx
 357:	5e                   	pop    %esi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    

0000035a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 35a:	b8 01 00 00 00       	mov    $0x1,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <exit>:
SYSCALL(exit)
 362:	b8 02 00 00 00       	mov    $0x2,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <wait>:
SYSCALL(wait)
 36a:	b8 03 00 00 00       	mov    $0x3,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <pipe>:
SYSCALL(pipe)
 372:	b8 04 00 00 00       	mov    $0x4,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <read>:
SYSCALL(read)
 37a:	b8 05 00 00 00       	mov    $0x5,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <write>:
SYSCALL(write)
 382:	b8 10 00 00 00       	mov    $0x10,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <close>:
SYSCALL(close)
 38a:	b8 15 00 00 00       	mov    $0x15,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <kill>:
SYSCALL(kill)
 392:	b8 06 00 00 00       	mov    $0x6,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <exec>:
SYSCALL(exec)
 39a:	b8 07 00 00 00       	mov    $0x7,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <open>:
SYSCALL(open)
 3a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <mknod>:
SYSCALL(mknod)
 3aa:	b8 11 00 00 00       	mov    $0x11,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <unlink>:
SYSCALL(unlink)
 3b2:	b8 12 00 00 00       	mov    $0x12,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <fstat>:
SYSCALL(fstat)
 3ba:	b8 08 00 00 00       	mov    $0x8,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <link>:
SYSCALL(link)
 3c2:	b8 13 00 00 00       	mov    $0x13,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <mkdir>:
SYSCALL(mkdir)
 3ca:	b8 14 00 00 00       	mov    $0x14,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <chdir>:
SYSCALL(chdir)
 3d2:	b8 09 00 00 00       	mov    $0x9,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <dup>:
SYSCALL(dup)
 3da:	b8 0a 00 00 00       	mov    $0xa,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <getpid>:
SYSCALL(getpid)
 3e2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <sbrk>:
SYSCALL(sbrk)
 3ea:	b8 0c 00 00 00       	mov    $0xc,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <sleep>:
SYSCALL(sleep)
 3f2:	b8 0d 00 00 00       	mov    $0xd,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <uptime>:
SYSCALL(uptime)
 3fa:	b8 0e 00 00 00       	mov    $0xe,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <random>:
SYSCALL(random)
 402:	b8 16 00 00 00       	mov    $0x16,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    
 40a:	66 90                	xchg   %ax,%ax
 40c:	66 90                	xchg   %ax,%ax
 40e:	66 90                	xchg   %ax,%ax

00000410 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	56                   	push   %esi
 415:	89 c6                	mov    %eax,%esi
 417:	53                   	push   %ebx
 418:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 41b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 41e:	85 db                	test   %ebx,%ebx
 420:	74 09                	je     42b <printint+0x1b>
 422:	89 d0                	mov    %edx,%eax
 424:	c1 e8 1f             	shr    $0x1f,%eax
 427:	84 c0                	test   %al,%al
 429:	75 75                	jne    4a0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 42b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 42d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 434:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 437:	31 ff                	xor    %edi,%edi
 439:	89 ce                	mov    %ecx,%esi
 43b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 43e:	eb 02                	jmp    442 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 440:	89 cf                	mov    %ecx,%edi
 442:	31 d2                	xor    %edx,%edx
 444:	f7 f6                	div    %esi
 446:	8d 4f 01             	lea    0x1(%edi),%ecx
 449:	0f b6 92 3a 08 00 00 	movzbl 0x83a(%edx),%edx
  }while((x /= base) != 0);
 450:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 452:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 455:	75 e9                	jne    440 <printint+0x30>
  if(neg)
 457:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 45a:	89 c8                	mov    %ecx,%eax
 45c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 45f:	85 d2                	test   %edx,%edx
 461:	74 08                	je     46b <printint+0x5b>
    buf[i++] = '-';
 463:	8d 4f 02             	lea    0x2(%edi),%ecx
 466:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 46b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 46e:	66 90                	xchg   %ax,%ax
 470:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 475:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 478:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 47f:	00 
 480:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 484:	89 34 24             	mov    %esi,(%esp)
 487:	88 45 d7             	mov    %al,-0x29(%ebp)
 48a:	e8 f3 fe ff ff       	call   382 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 48f:	83 ff ff             	cmp    $0xffffffff,%edi
 492:	75 dc                	jne    470 <printint+0x60>
    putc(fd, buf[i]);
}
 494:	83 c4 4c             	add    $0x4c,%esp
 497:	5b                   	pop    %ebx
 498:	5e                   	pop    %esi
 499:	5f                   	pop    %edi
 49a:	5d                   	pop    %ebp
 49b:	c3                   	ret    
 49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4a0:	89 d0                	mov    %edx,%eax
 4a2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 4a4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 4ab:	eb 87                	jmp    434 <printint+0x24>
 4ad:	8d 76 00             	lea    0x0(%esi),%esi

000004b0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 4b4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4b6:	56                   	push   %esi
 4b7:	53                   	push   %ebx
 4b8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4bb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4be:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4c1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4c4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 4c7:	0f b6 13             	movzbl (%ebx),%edx
 4ca:	83 c3 01             	add    $0x1,%ebx
 4cd:	84 d2                	test   %dl,%dl
 4cf:	75 39                	jne    50a <printf+0x5a>
 4d1:	e9 c2 00 00 00       	jmp    598 <printf+0xe8>
 4d6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 4d8:	83 fa 25             	cmp    $0x25,%edx
 4db:	0f 84 bf 00 00 00    	je     5a0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4e1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 4e4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4eb:	00 
 4ec:	89 44 24 04          	mov    %eax,0x4(%esp)
 4f0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 4f3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4f6:	e8 87 fe ff ff       	call   382 <write>
 4fb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4fe:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 502:	84 d2                	test   %dl,%dl
 504:	0f 84 8e 00 00 00    	je     598 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 50a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 50c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 50f:	74 c7                	je     4d8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 511:	83 ff 25             	cmp    $0x25,%edi
 514:	75 e5                	jne    4fb <printf+0x4b>
      if(c == 'd'){
 516:	83 fa 64             	cmp    $0x64,%edx
 519:	0f 84 31 01 00 00    	je     650 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 51f:	25 f7 00 00 00       	and    $0xf7,%eax
 524:	83 f8 70             	cmp    $0x70,%eax
 527:	0f 84 83 00 00 00    	je     5b0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 52d:	83 fa 73             	cmp    $0x73,%edx
 530:	0f 84 a2 00 00 00    	je     5d8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 536:	83 fa 63             	cmp    $0x63,%edx
 539:	0f 84 35 01 00 00    	je     674 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 53f:	83 fa 25             	cmp    $0x25,%edx
 542:	0f 84 e0 00 00 00    	je     628 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 548:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 54b:	83 c3 01             	add    $0x1,%ebx
 54e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 555:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 556:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 558:	89 44 24 04          	mov    %eax,0x4(%esp)
 55c:	89 34 24             	mov    %esi,(%esp)
 55f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 562:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 566:	e8 17 fe ff ff       	call   382 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 56b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 56e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 571:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 578:	00 
 579:	89 44 24 04          	mov    %eax,0x4(%esp)
 57d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 580:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 583:	e8 fa fd ff ff       	call   382 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 588:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 58c:	84 d2                	test   %dl,%dl
 58e:	0f 85 76 ff ff ff    	jne    50a <printf+0x5a>
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 598:	83 c4 3c             	add    $0x3c,%esp
 59b:	5b                   	pop    %ebx
 59c:	5e                   	pop    %esi
 59d:	5f                   	pop    %edi
 59e:	5d                   	pop    %ebp
 59f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5a0:	bf 25 00 00 00       	mov    $0x25,%edi
 5a5:	e9 51 ff ff ff       	jmp    4fb <printf+0x4b>
 5aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5b0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5b3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5b8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5c1:	8b 10                	mov    (%eax),%edx
 5c3:	89 f0                	mov    %esi,%eax
 5c5:	e8 46 fe ff ff       	call   410 <printint>
        ap++;
 5ca:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5ce:	e9 28 ff ff ff       	jmp    4fb <printf+0x4b>
 5d3:	90                   	nop
 5d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 5d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 5db:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 5df:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 5e1:	b8 33 08 00 00       	mov    $0x833,%eax
 5e6:	85 ff                	test   %edi,%edi
 5e8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 5eb:	0f b6 07             	movzbl (%edi),%eax
 5ee:	84 c0                	test   %al,%al
 5f0:	74 2a                	je     61c <printf+0x16c>
 5f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5f8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5fb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 5fe:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 601:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 608:	00 
 609:	89 44 24 04          	mov    %eax,0x4(%esp)
 60d:	89 34 24             	mov    %esi,(%esp)
 610:	e8 6d fd ff ff       	call   382 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 615:	0f b6 07             	movzbl (%edi),%eax
 618:	84 c0                	test   %al,%al
 61a:	75 dc                	jne    5f8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 61c:	31 ff                	xor    %edi,%edi
 61e:	e9 d8 fe ff ff       	jmp    4fb <printf+0x4b>
 623:	90                   	nop
 624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 628:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 62b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 62d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 634:	00 
 635:	89 44 24 04          	mov    %eax,0x4(%esp)
 639:	89 34 24             	mov    %esi,(%esp)
 63c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 640:	e8 3d fd ff ff       	call   382 <write>
 645:	e9 b1 fe ff ff       	jmp    4fb <printf+0x4b>
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 650:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 653:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 658:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 65b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 662:	8b 10                	mov    (%eax),%edx
 664:	89 f0                	mov    %esi,%eax
 666:	e8 a5 fd ff ff       	call   410 <printint>
        ap++;
 66b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 66f:	e9 87 fe ff ff       	jmp    4fb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 674:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 677:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 679:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 67b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 682:	00 
 683:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 686:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 689:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 68c:	89 44 24 04          	mov    %eax,0x4(%esp)
 690:	e8 ed fc ff ff       	call   382 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 695:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 699:	e9 5d fe ff ff       	jmp    4fb <printf+0x4b>
 69e:	66 90                	xchg   %ax,%ax

000006a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6a1:	a1 c8 0a 00 00       	mov    0xac8,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 6a6:	89 e5                	mov    %esp,%ebp
 6a8:	57                   	push   %edi
 6a9:	56                   	push   %esi
 6aa:	53                   	push   %ebx
 6ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ae:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6b0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6b3:	39 d0                	cmp    %edx,%eax
 6b5:	72 11                	jb     6c8 <free+0x28>
 6b7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6b8:	39 c8                	cmp    %ecx,%eax
 6ba:	72 04                	jb     6c0 <free+0x20>
 6bc:	39 ca                	cmp    %ecx,%edx
 6be:	72 10                	jb     6d0 <free+0x30>
 6c0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6c4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c6:	73 f0                	jae    6b8 <free+0x18>
 6c8:	39 ca                	cmp    %ecx,%edx
 6ca:	72 04                	jb     6d0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6cc:	39 c8                	cmp    %ecx,%eax
 6ce:	72 f0                	jb     6c0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6d3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 6d6:	39 cf                	cmp    %ecx,%edi
 6d8:	74 1e                	je     6f8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 6da:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6dd:	8b 48 04             	mov    0x4(%eax),%ecx
 6e0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 6e3:	39 f2                	cmp    %esi,%edx
 6e5:	74 28                	je     70f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 6e7:	89 10                	mov    %edx,(%eax)
  freep = p;
 6e9:	a3 c8 0a 00 00       	mov    %eax,0xac8
}
 6ee:	5b                   	pop    %ebx
 6ef:	5e                   	pop    %esi
 6f0:	5f                   	pop    %edi
 6f1:	5d                   	pop    %ebp
 6f2:	c3                   	ret    
 6f3:	90                   	nop
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 6f8:	03 71 04             	add    0x4(%ecx),%esi
 6fb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6fe:	8b 08                	mov    (%eax),%ecx
 700:	8b 09                	mov    (%ecx),%ecx
 702:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 705:	8b 48 04             	mov    0x4(%eax),%ecx
 708:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 70b:	39 f2                	cmp    %esi,%edx
 70d:	75 d8                	jne    6e7 <free+0x47>
    p->s.size += bp->s.size;
 70f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 712:	a3 c8 0a 00 00       	mov    %eax,0xac8
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 717:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 71a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 71d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 71f:	5b                   	pop    %ebx
 720:	5e                   	pop    %esi
 721:	5f                   	pop    %edi
 722:	5d                   	pop    %ebp
 723:	c3                   	ret    
 724:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 72a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000730 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 739:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 73c:	8b 1d c8 0a 00 00    	mov    0xac8,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 742:	8d 48 07             	lea    0x7(%eax),%ecx
 745:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 748:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 74a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 74d:	0f 84 9b 00 00 00    	je     7ee <malloc+0xbe>
 753:	8b 13                	mov    (%ebx),%edx
 755:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 758:	39 fe                	cmp    %edi,%esi
 75a:	76 64                	jbe    7c0 <malloc+0x90>
 75c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 763:	bb 00 80 00 00       	mov    $0x8000,%ebx
 768:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 76b:	eb 0e                	jmp    77b <malloc+0x4b>
 76d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 770:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 772:	8b 78 04             	mov    0x4(%eax),%edi
 775:	39 fe                	cmp    %edi,%esi
 777:	76 4f                	jbe    7c8 <malloc+0x98>
 779:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 77b:	3b 15 c8 0a 00 00    	cmp    0xac8,%edx
 781:	75 ed                	jne    770 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 783:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 786:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 78c:	bf 00 10 00 00       	mov    $0x1000,%edi
 791:	0f 43 fe             	cmovae %esi,%edi
 794:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 797:	89 04 24             	mov    %eax,(%esp)
 79a:	e8 4b fc ff ff       	call   3ea <sbrk>
  if(p == (char*)-1)
 79f:	83 f8 ff             	cmp    $0xffffffff,%eax
 7a2:	74 18                	je     7bc <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 7a4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 7a7:	83 c0 08             	add    $0x8,%eax
 7aa:	89 04 24             	mov    %eax,(%esp)
 7ad:	e8 ee fe ff ff       	call   6a0 <free>
  return freep;
 7b2:	8b 15 c8 0a 00 00    	mov    0xac8,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 7b8:	85 d2                	test   %edx,%edx
 7ba:	75 b4                	jne    770 <malloc+0x40>
        return 0;
 7bc:	31 c0                	xor    %eax,%eax
 7be:	eb 20                	jmp    7e0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7c0:	89 d0                	mov    %edx,%eax
 7c2:	89 da                	mov    %ebx,%edx
 7c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 7c8:	39 fe                	cmp    %edi,%esi
 7ca:	74 1c                	je     7e8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 7cc:	29 f7                	sub    %esi,%edi
 7ce:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 7d1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 7d4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 7d7:	89 15 c8 0a 00 00    	mov    %edx,0xac8
      return (void*)(p + 1);
 7dd:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 7e0:	83 c4 1c             	add    $0x1c,%esp
 7e3:	5b                   	pop    %ebx
 7e4:	5e                   	pop    %esi
 7e5:	5f                   	pop    %edi
 7e6:	5d                   	pop    %ebp
 7e7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 7e8:	8b 08                	mov    (%eax),%ecx
 7ea:	89 0a                	mov    %ecx,(%edx)
 7ec:	eb e9                	jmp    7d7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7ee:	c7 05 c8 0a 00 00 cc 	movl   $0xacc,0xac8
 7f5:	0a 00 00 
    base.s.size = 0;
 7f8:	ba cc 0a 00 00       	mov    $0xacc,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7fd:	c7 05 cc 0a 00 00 cc 	movl   $0xacc,0xacc
 804:	0a 00 00 
    base.s.size = 0;
 807:	c7 05 d0 0a 00 00 00 	movl   $0x0,0xad0
 80e:	00 00 00 
 811:	e9 46 ff ff ff       	jmp    75c <malloc+0x2c>
