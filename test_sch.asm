
_test_sch:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
argv[4]=maxp_runtime
arg[5]=maxnum_processes
*/
int seed=2;
int random1(int min, int max);
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
  15:	e8 96 03 00 00       	call   3b0 <atoi>
  1a:	89 c7                	mov    %eax,%edi
	maxp_time=atoi(argv[2]);
  1c:	8b 43 08             	mov    0x8(%ebx),%eax
  1f:	89 04 24             	mov    %eax,(%esp)
  22:	e8 89 03 00 00       	call   3b0 <atoi>
  27:	89 c6                	mov    %eax,%esi
	minp_runtime=atoi(argv[3]);
  29:	8b 43 0c             	mov    0xc(%ebx),%eax
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
	r=x%(max-min);
  2c:	29 fe                	sub    %edi,%esi
	int i;

	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
  2e:	89 04 24             	mov    %eax,(%esp)
  31:	e8 7a 03 00 00       	call   3b0 <atoi>
  36:	89 44 24 18          	mov    %eax,0x18(%esp)
	maxp_runtime=atoi(argv[4]);
  3a:	8b 43 10             	mov    0x10(%ebx),%eax
  3d:	89 04 24             	mov    %eax,(%esp)
  40:	e8 6b 03 00 00       	call   3b0 <atoi>
  45:	89 44 24 14          	mov    %eax,0x14(%esp)
	maxnum_processes=atoi(argv[5]);
  49:	8b 43 14             	mov    0x14(%ebx),%eax
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  4c:	31 db                	xor    %ebx,%ebx
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
  4e:	89 04 24             	mov    %eax,(%esp)
  51:	e8 5a 03 00 00       	call   3b0 <atoi>
	return 1;

}

int random1(int min, int max){
	int x=seed,r;	
  56:	8b 15 98 0b 00 00    	mov    0xb98,%edx
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
  5c:	89 44 24 1c          	mov    %eax,0x1c(%esp)

}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
  60:	89 d0                	mov    %edx,%eax
  62:	c1 e0 0d             	shl    $0xd,%eax
  65:	31 d0                	xor    %edx,%eax
	x ^= x >> 17;
  67:	89 c2                	mov    %eax,%edx
  69:	c1 fa 11             	sar    $0x11,%edx
  6c:	31 c2                	xor    %eax,%edx
	x ^= x << 5;
  6e:	89 d0                	mov    %edx,%eax
  70:	c1 e0 05             	shl    $0x5,%eax
  73:	31 d0                	xor    %edx,%eax
	seed=x;
	r=x%(max-min);
  75:	99                   	cltd   
int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
  76:	a3 98 0b 00 00       	mov    %eax,0xb98
	r=x%(max-min);
  7b:	f7 fe                	idiv   %esi
  7d:	89 d1                	mov    %edx,%ecx
  7f:	c1 f9 1f             	sar    $0x1f,%ecx
  82:	31 ca                	xor    %ecx,%edx
  84:	89 d0                	mov    %edx,%eax
	maxnum_processes=atoi(argv[5]);
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
  86:	ba 89 88 88 88       	mov    $0x88888889,%edx
  8b:	29 c8                	sub    %ecx,%eax
	x ^= x << 5;
	seed=x;
	r=x%(max-min);
	if(r<0)
		r=-r;
	r+=min;//got a random number between min and max
  8d:	01 f8                	add    %edi,%eax
	maxnum_processes=atoi(argv[5]);
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
  8f:	69 c8 e8 03 00 00    	imul   $0x3e8,%eax,%ecx
  95:	89 c8                	mov    %ecx,%eax
  97:	f7 ea                	imul   %edx
  99:	01 ca                	add    %ecx,%edx
  9b:	c1 fa 03             	sar    $0x3,%edx
  9e:	c1 f9 1f             	sar    $0x1f,%ecx
  a1:	29 ca                	sub    %ecx,%edx
  a3:	89 14 24             	mov    %edx,(%esp)
  a6:	e8 f7 03 00 00       	call   4a2 <sleep>
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  ab:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  af:	85 c0                	test   %eax,%eax
  b1:	7e 6d                	jle    120 <main+0x120>
  b3:	90                   	nop
  b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				
		int pid=fork();
  b8:	e8 4d 03 00 00       	call   40a <fork>
		if(pid < 0){
  bd:	85 c0                	test   %eax,%eax
  bf:	78 6c                	js     12d <main+0x12d>
	return 1;

}

int random1(int min, int max){
	int x=seed,r;	
  c1:	8b 15 98 0b 00 00    	mov    0xb98,%edx
	x ^= x << 13;
  c7:	89 d0                	mov    %edx,%eax
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
  c9:	74 7b                	je     146 <main+0x146>

}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
  cb:	c1 e0 0d             	shl    $0xd,%eax
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  ce:	83 c3 01             	add    $0x1,%ebx

}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
  d1:	31 d0                	xor    %edx,%eax
	x ^= x >> 17;
  d3:	89 c2                	mov    %eax,%edx
  d5:	c1 fa 11             	sar    $0x11,%edx
  d8:	31 c2                	xor    %eax,%edx
	x ^= x << 5;
  da:	89 d0                	mov    %edx,%eax
  dc:	c1 e0 05             	shl    $0x5,%eax
  df:	31 d0                	xor    %edx,%eax
	seed=x;
	r=x%(max-min);
  e1:	99                   	cltd   
int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
  e2:	a3 98 0b 00 00       	mov    %eax,0xb98
	r=x%(max-min);
  e7:	f7 fe                	idiv   %esi
  e9:	89 d1                	mov    %edx,%ecx
  eb:	89 d0                	mov    %edx,%eax
  ed:	c1 f9 1f             	sar    $0x1f,%ecx
  f0:	31 c8                	xor    %ecx,%eax
  f2:	29 c8                	sub    %ecx,%eax
	if(r<0)
		r=-r;
	r+=min;//got a random number between min and max
  f4:	01 f8                	add    %edi,%eax
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)//waiting for the wrong child
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			sleep((int)(1000*random1(minp_time,maxp_time)/15));	
  f6:	69 c8 e8 03 00 00    	imul   $0x3e8,%eax,%ecx
  fc:	b8 89 88 88 88       	mov    $0x88888889,%eax
 101:	f7 e9                	imul   %ecx
 103:	01 ca                	add    %ecx,%edx
 105:	c1 fa 03             	sar    $0x3,%edx
 108:	c1 f9 1f             	sar    $0x1f,%ecx
 10b:	29 ca                	sub    %ecx,%edx
 10d:	89 14 24             	mov    %edx,(%esp)
 110:	e8 8d 03 00 00       	call   4a2 <sleep>
			wait();	
 115:	e8 00 03 00 00       	call   41a <wait>
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
 11a:	3b 5c 24 1c          	cmp    0x1c(%esp),%ebx
 11e:	75 98                	jne    b8 <main+0xb8>
	{
	wait();		
	}*/
	return 1;

}
 120:	8d 65 f4             	lea    -0xc(%ebp),%esp
 123:	b8 01 00 00 00       	mov    $0x1,%eax
 128:	5b                   	pop    %ebx
 129:	5e                   	pop    %esi
 12a:	5f                   	pop    %edi
 12b:	5d                   	pop    %ebp
 12c:	c3                   	ret    
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
				
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
 12d:	c7 44 24 04 c6 08 00 	movl   $0x8c6,0x4(%esp)
 134:	00 
 135:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13c:	e8 1f 04 00 00       	call   560 <printf>
    	  exit();
 141:	e8 cc 02 00 00       	call   412 <exit>

}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
 146:	c1 e0 0d             	shl    $0xd,%eax
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
	r=x%(max-min);
 149:	8b 74 24 18          	mov    0x18(%esp),%esi

}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
 14d:	31 d0                	xor    %edx,%eax
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
	r=x%(max-min);
 14f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
 153:	89 c2                	mov    %eax,%edx
 155:	c1 fa 11             	sar    $0x11,%edx
 158:	31 c2                	xor    %eax,%edx
	x ^= x << 5;
 15a:	89 d0                	mov    %edx,%eax
	seed=x;
	r=x%(max-min);
 15c:	29 f1                	sub    %esi,%ecx

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
 15e:	c1 e0 05             	shl    $0x5,%eax
 161:	31 d0                	xor    %edx,%eax
	seed=x;
	r=x%(max-min);
 163:	99                   	cltd   
int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
 164:	a3 98 0b 00 00       	mov    %eax,0xb98
	r=x%(max-min);
 169:	f7 f9                	idiv   %ecx
	if(r<0)
		r=-r;
 16b:	89 d1                	mov    %edx,%ecx
 16d:	89 d0                	mov    %edx,%eax
 16f:	c1 f9 1f             	sar    $0x1f,%ecx
 172:	31 c8                	xor    %ecx,%eax
 174:	29 c8                	sub    %ecx,%eax
		if(pid < 0){
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
			sleep((int)(1000*random1(minp_runtime,maxp_runtime)/15)); //sleep for a randomly chosen runtime
 176:	b9 0f 00 00 00       	mov    $0xf,%ecx
	x ^= x << 5;
	seed=x;
	r=x%(max-min);
	if(r<0)
		r=-r;
	r+=min;//got a random number between min and max
 17b:	01 f0                	add    %esi,%eax
		if(pid < 0){
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
			sleep((int)(1000*random1(minp_runtime,maxp_runtime)/15)); //sleep for a randomly chosen runtime
 17d:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
 183:	99                   	cltd   
 184:	f7 f9                	idiv   %ecx
 186:	89 04 24             	mov    %eax,(%esp)
 189:	e8 14 03 00 00       	call   4a2 <sleep>
			//exec("sleep_sec", list);
			
			//printf(1, "init: exec sleep_sec failed\n");
			printf(1,"Child %d\n",getpid());
 18e:	e8 ff 02 00 00       	call   492 <getpid>
 193:	c7 44 24 04 d9 08 00 	movl   $0x8d9,0x4(%esp)
 19a:	00 
 19b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1a2:	89 44 24 08          	mov    %eax,0x8(%esp)
 1a6:	e8 b5 03 00 00       	call   560 <printf>
		   exit();
 1ab:	e8 62 02 00 00       	call   412 <exit>

000001b0 <random1>:
	return 1;

}

int random1(int min, int max){
	int x=seed,r;	
 1b0:	8b 15 98 0b 00 00    	mov    0xb98,%edx
	}*/
	return 1;

}

int random1(int min, int max){
 1b6:	55                   	push   %ebp
 1b7:	89 e5                	mov    %esp,%ebp
 1b9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
	int x=seed,r;	
	x ^= x << 13;
 1bc:	89 d0                	mov    %edx,%eax
 1be:	c1 e0 0d             	shl    $0xd,%eax
 1c1:	31 d0                	xor    %edx,%eax
	x ^= x >> 17;
 1c3:	89 c2                	mov    %eax,%edx
 1c5:	c1 fa 11             	sar    $0x11,%edx
	}*/
	return 1;

}

int random1(int min, int max){
 1c8:	53                   	push   %ebx
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
 1c9:	31 c2                	xor    %eax,%edx
	}*/
	return 1;

}

int random1(int min, int max){
 1cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
 1ce:	89 d0                	mov    %edx,%eax
 1d0:	c1 e0 05             	shl    $0x5,%eax
 1d3:	31 d0                	xor    %edx,%eax
	seed=x;
	r=x%(max-min);
 1d5:	29 d9                	sub    %ebx,%ecx
 1d7:	99                   	cltd   
int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
 1d8:	a3 98 0b 00 00       	mov    %eax,0xb98
	r=x%(max-min);
 1dd:	f7 f9                	idiv   %ecx
 1df:	89 d1                	mov    %edx,%ecx
 1e1:	89 d0                	mov    %edx,%eax
 1e3:	c1 f9 1f             	sar    $0x1f,%ecx
 1e6:	31 c8                	xor    %ecx,%eax
 1e8:	29 c8                	sub    %ecx,%eax
	if(r<0)
		r=-r;
	r+=min;//got a random number between min and max
 1ea:	01 d8                	add    %ebx,%eax
	return r;
}
 1ec:	5b                   	pop    %ebx
 1ed:	5d                   	pop    %ebp
 1ee:	c3                   	ret    
 1ef:	90                   	nop

000001f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1f9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1fa:	89 c2                	mov    %eax,%edx
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 200:	83 c1 01             	add    $0x1,%ecx
 203:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 207:	83 c2 01             	add    $0x1,%edx
 20a:	84 db                	test   %bl,%bl
 20c:	88 5a ff             	mov    %bl,-0x1(%edx)
 20f:	75 ef                	jne    200 <strcpy+0x10>
    ;
  return os;
}
 211:	5b                   	pop    %ebx
 212:	5d                   	pop    %ebp
 213:	c3                   	ret    
 214:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 21a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000220 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 55 08             	mov    0x8(%ebp),%edx
 226:	53                   	push   %ebx
 227:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 22a:	0f b6 02             	movzbl (%edx),%eax
 22d:	84 c0                	test   %al,%al
 22f:	74 2d                	je     25e <strcmp+0x3e>
 231:	0f b6 19             	movzbl (%ecx),%ebx
 234:	38 d8                	cmp    %bl,%al
 236:	74 0e                	je     246 <strcmp+0x26>
 238:	eb 2b                	jmp    265 <strcmp+0x45>
 23a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 240:	38 c8                	cmp    %cl,%al
 242:	75 15                	jne    259 <strcmp+0x39>
    p++, q++;
 244:	89 d9                	mov    %ebx,%ecx
 246:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 249:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 24c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 24f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 253:	84 c0                	test   %al,%al
 255:	75 e9                	jne    240 <strcmp+0x20>
 257:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 259:	29 c8                	sub    %ecx,%eax
}
 25b:	5b                   	pop    %ebx
 25c:	5d                   	pop    %ebp
 25d:	c3                   	ret    
 25e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 261:	31 c0                	xor    %eax,%eax
 263:	eb f4                	jmp    259 <strcmp+0x39>
 265:	0f b6 cb             	movzbl %bl,%ecx
 268:	eb ef                	jmp    259 <strcmp+0x39>
 26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000270 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 276:	80 39 00             	cmpb   $0x0,(%ecx)
 279:	74 12                	je     28d <strlen+0x1d>
 27b:	31 d2                	xor    %edx,%edx
 27d:	8d 76 00             	lea    0x0(%esi),%esi
 280:	83 c2 01             	add    $0x1,%edx
 283:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 287:	89 d0                	mov    %edx,%eax
 289:	75 f5                	jne    280 <strlen+0x10>
    ;
  return n;
}
 28b:	5d                   	pop    %ebp
 28c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 28d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 28f:	5d                   	pop    %ebp
 290:	c3                   	ret    
 291:	eb 0d                	jmp    2a0 <memset>
 293:	90                   	nop
 294:	90                   	nop
 295:	90                   	nop
 296:	90                   	nop
 297:	90                   	nop
 298:	90                   	nop
 299:	90                   	nop
 29a:	90                   	nop
 29b:	90                   	nop
 29c:	90                   	nop
 29d:	90                   	nop
 29e:	90                   	nop
 29f:	90                   	nop

000002a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	8b 55 08             	mov    0x8(%ebp),%edx
 2a6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 2ad:	89 d7                	mov    %edx,%edi
 2af:	fc                   	cld    
 2b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2b2:	89 d0                	mov    %edx,%eax
 2b4:	5f                   	pop    %edi
 2b5:	5d                   	pop    %ebp
 2b6:	c3                   	ret    
 2b7:	89 f6                	mov    %esi,%esi
 2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002c0 <strchr>:

char*
strchr(const char *s, char c)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	8b 45 08             	mov    0x8(%ebp),%eax
 2c6:	53                   	push   %ebx
 2c7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 2ca:	0f b6 18             	movzbl (%eax),%ebx
 2cd:	84 db                	test   %bl,%bl
 2cf:	74 1d                	je     2ee <strchr+0x2e>
    if(*s == c)
 2d1:	38 d3                	cmp    %dl,%bl
 2d3:	89 d1                	mov    %edx,%ecx
 2d5:	75 0d                	jne    2e4 <strchr+0x24>
 2d7:	eb 17                	jmp    2f0 <strchr+0x30>
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2e0:	38 ca                	cmp    %cl,%dl
 2e2:	74 0c                	je     2f0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 2e4:	83 c0 01             	add    $0x1,%eax
 2e7:	0f b6 10             	movzbl (%eax),%edx
 2ea:	84 d2                	test   %dl,%dl
 2ec:	75 f2                	jne    2e0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 2ee:	31 c0                	xor    %eax,%eax
}
 2f0:	5b                   	pop    %ebx
 2f1:	5d                   	pop    %ebp
 2f2:	c3                   	ret    
 2f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000300 <gets>:

char*
gets(char *buf, int max)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 305:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 307:	53                   	push   %ebx
 308:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 30b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 30e:	eb 31                	jmp    341 <gets+0x41>
    cc = read(0, &c, 1);
 310:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 317:	00 
 318:	89 7c 24 04          	mov    %edi,0x4(%esp)
 31c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 323:	e8 02 01 00 00       	call   42a <read>
    if(cc < 1)
 328:	85 c0                	test   %eax,%eax
 32a:	7e 1d                	jle    349 <gets+0x49>
      break;
    buf[i++] = c;
 32c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 330:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 332:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 335:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 337:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 33b:	74 0c                	je     349 <gets+0x49>
 33d:	3c 0a                	cmp    $0xa,%al
 33f:	74 08                	je     349 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 341:	8d 5e 01             	lea    0x1(%esi),%ebx
 344:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 347:	7c c7                	jl     310 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 349:	8b 45 08             	mov    0x8(%ebp),%eax
 34c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 350:	83 c4 2c             	add    $0x2c,%esp
 353:	5b                   	pop    %ebx
 354:	5e                   	pop    %esi
 355:	5f                   	pop    %edi
 356:	5d                   	pop    %ebp
 357:	c3                   	ret    
 358:	90                   	nop
 359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000360 <stat>:

int
stat(char *n, struct stat *st)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
 365:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 368:	8b 45 08             	mov    0x8(%ebp),%eax
 36b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 372:	00 
 373:	89 04 24             	mov    %eax,(%esp)
 376:	e8 d7 00 00 00       	call   452 <open>
  if(fd < 0)
 37b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 37d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 37f:	78 27                	js     3a8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 381:	8b 45 0c             	mov    0xc(%ebp),%eax
 384:	89 1c 24             	mov    %ebx,(%esp)
 387:	89 44 24 04          	mov    %eax,0x4(%esp)
 38b:	e8 da 00 00 00       	call   46a <fstat>
  close(fd);
 390:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 393:	89 c6                	mov    %eax,%esi
  close(fd);
 395:	e8 a0 00 00 00       	call   43a <close>
  return r;
 39a:	89 f0                	mov    %esi,%eax
}
 39c:	83 c4 10             	add    $0x10,%esp
 39f:	5b                   	pop    %ebx
 3a0:	5e                   	pop    %esi
 3a1:	5d                   	pop    %ebp
 3a2:	c3                   	ret    
 3a3:	90                   	nop
 3a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 3a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 3ad:	eb ed                	jmp    39c <stat+0x3c>
 3af:	90                   	nop

000003b0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3b6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3b7:	0f be 11             	movsbl (%ecx),%edx
 3ba:	8d 42 d0             	lea    -0x30(%edx),%eax
 3bd:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 3bf:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 3c4:	77 17                	ja     3dd <atoi+0x2d>
 3c6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3c8:	83 c1 01             	add    $0x1,%ecx
 3cb:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3ce:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3d2:	0f be 11             	movsbl (%ecx),%edx
 3d5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3d8:	80 fb 09             	cmp    $0x9,%bl
 3db:	76 eb                	jbe    3c8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 3dd:	5b                   	pop    %ebx
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    

000003e0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 3e0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3e1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 3e3:	89 e5                	mov    %esp,%ebp
 3e5:	56                   	push   %esi
 3e6:	8b 45 08             	mov    0x8(%ebp),%eax
 3e9:	53                   	push   %ebx
 3ea:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3ed:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3f0:	85 db                	test   %ebx,%ebx
 3f2:	7e 12                	jle    406 <memmove+0x26>
 3f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3f8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3fc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3ff:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 402:	39 da                	cmp    %ebx,%edx
 404:	75 f2                	jne    3f8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 406:	5b                   	pop    %ebx
 407:	5e                   	pop    %esi
 408:	5d                   	pop    %ebp
 409:	c3                   	ret    

0000040a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 40a:	b8 01 00 00 00       	mov    $0x1,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <exit>:
SYSCALL(exit)
 412:	b8 02 00 00 00       	mov    $0x2,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <wait>:
SYSCALL(wait)
 41a:	b8 03 00 00 00       	mov    $0x3,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <pipe>:
SYSCALL(pipe)
 422:	b8 04 00 00 00       	mov    $0x4,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <read>:
SYSCALL(read)
 42a:	b8 05 00 00 00       	mov    $0x5,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <write>:
SYSCALL(write)
 432:	b8 10 00 00 00       	mov    $0x10,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <close>:
SYSCALL(close)
 43a:	b8 15 00 00 00       	mov    $0x15,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <kill>:
SYSCALL(kill)
 442:	b8 06 00 00 00       	mov    $0x6,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <exec>:
SYSCALL(exec)
 44a:	b8 07 00 00 00       	mov    $0x7,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <open>:
SYSCALL(open)
 452:	b8 0f 00 00 00       	mov    $0xf,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <mknod>:
SYSCALL(mknod)
 45a:	b8 11 00 00 00       	mov    $0x11,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <unlink>:
SYSCALL(unlink)
 462:	b8 12 00 00 00       	mov    $0x12,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <fstat>:
SYSCALL(fstat)
 46a:	b8 08 00 00 00       	mov    $0x8,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <link>:
SYSCALL(link)
 472:	b8 13 00 00 00       	mov    $0x13,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <mkdir>:
SYSCALL(mkdir)
 47a:	b8 14 00 00 00       	mov    $0x14,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <chdir>:
SYSCALL(chdir)
 482:	b8 09 00 00 00       	mov    $0x9,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <dup>:
SYSCALL(dup)
 48a:	b8 0a 00 00 00       	mov    $0xa,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <getpid>:
SYSCALL(getpid)
 492:	b8 0b 00 00 00       	mov    $0xb,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <sbrk>:
SYSCALL(sbrk)
 49a:	b8 0c 00 00 00       	mov    $0xc,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <sleep>:
SYSCALL(sleep)
 4a2:	b8 0d 00 00 00       	mov    $0xd,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <uptime>:
SYSCALL(uptime)
 4aa:	b8 0e 00 00 00       	mov    $0xe,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <random>:
SYSCALL(random)
 4b2:	b8 16 00 00 00       	mov    $0x16,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    
 4ba:	66 90                	xchg   %ax,%ax
 4bc:	66 90                	xchg   %ax,%ax
 4be:	66 90                	xchg   %ax,%ax

000004c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
 4c5:	89 c6                	mov    %eax,%esi
 4c7:	53                   	push   %ebx
 4c8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 4cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ce:	85 db                	test   %ebx,%ebx
 4d0:	74 09                	je     4db <printint+0x1b>
 4d2:	89 d0                	mov    %edx,%eax
 4d4:	c1 e8 1f             	shr    $0x1f,%eax
 4d7:	84 c0                	test   %al,%al
 4d9:	75 75                	jne    550 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4db:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 4dd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4e4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 4e7:	31 ff                	xor    %edi,%edi
 4e9:	89 ce                	mov    %ecx,%esi
 4eb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4ee:	eb 02                	jmp    4f2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 4f0:	89 cf                	mov    %ecx,%edi
 4f2:	31 d2                	xor    %edx,%edx
 4f4:	f7 f6                	div    %esi
 4f6:	8d 4f 01             	lea    0x1(%edi),%ecx
 4f9:	0f b6 92 ea 08 00 00 	movzbl 0x8ea(%edx),%edx
  }while((x /= base) != 0);
 500:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 502:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 505:	75 e9                	jne    4f0 <printint+0x30>
  if(neg)
 507:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 50a:	89 c8                	mov    %ecx,%eax
 50c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 50f:	85 d2                	test   %edx,%edx
 511:	74 08                	je     51b <printint+0x5b>
    buf[i++] = '-';
 513:	8d 4f 02             	lea    0x2(%edi),%ecx
 516:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 51b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 51e:	66 90                	xchg   %ax,%ax
 520:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 525:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 528:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 52f:	00 
 530:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 534:	89 34 24             	mov    %esi,(%esp)
 537:	88 45 d7             	mov    %al,-0x29(%ebp)
 53a:	e8 f3 fe ff ff       	call   432 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 53f:	83 ff ff             	cmp    $0xffffffff,%edi
 542:	75 dc                	jne    520 <printint+0x60>
    putc(fd, buf[i]);
}
 544:	83 c4 4c             	add    $0x4c,%esp
 547:	5b                   	pop    %ebx
 548:	5e                   	pop    %esi
 549:	5f                   	pop    %edi
 54a:	5d                   	pop    %ebp
 54b:	c3                   	ret    
 54c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 550:	89 d0                	mov    %edx,%eax
 552:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 554:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 55b:	eb 87                	jmp    4e4 <printint+0x24>
 55d:	8d 76 00             	lea    0x0(%esi),%esi

00000560 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 564:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 566:	56                   	push   %esi
 567:	53                   	push   %ebx
 568:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 56b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 56e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 571:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 574:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 577:	0f b6 13             	movzbl (%ebx),%edx
 57a:	83 c3 01             	add    $0x1,%ebx
 57d:	84 d2                	test   %dl,%dl
 57f:	75 39                	jne    5ba <printf+0x5a>
 581:	e9 c2 00 00 00       	jmp    648 <printf+0xe8>
 586:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 588:	83 fa 25             	cmp    $0x25,%edx
 58b:	0f 84 bf 00 00 00    	je     650 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 591:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 594:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 59b:	00 
 59c:	89 44 24 04          	mov    %eax,0x4(%esp)
 5a0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 5a3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5a6:	e8 87 fe ff ff       	call   432 <write>
 5ab:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5ae:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5b2:	84 d2                	test   %dl,%dl
 5b4:	0f 84 8e 00 00 00    	je     648 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 5ba:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 5bc:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 5bf:	74 c7                	je     588 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5c1:	83 ff 25             	cmp    $0x25,%edi
 5c4:	75 e5                	jne    5ab <printf+0x4b>
      if(c == 'd'){
 5c6:	83 fa 64             	cmp    $0x64,%edx
 5c9:	0f 84 31 01 00 00    	je     700 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5cf:	25 f7 00 00 00       	and    $0xf7,%eax
 5d4:	83 f8 70             	cmp    $0x70,%eax
 5d7:	0f 84 83 00 00 00    	je     660 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5dd:	83 fa 73             	cmp    $0x73,%edx
 5e0:	0f 84 a2 00 00 00    	je     688 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5e6:	83 fa 63             	cmp    $0x63,%edx
 5e9:	0f 84 35 01 00 00    	je     724 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5ef:	83 fa 25             	cmp    $0x25,%edx
 5f2:	0f 84 e0 00 00 00    	je     6d8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5f8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5fb:	83 c3 01             	add    $0x1,%ebx
 5fe:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 605:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 606:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 608:	89 44 24 04          	mov    %eax,0x4(%esp)
 60c:	89 34 24             	mov    %esi,(%esp)
 60f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 612:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 616:	e8 17 fe ff ff       	call   432 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 61b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 61e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 621:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 628:	00 
 629:	89 44 24 04          	mov    %eax,0x4(%esp)
 62d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 630:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 633:	e8 fa fd ff ff       	call   432 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 638:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 63c:	84 d2                	test   %dl,%dl
 63e:	0f 85 76 ff ff ff    	jne    5ba <printf+0x5a>
 644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 648:	83 c4 3c             	add    $0x3c,%esp
 64b:	5b                   	pop    %ebx
 64c:	5e                   	pop    %esi
 64d:	5f                   	pop    %edi
 64e:	5d                   	pop    %ebp
 64f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 650:	bf 25 00 00 00       	mov    $0x25,%edi
 655:	e9 51 ff ff ff       	jmp    5ab <printf+0x4b>
 65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 660:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 663:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 668:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 66a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 671:	8b 10                	mov    (%eax),%edx
 673:	89 f0                	mov    %esi,%eax
 675:	e8 46 fe ff ff       	call   4c0 <printint>
        ap++;
 67a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 67e:	e9 28 ff ff ff       	jmp    5ab <printf+0x4b>
 683:	90                   	nop
 684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 688:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 68b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 68f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 691:	b8 e3 08 00 00       	mov    $0x8e3,%eax
 696:	85 ff                	test   %edi,%edi
 698:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 69b:	0f b6 07             	movzbl (%edi),%eax
 69e:	84 c0                	test   %al,%al
 6a0:	74 2a                	je     6cc <printf+0x16c>
 6a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6a8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6ab:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 6ae:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6b8:	00 
 6b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 6bd:	89 34 24             	mov    %esi,(%esp)
 6c0:	e8 6d fd ff ff       	call   432 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 6c5:	0f b6 07             	movzbl (%edi),%eax
 6c8:	84 c0                	test   %al,%al
 6ca:	75 dc                	jne    6a8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6cc:	31 ff                	xor    %edi,%edi
 6ce:	e9 d8 fe ff ff       	jmp    5ab <printf+0x4b>
 6d3:	90                   	nop
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6d8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6db:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6dd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6e4:	00 
 6e5:	89 44 24 04          	mov    %eax,0x4(%esp)
 6e9:	89 34 24             	mov    %esi,(%esp)
 6ec:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 6f0:	e8 3d fd ff ff       	call   432 <write>
 6f5:	e9 b1 fe ff ff       	jmp    5ab <printf+0x4b>
 6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 700:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 703:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 708:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 70b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 712:	8b 10                	mov    (%eax),%edx
 714:	89 f0                	mov    %esi,%eax
 716:	e8 a5 fd ff ff       	call   4c0 <printint>
        ap++;
 71b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 71f:	e9 87 fe ff ff       	jmp    5ab <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 724:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 727:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 729:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 72b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 732:	00 
 733:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 736:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 739:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 73c:	89 44 24 04          	mov    %eax,0x4(%esp)
 740:	e8 ed fc ff ff       	call   432 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 745:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 749:	e9 5d fe ff ff       	jmp    5ab <printf+0x4b>
 74e:	66 90                	xchg   %ax,%ax

00000750 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 750:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 751:	a1 9c 0b 00 00       	mov    0xb9c,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 756:	89 e5                	mov    %esp,%ebp
 758:	57                   	push   %edi
 759:	56                   	push   %esi
 75a:	53                   	push   %ebx
 75b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 75e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 760:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 763:	39 d0                	cmp    %edx,%eax
 765:	72 11                	jb     778 <free+0x28>
 767:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 768:	39 c8                	cmp    %ecx,%eax
 76a:	72 04                	jb     770 <free+0x20>
 76c:	39 ca                	cmp    %ecx,%edx
 76e:	72 10                	jb     780 <free+0x30>
 770:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 772:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 774:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 776:	73 f0                	jae    768 <free+0x18>
 778:	39 ca                	cmp    %ecx,%edx
 77a:	72 04                	jb     780 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 77c:	39 c8                	cmp    %ecx,%eax
 77e:	72 f0                	jb     770 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 780:	8b 73 fc             	mov    -0x4(%ebx),%esi
 783:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 786:	39 cf                	cmp    %ecx,%edi
 788:	74 1e                	je     7a8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 78a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 78d:	8b 48 04             	mov    0x4(%eax),%ecx
 790:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 793:	39 f2                	cmp    %esi,%edx
 795:	74 28                	je     7bf <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 797:	89 10                	mov    %edx,(%eax)
  freep = p;
 799:	a3 9c 0b 00 00       	mov    %eax,0xb9c
}
 79e:	5b                   	pop    %ebx
 79f:	5e                   	pop    %esi
 7a0:	5f                   	pop    %edi
 7a1:	5d                   	pop    %ebp
 7a2:	c3                   	ret    
 7a3:	90                   	nop
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 7a8:	03 71 04             	add    0x4(%ecx),%esi
 7ab:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7ae:	8b 08                	mov    (%eax),%ecx
 7b0:	8b 09                	mov    (%ecx),%ecx
 7b2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7b5:	8b 48 04             	mov    0x4(%eax),%ecx
 7b8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 7bb:	39 f2                	cmp    %esi,%edx
 7bd:	75 d8                	jne    797 <free+0x47>
    p->s.size += bp->s.size;
 7bf:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 7c2:	a3 9c 0b 00 00       	mov    %eax,0xb9c
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 7c7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 7ca:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7cd:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7cf:	5b                   	pop    %ebx
 7d0:	5e                   	pop    %esi
 7d1:	5f                   	pop    %edi
 7d2:	5d                   	pop    %ebp
 7d3:	c3                   	ret    
 7d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 7da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000007e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7ec:	8b 1d 9c 0b 00 00    	mov    0xb9c,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f2:	8d 48 07             	lea    0x7(%eax),%ecx
 7f5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 7f8:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7fa:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 7fd:	0f 84 9b 00 00 00    	je     89e <malloc+0xbe>
 803:	8b 13                	mov    (%ebx),%edx
 805:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 808:	39 fe                	cmp    %edi,%esi
 80a:	76 64                	jbe    870 <malloc+0x90>
 80c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 813:	bb 00 80 00 00       	mov    $0x8000,%ebx
 818:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 81b:	eb 0e                	jmp    82b <malloc+0x4b>
 81d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 820:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 822:	8b 78 04             	mov    0x4(%eax),%edi
 825:	39 fe                	cmp    %edi,%esi
 827:	76 4f                	jbe    878 <malloc+0x98>
 829:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 82b:	3b 15 9c 0b 00 00    	cmp    0xb9c,%edx
 831:	75 ed                	jne    820 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 833:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 836:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 83c:	bf 00 10 00 00       	mov    $0x1000,%edi
 841:	0f 43 fe             	cmovae %esi,%edi
 844:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 847:	89 04 24             	mov    %eax,(%esp)
 84a:	e8 4b fc ff ff       	call   49a <sbrk>
  if(p == (char*)-1)
 84f:	83 f8 ff             	cmp    $0xffffffff,%eax
 852:	74 18                	je     86c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 854:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 857:	83 c0 08             	add    $0x8,%eax
 85a:	89 04 24             	mov    %eax,(%esp)
 85d:	e8 ee fe ff ff       	call   750 <free>
  return freep;
 862:	8b 15 9c 0b 00 00    	mov    0xb9c,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 868:	85 d2                	test   %edx,%edx
 86a:	75 b4                	jne    820 <malloc+0x40>
        return 0;
 86c:	31 c0                	xor    %eax,%eax
 86e:	eb 20                	jmp    890 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 870:	89 d0                	mov    %edx,%eax
 872:	89 da                	mov    %ebx,%edx
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 878:	39 fe                	cmp    %edi,%esi
 87a:	74 1c                	je     898 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 87c:	29 f7                	sub    %esi,%edi
 87e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 881:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 884:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 887:	89 15 9c 0b 00 00    	mov    %edx,0xb9c
      return (void*)(p + 1);
 88d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 890:	83 c4 1c             	add    $0x1c,%esp
 893:	5b                   	pop    %ebx
 894:	5e                   	pop    %esi
 895:	5f                   	pop    %edi
 896:	5d                   	pop    %ebp
 897:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 898:	8b 08                	mov    (%eax),%ecx
 89a:	89 0a                	mov    %ecx,(%edx)
 89c:	eb e9                	jmp    887 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 89e:	c7 05 9c 0b 00 00 a0 	movl   $0xba0,0xb9c
 8a5:	0b 00 00 
    base.s.size = 0;
 8a8:	ba a0 0b 00 00       	mov    $0xba0,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 8ad:	c7 05 a0 0b 00 00 a0 	movl   $0xba0,0xba0
 8b4:	0b 00 00 
    base.s.size = 0;
 8b7:	c7 05 a4 0b 00 00 00 	movl   $0x0,0xba4
 8be:	00 00 00 
 8c1:	e9 46 ff ff ff       	jmp    80c <malloc+0x2c>
