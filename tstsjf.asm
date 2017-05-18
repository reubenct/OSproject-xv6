
_tstsjf:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
argv[3]=minp_runtime
argv[4]=maxp_runtime
arg[5]=maxnum_processes
*/

int main ( int argc, char *argv[] ){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 e4 f0             	and    $0xfffffff0,%esp
   9:	83 ec 20             	sub    $0x20,%esp
   c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	int i;
	
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
   f:	8b 43 04             	mov    0x4(%ebx),%eax
  12:	89 04 24             	mov    %eax,(%esp)
  15:	e8 86 03 00 00       	call   3a0 <atoi>
  1a:	89 c6                	mov    %eax,%esi
  1c:	89 44 24 18          	mov    %eax,0x18(%esp)
	maxp_time=atoi(argv[2]);
  20:	8b 43 08             	mov    0x8(%ebx),%eax
  23:	89 04 24             	mov    %eax,(%esp)
  26:	e8 75 03 00 00       	call   3a0 <atoi>
  2b:	89 c7                	mov    %eax,%edi
	minp_runtime=atoi(argv[3]);
  2d:	8b 43 0c             	mov    0xc(%ebx),%eax
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
  30:	29 f7                	sub    %esi,%edi
	int i;
	
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
  32:	89 04 24             	mov    %eax,(%esp)
  35:	e8 66 03 00 00       	call   3a0 <atoi>
  3a:	89 44 24 10          	mov    %eax,0x10(%esp)
	maxp_runtime=atoi(argv[4]);
  3e:	8b 43 10             	mov    0x10(%ebx),%eax
  41:	89 04 24             	mov    %eax,(%esp)
  44:	e8 57 03 00 00       	call   3a0 <atoi>
  49:	89 44 24 0c          	mov    %eax,0xc(%esp)
	maxnum_processes=atoi(argv[5]);
  4d:	8b 43 14             	mov    0x14(%ebx),%eax
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  50:	31 db                	xor    %ebx,%ebx
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
  52:	89 04 24             	mov    %eax,(%esp)
  55:	e8 46 03 00 00       	call   3a0 <atoi>
  5a:	89 44 24 1c          	mov    %eax,0x1c(%esp)
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
  5e:	e8 37 04 00 00       	call   49a <uptime>
	int inittime=(minp_time+random(maxp_time-minp_time));
  63:	89 3c 24             	mov    %edi,(%esp)
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
  66:	89 44 24 14          	mov    %eax,0x14(%esp)
	int inittime=(minp_time+random(maxp_time-minp_time));
  6a:	e8 33 04 00 00       	call   4a2 <random>
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
  6f:	ba 89 88 88 88       	mov    $0x88888889,%edx
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
  74:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
  77:	69 c9 e8 03 00 00    	imul   $0x3e8,%ecx,%ecx
  7d:	89 c8                	mov    %ecx,%eax
  7f:	f7 ea                	imul   %edx
  81:	01 ca                	add    %ecx,%edx
  83:	c1 fa 03             	sar    $0x3,%edx
  86:	c1 f9 1f             	sar    $0x1f,%ecx
  89:	29 ca                	sub    %ecx,%edx
  8b:	89 14 24             	mov    %edx,(%esp)
  8e:	e8 ff 03 00 00       	call   492 <sleep>
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  93:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  97:	85 c0                	test   %eax,%eax
  99:	7e 7d                	jle    118 <main+0x118>
  9b:	90                   	nop
  9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				
		int pid=fork();
  a0:	e8 55 03 00 00       	call   3fa <fork>
		if(pid < 0){
  a5:	85 c0                	test   %eax,%eax
  a7:	0f 88 bb 00 00 00    	js     168 <main+0x168>
  ad:	8d 76 00             	lea    0x0(%esi),%esi
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
  b0:	0f 84 cb 00 00 00    	je     181 <main+0x181>
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			signalinfo(getpid(),10);
  b6:	e8 c7 03 00 00       	call   482 <getpid>
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  bb:	83 c3 01             	add    $0x1,%ebx
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			signalinfo(getpid(),10);
  be:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
  c5:	00 
  c6:	89 04 24             	mov    %eax,(%esp)
  c9:	e8 e4 03 00 00       	call   4b2 <signalinfo>
			int sleeptime=(minp_time+random(maxp_time-minp_time));	
  ce:	89 3c 24             	mov    %edi,(%esp)
  d1:	e8 cc 03 00 00       	call   4a2 <random>
  d6:	8b 4c 24 18          	mov    0x18(%esp),%ecx
			//printf(1,"parent sleeptime=%d\n",sleeptime);						//PARENT SLEEPTIME (time btw process generation)
			printf(1,"parent!");
  da:	c7 44 24 04 f6 08 00 	movl   $0x8f6,0x4(%esp)
  e1:	00 
  e2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			signalinfo(getpid(),10);
			int sleeptime=(minp_time+random(maxp_time-minp_time));	
  e9:	8d 34 08             	lea    (%eax,%ecx,1),%esi
			//printf(1,"parent sleeptime=%d\n",sleeptime);						//PARENT SLEEPTIME (time btw process generation)
			printf(1,"parent!");
			sleep((int)(1000*sleeptime/15));	
  ec:	69 f6 e8 03 00 00    	imul   $0x3e8,%esi,%esi
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			signalinfo(getpid(),10);
			int sleeptime=(minp_time+random(maxp_time-minp_time));	
			//printf(1,"parent sleeptime=%d\n",sleeptime);						//PARENT SLEEPTIME (time btw process generation)
			printf(1,"parent!");
  f2:	e8 79 04 00 00       	call   570 <printf>
			sleep((int)(1000*sleeptime/15));	
  f7:	b8 89 88 88 88       	mov    $0x88888889,%eax
  fc:	f7 ee                	imul   %esi
  fe:	01 f2                	add    %esi,%edx
 100:	c1 fa 03             	sar    $0x3,%edx
 103:	c1 fe 1f             	sar    $0x1f,%esi
 106:	29 f2                	sub    %esi,%edx
 108:	89 14 24             	mov    %edx,(%esp)
 10b:	e8 82 03 00 00       	call   492 <sleep>
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
 110:	3b 5c 24 1c          	cmp    0x1c(%esp),%ebx
 114:	75 8a                	jne    a0 <main+0xa0>
 116:	66 90                	xchg   %ax,%ax
	}
/*	for(i=0;i<maxnum_processes;i++)					//instead of wait in the parent, let the parent sleep for required time and use this loop
	{
	wait();		
	}*/
	while(wait()>0);	//busy wait as long as there remain children
 118:	e8 ed 02 00 00       	call   40a <wait>
 11d:	85 c0                	test   %eax,%eax
 11f:	90                   	nop
 120:	7f f6                	jg     118 <main+0x118>
	int final_ticks=uptime();
 122:	e8 73 03 00 00       	call   49a <uptime>
	printf(1,"Total execution time in seconds = %d\n",15*(final_ticks-init_ticks)/1000);
 127:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
 12c:	c7 44 24 04 00 09 00 	movl   $0x900,0x4(%esp)
 133:	00 
 134:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13b:	2b 44 24 14          	sub    0x14(%esp),%eax
 13f:	89 c1                	mov    %eax,%ecx
 141:	c1 e1 04             	shl    $0x4,%ecx
 144:	29 c1                	sub    %eax,%ecx
 146:	89 c8                	mov    %ecx,%eax
 148:	f7 ea                	imul   %edx
 14a:	c1 f9 1f             	sar    $0x1f,%ecx
 14d:	c1 fa 06             	sar    $0x6,%edx
 150:	29 ca                	sub    %ecx,%edx
 152:	89 54 24 08          	mov    %edx,0x8(%esp)
 156:	e8 15 04 00 00       	call   570 <printf>
	return 1;

}
 15b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 15e:	b8 01 00 00 00       	mov    $0x1,%eax
 163:	5b                   	pop    %ebx
 164:	5e                   	pop    %esi
 165:	5f                   	pop    %edi
 166:	5d                   	pop    %ebp
 167:	c3                   	ret    
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
				
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
 168:	c7 44 24 04 d8 08 00 	movl   $0x8d8,0x4(%esp)
 16f:	00 
 170:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 177:	e8 f4 03 00 00       	call   570 <printf>
    	  exit();
 17c:	e8 81 02 00 00       	call   402 <exit>
     	}
		 if(pid == 0){
			int runtime=(minp_runtime+random(maxp_runtime-minp_runtime));
 181:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 185:	8b 44 24 0c          	mov    0xc(%esp),%eax
 189:	29 d8                	sub    %ebx,%eax
 18b:	89 04 24             	mov    %eax,(%esp)
 18e:	e8 0f 03 00 00       	call   4a2 <random>
 193:	01 c3                	add    %eax,%ebx
			//printf(1,"runtime=%d\n",runtime);									//CHILD RUNTIME PRINT
			signalinfo(getpid(),runtime);
 195:	e8 e8 02 00 00       	call   482 <getpid>
 19a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 19e:	89 04 24             	mov    %eax,(%esp)
 1a1:	e8 0c 03 00 00       	call   4b2 <signalinfo>
			sleep((int)(1000*runtime/15)); //sleep for a randomly chosen runtime
 1a6:	69 c3 e8 03 00 00    	imul   $0x3e8,%ebx,%eax
 1ac:	b9 0f 00 00 00       	mov    $0xf,%ecx
 1b1:	99                   	cltd   
 1b2:	f7 f9                	idiv   %ecx
 1b4:	89 04 24             	mov    %eax,(%esp)
 1b7:	e8 d6 02 00 00       	call   492 <sleep>
			//exec("sleep_sec", list);
				//printf(1, "init: exec sleep_sec failed\n");
			printf(1,"Child %d \n",getpid());					
 1bc:	e8 c1 02 00 00       	call   482 <getpid>
 1c1:	c7 44 24 04 eb 08 00 	movl   $0x8eb,0x4(%esp)
 1c8:	00 
 1c9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1d0:	89 44 24 08          	mov    %eax,0x8(%esp)
 1d4:	e8 97 03 00 00       	call   570 <printf>
		   exit();
 1d9:	e8 24 02 00 00       	call   402 <exit>
 1de:	66 90                	xchg   %ax,%ax

000001e0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 45 08             	mov    0x8(%ebp),%eax
 1e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1e9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ea:	89 c2                	mov    %eax,%edx
 1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1f0:	83 c1 01             	add    $0x1,%ecx
 1f3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1f7:	83 c2 01             	add    $0x1,%edx
 1fa:	84 db                	test   %bl,%bl
 1fc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1ff:	75 ef                	jne    1f0 <strcpy+0x10>
    ;
  return os;
}
 201:	5b                   	pop    %ebx
 202:	5d                   	pop    %ebp
 203:	c3                   	ret    
 204:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 20a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000210 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 55 08             	mov    0x8(%ebp),%edx
 216:	53                   	push   %ebx
 217:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 21a:	0f b6 02             	movzbl (%edx),%eax
 21d:	84 c0                	test   %al,%al
 21f:	74 2d                	je     24e <strcmp+0x3e>
 221:	0f b6 19             	movzbl (%ecx),%ebx
 224:	38 d8                	cmp    %bl,%al
 226:	74 0e                	je     236 <strcmp+0x26>
 228:	eb 2b                	jmp    255 <strcmp+0x45>
 22a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 230:	38 c8                	cmp    %cl,%al
 232:	75 15                	jne    249 <strcmp+0x39>
    p++, q++;
 234:	89 d9                	mov    %ebx,%ecx
 236:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 239:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 23c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 23f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 243:	84 c0                	test   %al,%al
 245:	75 e9                	jne    230 <strcmp+0x20>
 247:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 249:	29 c8                	sub    %ecx,%eax
}
 24b:	5b                   	pop    %ebx
 24c:	5d                   	pop    %ebp
 24d:	c3                   	ret    
 24e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 251:	31 c0                	xor    %eax,%eax
 253:	eb f4                	jmp    249 <strcmp+0x39>
 255:	0f b6 cb             	movzbl %bl,%ecx
 258:	eb ef                	jmp    249 <strcmp+0x39>
 25a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000260 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 266:	80 39 00             	cmpb   $0x0,(%ecx)
 269:	74 12                	je     27d <strlen+0x1d>
 26b:	31 d2                	xor    %edx,%edx
 26d:	8d 76 00             	lea    0x0(%esi),%esi
 270:	83 c2 01             	add    $0x1,%edx
 273:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 277:	89 d0                	mov    %edx,%eax
 279:	75 f5                	jne    270 <strlen+0x10>
    ;
  return n;
}
 27b:	5d                   	pop    %ebp
 27c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 27d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 27f:	5d                   	pop    %ebp
 280:	c3                   	ret    
 281:	eb 0d                	jmp    290 <memset>
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

00000290 <memset>:

void*
memset(void *dst, int c, uint n)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	8b 55 08             	mov    0x8(%ebp),%edx
 296:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 297:	8b 4d 10             	mov    0x10(%ebp),%ecx
 29a:	8b 45 0c             	mov    0xc(%ebp),%eax
 29d:	89 d7                	mov    %edx,%edi
 29f:	fc                   	cld    
 2a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2a2:	89 d0                	mov    %edx,%eax
 2a4:	5f                   	pop    %edi
 2a5:	5d                   	pop    %ebp
 2a6:	c3                   	ret    
 2a7:	89 f6                	mov    %esi,%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002b0 <strchr>:

char*
strchr(const char *s, char c)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	53                   	push   %ebx
 2b7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 2ba:	0f b6 18             	movzbl (%eax),%ebx
 2bd:	84 db                	test   %bl,%bl
 2bf:	74 1d                	je     2de <strchr+0x2e>
    if(*s == c)
 2c1:	38 d3                	cmp    %dl,%bl
 2c3:	89 d1                	mov    %edx,%ecx
 2c5:	75 0d                	jne    2d4 <strchr+0x24>
 2c7:	eb 17                	jmp    2e0 <strchr+0x30>
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2d0:	38 ca                	cmp    %cl,%dl
 2d2:	74 0c                	je     2e0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 2d4:	83 c0 01             	add    $0x1,%eax
 2d7:	0f b6 10             	movzbl (%eax),%edx
 2da:	84 d2                	test   %dl,%dl
 2dc:	75 f2                	jne    2d0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 2de:	31 c0                	xor    %eax,%eax
}
 2e0:	5b                   	pop    %ebx
 2e1:	5d                   	pop    %ebp
 2e2:	c3                   	ret    
 2e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002f0 <gets>:

char*
gets(char *buf, int max)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2f5:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 2f7:	53                   	push   %ebx
 2f8:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2fb:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2fe:	eb 31                	jmp    331 <gets+0x41>
    cc = read(0, &c, 1);
 300:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 307:	00 
 308:	89 7c 24 04          	mov    %edi,0x4(%esp)
 30c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 313:	e8 02 01 00 00       	call   41a <read>
    if(cc < 1)
 318:	85 c0                	test   %eax,%eax
 31a:	7e 1d                	jle    339 <gets+0x49>
      break;
    buf[i++] = c;
 31c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 320:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 322:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 325:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 327:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 32b:	74 0c                	je     339 <gets+0x49>
 32d:	3c 0a                	cmp    $0xa,%al
 32f:	74 08                	je     339 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 331:	8d 5e 01             	lea    0x1(%esi),%ebx
 334:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 337:	7c c7                	jl     300 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 339:	8b 45 08             	mov    0x8(%ebp),%eax
 33c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 340:	83 c4 2c             	add    $0x2c,%esp
 343:	5b                   	pop    %ebx
 344:	5e                   	pop    %esi
 345:	5f                   	pop    %edi
 346:	5d                   	pop    %ebp
 347:	c3                   	ret    
 348:	90                   	nop
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <stat>:

int
stat(char *n, struct stat *st)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
 355:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 358:	8b 45 08             	mov    0x8(%ebp),%eax
 35b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 362:	00 
 363:	89 04 24             	mov    %eax,(%esp)
 366:	e8 d7 00 00 00       	call   442 <open>
  if(fd < 0)
 36b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 36d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 36f:	78 27                	js     398 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 371:	8b 45 0c             	mov    0xc(%ebp),%eax
 374:	89 1c 24             	mov    %ebx,(%esp)
 377:	89 44 24 04          	mov    %eax,0x4(%esp)
 37b:	e8 da 00 00 00       	call   45a <fstat>
  close(fd);
 380:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 383:	89 c6                	mov    %eax,%esi
  close(fd);
 385:	e8 a0 00 00 00       	call   42a <close>
  return r;
 38a:	89 f0                	mov    %esi,%eax
}
 38c:	83 c4 10             	add    $0x10,%esp
 38f:	5b                   	pop    %ebx
 390:	5e                   	pop    %esi
 391:	5d                   	pop    %ebp
 392:	c3                   	ret    
 393:	90                   	nop
 394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 398:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 39d:	eb ed                	jmp    38c <stat+0x3c>
 39f:	90                   	nop

000003a0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3a6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3a7:	0f be 11             	movsbl (%ecx),%edx
 3aa:	8d 42 d0             	lea    -0x30(%edx),%eax
 3ad:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 3af:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 3b4:	77 17                	ja     3cd <atoi+0x2d>
 3b6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3b8:	83 c1 01             	add    $0x1,%ecx
 3bb:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3be:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3c2:	0f be 11             	movsbl (%ecx),%edx
 3c5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3c8:	80 fb 09             	cmp    $0x9,%bl
 3cb:	76 eb                	jbe    3b8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 3cd:	5b                   	pop    %ebx
 3ce:	5d                   	pop    %ebp
 3cf:	c3                   	ret    

000003d0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 3d0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3d1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 3d3:	89 e5                	mov    %esp,%ebp
 3d5:	56                   	push   %esi
 3d6:	8b 45 08             	mov    0x8(%ebp),%eax
 3d9:	53                   	push   %ebx
 3da:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3dd:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3e0:	85 db                	test   %ebx,%ebx
 3e2:	7e 12                	jle    3f6 <memmove+0x26>
 3e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3ef:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3f2:	39 da                	cmp    %ebx,%edx
 3f4:	75 f2                	jne    3e8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 3f6:	5b                   	pop    %ebx
 3f7:	5e                   	pop    %esi
 3f8:	5d                   	pop    %ebp
 3f9:	c3                   	ret    

000003fa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3fa:	b8 01 00 00 00       	mov    $0x1,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <exit>:
SYSCALL(exit)
 402:	b8 02 00 00 00       	mov    $0x2,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <wait>:
SYSCALL(wait)
 40a:	b8 03 00 00 00       	mov    $0x3,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <pipe>:
SYSCALL(pipe)
 412:	b8 04 00 00 00       	mov    $0x4,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <read>:
SYSCALL(read)
 41a:	b8 05 00 00 00       	mov    $0x5,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <write>:
SYSCALL(write)
 422:	b8 10 00 00 00       	mov    $0x10,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <close>:
SYSCALL(close)
 42a:	b8 15 00 00 00       	mov    $0x15,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <kill>:
SYSCALL(kill)
 432:	b8 06 00 00 00       	mov    $0x6,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <exec>:
SYSCALL(exec)
 43a:	b8 07 00 00 00       	mov    $0x7,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <open>:
SYSCALL(open)
 442:	b8 0f 00 00 00       	mov    $0xf,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <mknod>:
SYSCALL(mknod)
 44a:	b8 11 00 00 00       	mov    $0x11,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <unlink>:
SYSCALL(unlink)
 452:	b8 12 00 00 00       	mov    $0x12,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <fstat>:
SYSCALL(fstat)
 45a:	b8 08 00 00 00       	mov    $0x8,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <link>:
SYSCALL(link)
 462:	b8 13 00 00 00       	mov    $0x13,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <mkdir>:
SYSCALL(mkdir)
 46a:	b8 14 00 00 00       	mov    $0x14,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <chdir>:
SYSCALL(chdir)
 472:	b8 09 00 00 00       	mov    $0x9,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <dup>:
SYSCALL(dup)
 47a:	b8 0a 00 00 00       	mov    $0xa,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <getpid>:
SYSCALL(getpid)
 482:	b8 0b 00 00 00       	mov    $0xb,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <sbrk>:
SYSCALL(sbrk)
 48a:	b8 0c 00 00 00       	mov    $0xc,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <sleep>:
SYSCALL(sleep)
 492:	b8 0d 00 00 00       	mov    $0xd,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <uptime>:
SYSCALL(uptime)
 49a:	b8 0e 00 00 00       	mov    $0xe,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <random>:
SYSCALL(random)
 4a2:	b8 16 00 00 00       	mov    $0x16,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <cprocstate>:
SYSCALL(cprocstate)
 4aa:	b8 18 00 00 00       	mov    $0x18,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <signalinfo>:
SYSCALL(signalinfo)
 4b2:	b8 19 00 00 00       	mov    $0x19,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    

000004ba <setseed>:
SYSCALL(setseed)
 4ba:	b8 17 00 00 00       	mov    $0x17,%eax
 4bf:	cd 40                	int    $0x40
 4c1:	c3                   	ret    
 4c2:	66 90                	xchg   %ax,%ax
 4c4:	66 90                	xchg   %ax,%ax
 4c6:	66 90                	xchg   %ax,%ax
 4c8:	66 90                	xchg   %ax,%ax
 4ca:	66 90                	xchg   %ax,%ax
 4cc:	66 90                	xchg   %ax,%ax
 4ce:	66 90                	xchg   %ax,%ax

000004d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	89 c6                	mov    %eax,%esi
 4d7:	53                   	push   %ebx
 4d8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 4db:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4de:	85 db                	test   %ebx,%ebx
 4e0:	74 09                	je     4eb <printint+0x1b>
 4e2:	89 d0                	mov    %edx,%eax
 4e4:	c1 e8 1f             	shr    $0x1f,%eax
 4e7:	84 c0                	test   %al,%al
 4e9:	75 75                	jne    560 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4eb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 4ed:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4f4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 4f7:	31 ff                	xor    %edi,%edi
 4f9:	89 ce                	mov    %ecx,%esi
 4fb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4fe:	eb 02                	jmp    502 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 500:	89 cf                	mov    %ecx,%edi
 502:	31 d2                	xor    %edx,%edx
 504:	f7 f6                	div    %esi
 506:	8d 4f 01             	lea    0x1(%edi),%ecx
 509:	0f b6 92 2f 09 00 00 	movzbl 0x92f(%edx),%edx
  }while((x /= base) != 0);
 510:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 512:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 515:	75 e9                	jne    500 <printint+0x30>
  if(neg)
 517:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 51a:	89 c8                	mov    %ecx,%eax
 51c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 51f:	85 d2                	test   %edx,%edx
 521:	74 08                	je     52b <printint+0x5b>
    buf[i++] = '-';
 523:	8d 4f 02             	lea    0x2(%edi),%ecx
 526:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 52b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 52e:	66 90                	xchg   %ax,%ax
 530:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 535:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 538:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 53f:	00 
 540:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 544:	89 34 24             	mov    %esi,(%esp)
 547:	88 45 d7             	mov    %al,-0x29(%ebp)
 54a:	e8 d3 fe ff ff       	call   422 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 54f:	83 ff ff             	cmp    $0xffffffff,%edi
 552:	75 dc                	jne    530 <printint+0x60>
    putc(fd, buf[i]);
}
 554:	83 c4 4c             	add    $0x4c,%esp
 557:	5b                   	pop    %ebx
 558:	5e                   	pop    %esi
 559:	5f                   	pop    %edi
 55a:	5d                   	pop    %ebp
 55b:	c3                   	ret    
 55c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 560:	89 d0                	mov    %edx,%eax
 562:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 564:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 56b:	eb 87                	jmp    4f4 <printint+0x24>
 56d:	8d 76 00             	lea    0x0(%esi),%esi

00000570 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 574:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 576:	56                   	push   %esi
 577:	53                   	push   %ebx
 578:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 57b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 57e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 581:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 584:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 587:	0f b6 13             	movzbl (%ebx),%edx
 58a:	83 c3 01             	add    $0x1,%ebx
 58d:	84 d2                	test   %dl,%dl
 58f:	75 39                	jne    5ca <printf+0x5a>
 591:	e9 c2 00 00 00       	jmp    658 <printf+0xe8>
 596:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 598:	83 fa 25             	cmp    $0x25,%edx
 59b:	0f 84 bf 00 00 00    	je     660 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5a1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 5a4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5ab:	00 
 5ac:	89 44 24 04          	mov    %eax,0x4(%esp)
 5b0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 5b3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5b6:	e8 67 fe ff ff       	call   422 <write>
 5bb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5be:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5c2:	84 d2                	test   %dl,%dl
 5c4:	0f 84 8e 00 00 00    	je     658 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 5ca:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 5cc:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 5cf:	74 c7                	je     598 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5d1:	83 ff 25             	cmp    $0x25,%edi
 5d4:	75 e5                	jne    5bb <printf+0x4b>
      if(c == 'd'){
 5d6:	83 fa 64             	cmp    $0x64,%edx
 5d9:	0f 84 31 01 00 00    	je     710 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5df:	25 f7 00 00 00       	and    $0xf7,%eax
 5e4:	83 f8 70             	cmp    $0x70,%eax
 5e7:	0f 84 83 00 00 00    	je     670 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5ed:	83 fa 73             	cmp    $0x73,%edx
 5f0:	0f 84 a2 00 00 00    	je     698 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5f6:	83 fa 63             	cmp    $0x63,%edx
 5f9:	0f 84 35 01 00 00    	je     734 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5ff:	83 fa 25             	cmp    $0x25,%edx
 602:	0f 84 e0 00 00 00    	je     6e8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 608:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 60b:	83 c3 01             	add    $0x1,%ebx
 60e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 615:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 616:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 618:	89 44 24 04          	mov    %eax,0x4(%esp)
 61c:	89 34 24             	mov    %esi,(%esp)
 61f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 622:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 626:	e8 f7 fd ff ff       	call   422 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 62b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 62e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 631:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 638:	00 
 639:	89 44 24 04          	mov    %eax,0x4(%esp)
 63d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 640:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 643:	e8 da fd ff ff       	call   422 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 648:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 64c:	84 d2                	test   %dl,%dl
 64e:	0f 85 76 ff ff ff    	jne    5ca <printf+0x5a>
 654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 658:	83 c4 3c             	add    $0x3c,%esp
 65b:	5b                   	pop    %ebx
 65c:	5e                   	pop    %esi
 65d:	5f                   	pop    %edi
 65e:	5d                   	pop    %ebp
 65f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 660:	bf 25 00 00 00       	mov    $0x25,%edi
 665:	e9 51 ff ff ff       	jmp    5bb <printf+0x4b>
 66a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 670:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 673:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 678:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 67a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 681:	8b 10                	mov    (%eax),%edx
 683:	89 f0                	mov    %esi,%eax
 685:	e8 46 fe ff ff       	call   4d0 <printint>
        ap++;
 68a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 68e:	e9 28 ff ff ff       	jmp    5bb <printf+0x4b>
 693:	90                   	nop
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 698:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 69b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 69f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 6a1:	b8 28 09 00 00       	mov    $0x928,%eax
 6a6:	85 ff                	test   %edi,%edi
 6a8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 6ab:	0f b6 07             	movzbl (%edi),%eax
 6ae:	84 c0                	test   %al,%al
 6b0:	74 2a                	je     6dc <printf+0x16c>
 6b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6b8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6bb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 6be:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6c8:	00 
 6c9:	89 44 24 04          	mov    %eax,0x4(%esp)
 6cd:	89 34 24             	mov    %esi,(%esp)
 6d0:	e8 4d fd ff ff       	call   422 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 6d5:	0f b6 07             	movzbl (%edi),%eax
 6d8:	84 c0                	test   %al,%al
 6da:	75 dc                	jne    6b8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6dc:	31 ff                	xor    %edi,%edi
 6de:	e9 d8 fe ff ff       	jmp    5bb <printf+0x4b>
 6e3:	90                   	nop
 6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6e8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6eb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6ed:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6f4:	00 
 6f5:	89 44 24 04          	mov    %eax,0x4(%esp)
 6f9:	89 34 24             	mov    %esi,(%esp)
 6fc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 700:	e8 1d fd ff ff       	call   422 <write>
 705:	e9 b1 fe ff ff       	jmp    5bb <printf+0x4b>
 70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 710:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 713:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 718:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 71b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 722:	8b 10                	mov    (%eax),%edx
 724:	89 f0                	mov    %esi,%eax
 726:	e8 a5 fd ff ff       	call   4d0 <printint>
        ap++;
 72b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 72f:	e9 87 fe ff ff       	jmp    5bb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 734:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 737:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 739:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 73b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 742:	00 
 743:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 746:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 749:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 74c:	89 44 24 04          	mov    %eax,0x4(%esp)
 750:	e8 cd fc ff ff       	call   422 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 755:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 759:	e9 5d fe ff ff       	jmp    5bb <printf+0x4b>
 75e:	66 90                	xchg   %ax,%ax

00000760 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 760:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 761:	a1 b8 0b 00 00       	mov    0xbb8,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 766:	89 e5                	mov    %esp,%ebp
 768:	57                   	push   %edi
 769:	56                   	push   %esi
 76a:	53                   	push   %ebx
 76b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 76e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 770:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 773:	39 d0                	cmp    %edx,%eax
 775:	72 11                	jb     788 <free+0x28>
 777:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 778:	39 c8                	cmp    %ecx,%eax
 77a:	72 04                	jb     780 <free+0x20>
 77c:	39 ca                	cmp    %ecx,%edx
 77e:	72 10                	jb     790 <free+0x30>
 780:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 782:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 784:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 786:	73 f0                	jae    778 <free+0x18>
 788:	39 ca                	cmp    %ecx,%edx
 78a:	72 04                	jb     790 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 78c:	39 c8                	cmp    %ecx,%eax
 78e:	72 f0                	jb     780 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 790:	8b 73 fc             	mov    -0x4(%ebx),%esi
 793:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 796:	39 cf                	cmp    %ecx,%edi
 798:	74 1e                	je     7b8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 79a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 79d:	8b 48 04             	mov    0x4(%eax),%ecx
 7a0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 7a3:	39 f2                	cmp    %esi,%edx
 7a5:	74 28                	je     7cf <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 7a7:	89 10                	mov    %edx,(%eax)
  freep = p;
 7a9:	a3 b8 0b 00 00       	mov    %eax,0xbb8
}
 7ae:	5b                   	pop    %ebx
 7af:	5e                   	pop    %esi
 7b0:	5f                   	pop    %edi
 7b1:	5d                   	pop    %ebp
 7b2:	c3                   	ret    
 7b3:	90                   	nop
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 7b8:	03 71 04             	add    0x4(%ecx),%esi
 7bb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7be:	8b 08                	mov    (%eax),%ecx
 7c0:	8b 09                	mov    (%ecx),%ecx
 7c2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7c5:	8b 48 04             	mov    0x4(%eax),%ecx
 7c8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 7cb:	39 f2                	cmp    %esi,%edx
 7cd:	75 d8                	jne    7a7 <free+0x47>
    p->s.size += bp->s.size;
 7cf:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 7d2:	a3 b8 0b 00 00       	mov    %eax,0xbb8
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 7d7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 7da:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7dd:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7df:	5b                   	pop    %ebx
 7e0:	5e                   	pop    %esi
 7e1:	5f                   	pop    %edi
 7e2:	5d                   	pop    %ebp
 7e3:	c3                   	ret    
 7e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 7ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000007f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	57                   	push   %edi
 7f4:	56                   	push   %esi
 7f5:	53                   	push   %ebx
 7f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7fc:	8b 1d b8 0b 00 00    	mov    0xbb8,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 802:	8d 48 07             	lea    0x7(%eax),%ecx
 805:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 808:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 80a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 80d:	0f 84 9b 00 00 00    	je     8ae <malloc+0xbe>
 813:	8b 13                	mov    (%ebx),%edx
 815:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 818:	39 fe                	cmp    %edi,%esi
 81a:	76 64                	jbe    880 <malloc+0x90>
 81c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 823:	bb 00 80 00 00       	mov    $0x8000,%ebx
 828:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 82b:	eb 0e                	jmp    83b <malloc+0x4b>
 82d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 830:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 832:	8b 78 04             	mov    0x4(%eax),%edi
 835:	39 fe                	cmp    %edi,%esi
 837:	76 4f                	jbe    888 <malloc+0x98>
 839:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 83b:	3b 15 b8 0b 00 00    	cmp    0xbb8,%edx
 841:	75 ed                	jne    830 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 843:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 846:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 84c:	bf 00 10 00 00       	mov    $0x1000,%edi
 851:	0f 43 fe             	cmovae %esi,%edi
 854:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 857:	89 04 24             	mov    %eax,(%esp)
 85a:	e8 2b fc ff ff       	call   48a <sbrk>
  if(p == (char*)-1)
 85f:	83 f8 ff             	cmp    $0xffffffff,%eax
 862:	74 18                	je     87c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 864:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 867:	83 c0 08             	add    $0x8,%eax
 86a:	89 04 24             	mov    %eax,(%esp)
 86d:	e8 ee fe ff ff       	call   760 <free>
  return freep;
 872:	8b 15 b8 0b 00 00    	mov    0xbb8,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 878:	85 d2                	test   %edx,%edx
 87a:	75 b4                	jne    830 <malloc+0x40>
        return 0;
 87c:	31 c0                	xor    %eax,%eax
 87e:	eb 20                	jmp    8a0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 880:	89 d0                	mov    %edx,%eax
 882:	89 da                	mov    %ebx,%edx
 884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 888:	39 fe                	cmp    %edi,%esi
 88a:	74 1c                	je     8a8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 88c:	29 f7                	sub    %esi,%edi
 88e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 891:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 894:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 897:	89 15 b8 0b 00 00    	mov    %edx,0xbb8
      return (void*)(p + 1);
 89d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 8a0:	83 c4 1c             	add    $0x1c,%esp
 8a3:	5b                   	pop    %ebx
 8a4:	5e                   	pop    %esi
 8a5:	5f                   	pop    %edi
 8a6:	5d                   	pop    %ebp
 8a7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 8a8:	8b 08                	mov    (%eax),%ecx
 8aa:	89 0a                	mov    %ecx,(%edx)
 8ac:	eb e9                	jmp    897 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 8ae:	c7 05 b8 0b 00 00 bc 	movl   $0xbbc,0xbb8
 8b5:	0b 00 00 
    base.s.size = 0;
 8b8:	ba bc 0b 00 00       	mov    $0xbbc,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 8bd:	c7 05 bc 0b 00 00 bc 	movl   $0xbbc,0xbbc
 8c4:	0b 00 00 
    base.s.size = 0;
 8c7:	c7 05 c0 0b 00 00 00 	movl   $0x0,0xbc0
 8ce:	00 00 00 
 8d1:	e9 46 ff ff ff       	jmp    81c <malloc+0x2c>
