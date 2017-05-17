
_test_sch:     file format elf32-i386


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
  15:	e8 56 03 00 00       	call   370 <atoi>
  1a:	89 c7                	mov    %eax,%edi
	maxp_time=atoi(argv[2]);
  1c:	8b 43 08             	mov    0x8(%ebx),%eax
  1f:	89 04 24             	mov    %eax,(%esp)
  22:	e8 49 03 00 00       	call   370 <atoi>
  27:	89 c6                	mov    %eax,%esi
	minp_runtime=atoi(argv[3]);
  29:	8b 43 0c             	mov    0xc(%ebx),%eax
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
  2c:	29 fe                	sub    %edi,%esi
	int i;

	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
  2e:	89 04 24             	mov    %eax,(%esp)
  31:	e8 3a 03 00 00       	call   370 <atoi>
  36:	89 44 24 14          	mov    %eax,0x14(%esp)
	maxp_runtime=atoi(argv[4]);
  3a:	8b 43 10             	mov    0x10(%ebx),%eax
  3d:	89 04 24             	mov    %eax,(%esp)
  40:	e8 2b 03 00 00       	call   370 <atoi>
  45:	89 44 24 10          	mov    %eax,0x10(%esp)
	maxnum_processes=atoi(argv[5]);
  49:	8b 43 14             	mov    0x14(%ebx),%eax
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  4c:	31 db                	xor    %ebx,%ebx
	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
  4e:	89 04 24             	mov    %eax,(%esp)
  51:	e8 1a 03 00 00       	call   370 <atoi>
  56:	89 44 24 1c          	mov    %eax,0x1c(%esp)
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
  5a:	e8 1b 04 00 00       	call   47a <uptime>
	int inittime=(minp_time+random(maxp_time-minp_time));
  5f:	89 34 24             	mov    %esi,(%esp)
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
  62:	89 44 24 18          	mov    %eax,0x18(%esp)
	int inittime=(minp_time+random(maxp_time-minp_time));
  66:	e8 17 04 00 00       	call   482 <random>
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
  6b:	ba 89 88 88 88       	mov    $0x88888889,%edx
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
  70:	8d 0c 38             	lea    (%eax,%edi,1),%ecx
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
  73:	69 c9 e8 03 00 00    	imul   $0x3e8,%ecx,%ecx
  79:	89 c8                	mov    %ecx,%eax
  7b:	f7 ea                	imul   %edx
  7d:	01 ca                	add    %ecx,%edx
  7f:	c1 fa 03             	sar    $0x3,%edx
  82:	c1 f9 1f             	sar    $0x1f,%ecx
  85:	29 ca                	sub    %ecx,%edx
  87:	89 14 24             	mov    %edx,(%esp)
  8a:	e8 e3 03 00 00       	call   472 <sleep>
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  8f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  93:	85 c0                	test   %eax,%eax
  95:	7e 49                	jle    e0 <main+0xe0>
  97:	90                   	nop
				
		int pid=fork();
  98:	e8 3d 03 00 00       	call   3da <fork>
		if(pid < 0){
  9d:	85 c0                	test   %eax,%eax
  9f:	0f 88 8a 00 00 00    	js     12f <main+0x12f>
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
  a5:	0f 84 9d 00 00 00    	je     148 <main+0x148>
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			int sleeptime=(minp_time+random(maxp_time-minp_time));	
  ab:	89 34 24             	mov    %esi,(%esp)
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  ae:	83 c3 01             	add    $0x1,%ebx
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			int sleeptime=(minp_time+random(maxp_time-minp_time));	
  b1:	e8 cc 03 00 00       	call   482 <random>
  b6:	8d 0c 38             	lea    (%eax,%edi,1),%ecx
			//printf(1,"parent sleeptime=%d\n",sleeptime);						//PARENT SLEEPTIME (time btw process generation)
			sleep((int)(1000*sleeptime/15));	
  b9:	b8 89 88 88 88       	mov    $0x88888889,%eax
  be:	69 c9 e8 03 00 00    	imul   $0x3e8,%ecx,%ecx
  c4:	f7 e9                	imul   %ecx
  c6:	01 ca                	add    %ecx,%edx
  c8:	c1 fa 03             	sar    $0x3,%edx
  cb:	c1 f9 1f             	sar    $0x1f,%ecx
  ce:	29 ca                	sub    %ecx,%edx
  d0:	89 14 24             	mov    %edx,(%esp)
  d3:	e8 9a 03 00 00       	call   472 <sleep>
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
  d8:	3b 5c 24 1c          	cmp    0x1c(%esp),%ebx
  dc:	75 ba                	jne    98 <main+0x98>
  de:	66 90                	xchg   %ax,%ax
	}
/*	for(i=0;i<maxnum_processes;i++)					//instead of wait in the parent, let the parent sleep for required time and use this loop
	{
	wait();		
	}*/
	while(wait()>0);	//busy wait as long as there remain children
  e0:	e8 05 03 00 00       	call   3ea <wait>
  e5:	85 c0                	test   %eax,%eax
  e7:	7f f7                	jg     e0 <main+0xe0>
	int final_ticks=uptime();
  e9:	e8 8c 03 00 00       	call   47a <uptime>
	printf(1,"Total execution time in seconds = %d\n",15*(final_ticks-init_ticks)/1000);
  ee:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  f3:	c7 44 24 04 e0 08 00 	movl   $0x8e0,0x4(%esp)
  fa:	00 
  fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 102:	2b 44 24 18          	sub    0x18(%esp),%eax
 106:	89 c1                	mov    %eax,%ecx
 108:	c1 e1 04             	shl    $0x4,%ecx
 10b:	29 c1                	sub    %eax,%ecx
 10d:	89 c8                	mov    %ecx,%eax
 10f:	f7 ea                	imul   %edx
 111:	c1 f9 1f             	sar    $0x1f,%ecx
 114:	c1 fa 06             	sar    $0x6,%edx
 117:	29 ca                	sub    %ecx,%edx
 119:	89 54 24 08          	mov    %edx,0x8(%esp)
 11d:	e8 2e 04 00 00       	call   550 <printf>
	return 1;

}
 122:	8d 65 f4             	lea    -0xc(%ebp),%esp
 125:	b8 01 00 00 00       	mov    $0x1,%eax
 12a:	5b                   	pop    %ebx
 12b:	5e                   	pop    %esi
 12c:	5f                   	pop    %edi
 12d:	5d                   	pop    %ebp
 12e:	c3                   	ret    
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
				
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
 12f:	c7 44 24 04 c0 08 00 	movl   $0x8c0,0x4(%esp)
 136:	00 
 137:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13e:	e8 0d 04 00 00       	call   550 <printf>
    	  exit();
 143:	e8 9a 02 00 00       	call   3e2 <exit>
     	}
		 if(pid == 0){
			int runtime=(minp_runtime+random(maxp_runtime-minp_runtime));
 148:	8b 74 24 14          	mov    0x14(%esp),%esi
 14c:	8b 44 24 10          	mov    0x10(%esp),%eax
 150:	29 f0                	sub    %esi,%eax
 152:	89 04 24             	mov    %eax,(%esp)
 155:	e8 28 03 00 00       	call   482 <random>
			//printf(1,"runtime=%d\n",runtime);									//CHILD RUNTIME PRINT
			sleep((int)(1000*runtime/15)); //sleep for a randomly chosen runtime
 15a:	b9 0f 00 00 00       	mov    $0xf,%ecx
		if(pid < 0){
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
			int runtime=(minp_runtime+random(maxp_runtime-minp_runtime));
 15f:	01 f0                	add    %esi,%eax
			//printf(1,"runtime=%d\n",runtime);									//CHILD RUNTIME PRINT
			sleep((int)(1000*runtime/15)); //sleep for a randomly chosen runtime
 161:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
 167:	99                   	cltd   
 168:	f7 f9                	idiv   %ecx
 16a:	89 04 24             	mov    %eax,(%esp)
 16d:	e8 00 03 00 00       	call   472 <sleep>
			//exec("sleep_sec", list);
				//printf(1, "init: exec sleep_sec failed\n");
			printf(1,"Child %d \n",getpid());					
 172:	e8 eb 02 00 00       	call   462 <getpid>
 177:	c7 44 24 04 d3 08 00 	movl   $0x8d3,0x4(%esp)
 17e:	00 
 17f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 186:	89 44 24 08          	mov    %eax,0x8(%esp)
 18a:	e8 c1 03 00 00       	call   550 <printf>
		   exit();
 18f:	e8 4e 02 00 00       	call   3e2 <exit>
 194:	66 90                	xchg   %ax,%ax
 196:	66 90                	xchg   %ax,%ax
 198:	66 90                	xchg   %ax,%ax
 19a:	66 90                	xchg   %ax,%ax
 19c:	66 90                	xchg   %ax,%ax
 19e:	66 90                	xchg   %ax,%ax

000001a0 <strcpy>:
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	53                   	push   %ebx
 1a4:	8b 45 08             	mov    0x8(%ebp),%eax
 1a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1aa:	89 c2                	mov    %eax,%edx
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1b0:	83 c1 01             	add    $0x1,%ecx
 1b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1b7:	83 c2 01             	add    $0x1,%edx
 1ba:	84 db                	test   %bl,%bl
 1bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1bf:	75 ef                	jne    1b0 <strcpy+0x10>
 1c1:	5b                   	pop    %ebx
 1c2:	5d                   	pop    %ebp
 1c3:	c3                   	ret    
 1c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001d0 <strcmp>:
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	56                   	push   %esi
 1d4:	53                   	push   %ebx
 1d5:	8b 55 08             	mov    0x8(%ebp),%edx
 1d8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 1db:	0f b6 02             	movzbl (%edx),%eax
 1de:	0f b6 19             	movzbl (%ecx),%ebx
 1e1:	84 c0                	test   %al,%al
 1e3:	75 1e                	jne    203 <strcmp+0x33>
 1e5:	eb 29                	jmp    210 <strcmp+0x40>
 1e7:	89 f6                	mov    %esi,%esi
 1e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 1f0:	83 c2 01             	add    $0x1,%edx
 1f3:	0f b6 02             	movzbl (%edx),%eax
 1f6:	8d 71 01             	lea    0x1(%ecx),%esi
 1f9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1fd:	84 c0                	test   %al,%al
 1ff:	74 0f                	je     210 <strcmp+0x40>
 201:	89 f1                	mov    %esi,%ecx
 203:	38 d8                	cmp    %bl,%al
 205:	74 e9                	je     1f0 <strcmp+0x20>
 207:	29 d8                	sub    %ebx,%eax
 209:	5b                   	pop    %ebx
 20a:	5e                   	pop    %esi
 20b:	5d                   	pop    %ebp
 20c:	c3                   	ret    
 20d:	8d 76 00             	lea    0x0(%esi),%esi
 210:	31 c0                	xor    %eax,%eax
 212:	29 d8                	sub    %ebx,%eax
 214:	5b                   	pop    %ebx
 215:	5e                   	pop    %esi
 216:	5d                   	pop    %ebp
 217:	c3                   	ret    
 218:	90                   	nop
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000220 <strlen>:
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 4d 08             	mov    0x8(%ebp),%ecx
 226:	80 39 00             	cmpb   $0x0,(%ecx)
 229:	74 12                	je     23d <strlen+0x1d>
 22b:	31 d2                	xor    %edx,%edx
 22d:	8d 76 00             	lea    0x0(%esi),%esi
 230:	83 c2 01             	add    $0x1,%edx
 233:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 237:	89 d0                	mov    %edx,%eax
 239:	75 f5                	jne    230 <strlen+0x10>
 23b:	5d                   	pop    %ebp
 23c:	c3                   	ret    
 23d:	31 c0                	xor    %eax,%eax
 23f:	5d                   	pop    %ebp
 240:	c3                   	ret    
 241:	eb 0d                	jmp    250 <memset>
 243:	90                   	nop
 244:	90                   	nop
 245:	90                   	nop
 246:	90                   	nop
 247:	90                   	nop
 248:	90                   	nop
 249:	90                   	nop
 24a:	90                   	nop
 24b:	90                   	nop
 24c:	90                   	nop
 24d:	90                   	nop
 24e:	90                   	nop
 24f:	90                   	nop

00000250 <memset>:
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	8b 55 08             	mov    0x8(%ebp),%edx
 257:	8b 4d 10             	mov    0x10(%ebp),%ecx
 25a:	8b 45 0c             	mov    0xc(%ebp),%eax
 25d:	89 d7                	mov    %edx,%edi
 25f:	fc                   	cld    
 260:	f3 aa                	rep stos %al,%es:(%edi)
 262:	89 d0                	mov    %edx,%eax
 264:	5f                   	pop    %edi
 265:	5d                   	pop    %ebp
 266:	c3                   	ret    
 267:	89 f6                	mov    %esi,%esi
 269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000270 <strchr>:
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 45 08             	mov    0x8(%ebp),%eax
 277:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 27a:	0f b6 10             	movzbl (%eax),%edx
 27d:	84 d2                	test   %dl,%dl
 27f:	74 1d                	je     29e <strchr+0x2e>
 281:	38 d3                	cmp    %dl,%bl
 283:	89 d9                	mov    %ebx,%ecx
 285:	75 0d                	jne    294 <strchr+0x24>
 287:	eb 17                	jmp    2a0 <strchr+0x30>
 289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 290:	38 ca                	cmp    %cl,%dl
 292:	74 0c                	je     2a0 <strchr+0x30>
 294:	83 c0 01             	add    $0x1,%eax
 297:	0f b6 10             	movzbl (%eax),%edx
 29a:	84 d2                	test   %dl,%dl
 29c:	75 f2                	jne    290 <strchr+0x20>
 29e:	31 c0                	xor    %eax,%eax
 2a0:	5b                   	pop    %ebx
 2a1:	5d                   	pop    %ebp
 2a2:	c3                   	ret    
 2a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002b0 <gets>:
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
 2b5:	53                   	push   %ebx
 2b6:	31 f6                	xor    %esi,%esi
 2b8:	8d 7d e7             	lea    -0x19(%ebp),%edi
 2bb:	83 ec 1c             	sub    $0x1c,%esp
 2be:	eb 29                	jmp    2e9 <gets+0x39>
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	6a 01                	push   $0x1
 2c5:	57                   	push   %edi
 2c6:	6a 00                	push   $0x0
 2c8:	e8 2d 01 00 00       	call   3fa <read>
 2cd:	83 c4 10             	add    $0x10,%esp
 2d0:	85 c0                	test   %eax,%eax
 2d2:	7e 1d                	jle    2f1 <gets+0x41>
 2d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2d8:	8b 55 08             	mov    0x8(%ebp),%edx
 2db:	89 de                	mov    %ebx,%esi
 2dd:	3c 0a                	cmp    $0xa,%al
 2df:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 2e3:	74 1b                	je     300 <gets+0x50>
 2e5:	3c 0d                	cmp    $0xd,%al
 2e7:	74 17                	je     300 <gets+0x50>
 2e9:	8d 5e 01             	lea    0x1(%esi),%ebx
 2ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ef:	7c cf                	jl     2c0 <gets+0x10>
 2f1:	8b 45 08             	mov    0x8(%ebp),%eax
 2f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 2f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fb:	5b                   	pop    %ebx
 2fc:	5e                   	pop    %esi
 2fd:	5f                   	pop    %edi
 2fe:	5d                   	pop    %ebp
 2ff:	c3                   	ret    
 300:	8b 45 08             	mov    0x8(%ebp),%eax
 303:	89 de                	mov    %ebx,%esi
 305:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 309:	8d 65 f4             	lea    -0xc(%ebp),%esp
 30c:	5b                   	pop    %ebx
 30d:	5e                   	pop    %esi
 30e:	5f                   	pop    %edi
 30f:	5d                   	pop    %ebp
 310:	c3                   	ret    
 311:	eb 0d                	jmp    320 <stat>
 313:	90                   	nop
 314:	90                   	nop
 315:	90                   	nop
 316:	90                   	nop
 317:	90                   	nop
 318:	90                   	nop
 319:	90                   	nop
 31a:	90                   	nop
 31b:	90                   	nop
 31c:	90                   	nop
 31d:	90                   	nop
 31e:	90                   	nop
 31f:	90                   	nop

00000320 <stat>:
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	56                   	push   %esi
 324:	53                   	push   %ebx
 325:	83 ec 08             	sub    $0x8,%esp
 328:	6a 00                	push   $0x0
 32a:	ff 75 08             	pushl  0x8(%ebp)
 32d:	e8 f0 00 00 00       	call   422 <open>
 332:	83 c4 10             	add    $0x10,%esp
 335:	85 c0                	test   %eax,%eax
 337:	78 27                	js     360 <stat+0x40>
 339:	83 ec 08             	sub    $0x8,%esp
 33c:	ff 75 0c             	pushl  0xc(%ebp)
 33f:	89 c3                	mov    %eax,%ebx
 341:	50                   	push   %eax
 342:	e8 f3 00 00 00       	call   43a <fstat>
 347:	89 c6                	mov    %eax,%esi
 349:	89 1c 24             	mov    %ebx,(%esp)
 34c:	e8 b9 00 00 00       	call   40a <close>
 351:	83 c4 10             	add    $0x10,%esp
 354:	89 f0                	mov    %esi,%eax
 356:	8d 65 f8             	lea    -0x8(%ebp),%esp
 359:	5b                   	pop    %ebx
 35a:	5e                   	pop    %esi
 35b:	5d                   	pop    %ebp
 35c:	c3                   	ret    
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 365:	eb ef                	jmp    356 <stat+0x36>
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000370 <atoi>:
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 4d 08             	mov    0x8(%ebp),%ecx
 377:	0f be 11             	movsbl (%ecx),%edx
 37a:	8d 42 d0             	lea    -0x30(%edx),%eax
 37d:	3c 09                	cmp    $0x9,%al
 37f:	b8 00 00 00 00       	mov    $0x0,%eax
 384:	77 1f                	ja     3a5 <atoi+0x35>
 386:	8d 76 00             	lea    0x0(%esi),%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 390:	8d 04 80             	lea    (%eax,%eax,4),%eax
 393:	83 c1 01             	add    $0x1,%ecx
 396:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 39a:	0f be 11             	movsbl (%ecx),%edx
 39d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3a0:	80 fb 09             	cmp    $0x9,%bl
 3a3:	76 eb                	jbe    390 <atoi+0x20>
 3a5:	5b                   	pop    %ebx
 3a6:	5d                   	pop    %ebp
 3a7:	c3                   	ret    
 3a8:	90                   	nop
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003b0 <memmove>:
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	56                   	push   %esi
 3b4:	53                   	push   %ebx
 3b5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3b8:	8b 45 08             	mov    0x8(%ebp),%eax
 3bb:	8b 75 0c             	mov    0xc(%ebp),%esi
 3be:	85 db                	test   %ebx,%ebx
 3c0:	7e 14                	jle    3d6 <memmove+0x26>
 3c2:	31 d2                	xor    %edx,%edx
 3c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3cf:	83 c2 01             	add    $0x1,%edx
 3d2:	39 da                	cmp    %ebx,%edx
 3d4:	75 f2                	jne    3c8 <memmove+0x18>
 3d6:	5b                   	pop    %ebx
 3d7:	5e                   	pop    %esi
 3d8:	5d                   	pop    %ebp
 3d9:	c3                   	ret    

000003da <fork>:
 3da:	b8 01 00 00 00       	mov    $0x1,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <exit>:
 3e2:	b8 02 00 00 00       	mov    $0x2,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <wait>:
 3ea:	b8 03 00 00 00       	mov    $0x3,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <pipe>:
 3f2:	b8 04 00 00 00       	mov    $0x4,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <read>:
 3fa:	b8 05 00 00 00       	mov    $0x5,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <write>:
 402:	b8 10 00 00 00       	mov    $0x10,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <close>:
 40a:	b8 15 00 00 00       	mov    $0x15,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <kill>:
 412:	b8 06 00 00 00       	mov    $0x6,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <exec>:
 41a:	b8 07 00 00 00       	mov    $0x7,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <open>:
 422:	b8 0f 00 00 00       	mov    $0xf,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <mknod>:
 42a:	b8 11 00 00 00       	mov    $0x11,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <unlink>:
 432:	b8 12 00 00 00       	mov    $0x12,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <fstat>:
 43a:	b8 08 00 00 00       	mov    $0x8,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <link>:
 442:	b8 13 00 00 00       	mov    $0x13,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <mkdir>:
 44a:	b8 14 00 00 00       	mov    $0x14,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <chdir>:
 452:	b8 09 00 00 00       	mov    $0x9,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <dup>:
 45a:	b8 0a 00 00 00       	mov    $0xa,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <getpid>:
 462:	b8 0b 00 00 00       	mov    $0xb,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <sbrk>:
 46a:	b8 0c 00 00 00       	mov    $0xc,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <sleep>:
 472:	b8 0d 00 00 00       	mov    $0xd,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <uptime>:
 47a:	b8 0e 00 00 00       	mov    $0xe,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <random>:
 482:	b8 16 00 00 00       	mov    $0x16,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <cprocstate>:
 48a:	b8 18 00 00 00       	mov    $0x18,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <signalinfo>:
 492:	b8 19 00 00 00       	mov    $0x19,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <setseed>:
 49a:	b8 17 00 00 00       	mov    $0x17,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    
 4a2:	66 90                	xchg   %ax,%ax
 4a4:	66 90                	xchg   %ax,%ax
 4a6:	66 90                	xchg   %ax,%ax
 4a8:	66 90                	xchg   %ax,%ax
 4aa:	66 90                	xchg   %ax,%ax
 4ac:	66 90                	xchg   %ax,%ax
 4ae:	66 90                	xchg   %ax,%ax

000004b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	56                   	push   %esi
 4b5:	89 c6                	mov    %eax,%esi
 4b7:	53                   	push   %ebx
 4b8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 4bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4be:	85 db                	test   %ebx,%ebx
 4c0:	74 09                	je     4cb <printint+0x1b>
 4c2:	89 d0                	mov    %edx,%eax
 4c4:	c1 e8 1f             	shr    $0x1f,%eax
 4c7:	84 c0                	test   %al,%al
 4c9:	75 75                	jne    540 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4cb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 4cd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4d4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 4d7:	31 ff                	xor    %edi,%edi
 4d9:	89 ce                	mov    %ecx,%esi
 4db:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4de:	eb 02                	jmp    4e2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 4e0:	89 cf                	mov    %ecx,%edi
 4e2:	31 d2                	xor    %edx,%edx
 4e4:	f7 f6                	div    %esi
 4e6:	8d 4f 01             	lea    0x1(%edi),%ecx
 4e9:	0f b6 92 0f 09 00 00 	movzbl 0x90f(%edx),%edx
  }while((x /= base) != 0);
 4f0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4f2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 4f5:	75 e9                	jne    4e0 <printint+0x30>
  if(neg)
 4f7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4fa:	89 c8                	mov    %ecx,%eax
 4fc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 4ff:	85 d2                	test   %edx,%edx
 501:	74 08                	je     50b <printint+0x5b>
    buf[i++] = '-';
 503:	8d 4f 02             	lea    0x2(%edi),%ecx
 506:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 50b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 50e:	66 90                	xchg   %ax,%ax
 510:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 515:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 518:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 51f:	00 
 520:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 524:	89 34 24             	mov    %esi,(%esp)
 527:	88 45 d7             	mov    %al,-0x29(%ebp)
 52a:	e8 d3 fe ff ff       	call   402 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 52f:	83 ff ff             	cmp    $0xffffffff,%edi
 532:	75 dc                	jne    510 <printint+0x60>
    putc(fd, buf[i]);
}
 534:	83 c4 4c             	add    $0x4c,%esp
 537:	5b                   	pop    %ebx
 538:	5e                   	pop    %esi
 539:	5f                   	pop    %edi
 53a:	5d                   	pop    %ebp
 53b:	c3                   	ret    
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 540:	89 d0                	mov    %edx,%eax
 542:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 544:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 54b:	eb 87                	jmp    4d4 <printint+0x24>
 54d:	8d 76 00             	lea    0x0(%esi),%esi

00000550 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 554:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 556:	56                   	push   %esi
 557:	53                   	push   %ebx
 558:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 55b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 55e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 561:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 564:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 567:	0f b6 13             	movzbl (%ebx),%edx
 56a:	83 c3 01             	add    $0x1,%ebx
 56d:	84 d2                	test   %dl,%dl
 56f:	75 39                	jne    5aa <printf+0x5a>
 571:	e9 c2 00 00 00       	jmp    638 <printf+0xe8>
 576:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 578:	83 fa 25             	cmp    $0x25,%edx
 57b:	0f 84 bf 00 00 00    	je     640 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 581:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 584:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 58b:	00 
 58c:	89 44 24 04          	mov    %eax,0x4(%esp)
 590:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 593:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 596:	e8 67 fe ff ff       	call   402 <write>
 59b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 59e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5a2:	84 d2                	test   %dl,%dl
 5a4:	0f 84 8e 00 00 00    	je     638 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 5aa:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 5ac:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 5af:	74 c7                	je     578 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5b1:	83 ff 25             	cmp    $0x25,%edi
 5b4:	75 e5                	jne    59b <printf+0x4b>
      if(c == 'd'){
 5b6:	83 fa 64             	cmp    $0x64,%edx
 5b9:	0f 84 31 01 00 00    	je     6f0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5bf:	25 f7 00 00 00       	and    $0xf7,%eax
 5c4:	83 f8 70             	cmp    $0x70,%eax
 5c7:	0f 84 83 00 00 00    	je     650 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5cd:	83 fa 73             	cmp    $0x73,%edx
 5d0:	0f 84 a2 00 00 00    	je     678 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5d6:	83 fa 63             	cmp    $0x63,%edx
 5d9:	0f 84 35 01 00 00    	je     714 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5df:	83 fa 25             	cmp    $0x25,%edx
 5e2:	0f 84 e0 00 00 00    	je     6c8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5e8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5eb:	83 c3 01             	add    $0x1,%ebx
 5ee:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5f5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5f6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 5fc:	89 34 24             	mov    %esi,(%esp)
 5ff:	89 55 d0             	mov    %edx,-0x30(%ebp)
 602:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 606:	e8 f7 fd ff ff       	call   402 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 60b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 60e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 611:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 618:	00 
 619:	89 44 24 04          	mov    %eax,0x4(%esp)
 61d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 620:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 623:	e8 da fd ff ff       	call   402 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 628:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 62c:	84 d2                	test   %dl,%dl
 62e:	0f 85 76 ff ff ff    	jne    5aa <printf+0x5a>
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 638:	83 c4 3c             	add    $0x3c,%esp
 63b:	5b                   	pop    %ebx
 63c:	5e                   	pop    %esi
 63d:	5f                   	pop    %edi
 63e:	5d                   	pop    %ebp
 63f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 640:	bf 25 00 00 00       	mov    $0x25,%edi
 645:	e9 51 ff ff ff       	jmp    59b <printf+0x4b>
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 650:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 653:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 658:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 65a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 661:	8b 10                	mov    (%eax),%edx
 663:	89 f0                	mov    %esi,%eax
 665:	e8 46 fe ff ff       	call   4b0 <printint>
        ap++;
 66a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 66e:	e9 28 ff ff ff       	jmp    59b <printf+0x4b>
 673:	90                   	nop
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 678:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 67b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 67f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 681:	b8 08 09 00 00       	mov    $0x908,%eax
 686:	85 ff                	test   %edi,%edi
 688:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 68b:	0f b6 07             	movzbl (%edi),%eax
 68e:	84 c0                	test   %al,%al
 690:	74 2a                	je     6bc <printf+0x16c>
 692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 698:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 69b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 69e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6a1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6a8:	00 
 6a9:	89 44 24 04          	mov    %eax,0x4(%esp)
 6ad:	89 34 24             	mov    %esi,(%esp)
 6b0:	e8 4d fd ff ff       	call   402 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 6b5:	0f b6 07             	movzbl (%edi),%eax
 6b8:	84 c0                	test   %al,%al
 6ba:	75 dc                	jne    698 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6bc:	31 ff                	xor    %edi,%edi
 6be:	e9 d8 fe ff ff       	jmp    59b <printf+0x4b>
 6c3:	90                   	nop
 6c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6c8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6cb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6cd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6d4:	00 
 6d5:	89 44 24 04          	mov    %eax,0x4(%esp)
 6d9:	89 34 24             	mov    %esi,(%esp)
 6dc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 6e0:	e8 1d fd ff ff       	call   402 <write>
 6e5:	e9 b1 fe ff ff       	jmp    59b <printf+0x4b>
 6ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 6f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 6f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6f8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 6fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 702:	8b 10                	mov    (%eax),%edx
 704:	89 f0                	mov    %esi,%eax
 706:	e8 a5 fd ff ff       	call   4b0 <printint>
        ap++;
 70b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 70f:	e9 87 fe ff ff       	jmp    59b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 714:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 717:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 719:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 71b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 722:	00 
 723:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 726:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 729:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 72c:	89 44 24 04          	mov    %eax,0x4(%esp)
 730:	e8 cd fc ff ff       	call   402 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 735:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 739:	e9 5d fe ff ff       	jmp    59b <printf+0x4b>
 73e:	66 90                	xchg   %ax,%ax

00000740 <free>:
 740:	55                   	push   %ebp
 741:	a1 b0 0b 00 00       	mov    0xbb0,%eax
 746:	89 e5                	mov    %esp,%ebp
 748:	57                   	push   %edi
 749:	56                   	push   %esi
 74a:	53                   	push   %ebx
 74b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 74e:	8b 10                	mov    (%eax),%edx
 750:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 753:	39 c8                	cmp    %ecx,%eax
 755:	73 19                	jae    770 <free+0x30>
 757:	89 f6                	mov    %esi,%esi
 759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 760:	39 d1                	cmp    %edx,%ecx
 762:	72 1c                	jb     780 <free+0x40>
 764:	39 d0                	cmp    %edx,%eax
 766:	73 18                	jae    780 <free+0x40>
 768:	89 d0                	mov    %edx,%eax
 76a:	39 c8                	cmp    %ecx,%eax
 76c:	8b 10                	mov    (%eax),%edx
 76e:	72 f0                	jb     760 <free+0x20>
 770:	39 d0                	cmp    %edx,%eax
 772:	72 f4                	jb     768 <free+0x28>
 774:	39 d1                	cmp    %edx,%ecx
 776:	73 f0                	jae    768 <free+0x28>
 778:	90                   	nop
 779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 780:	8b 73 fc             	mov    -0x4(%ebx),%esi
 783:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 786:	39 d7                	cmp    %edx,%edi
 788:	74 19                	je     7a3 <free+0x63>
 78a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 78d:	8b 50 04             	mov    0x4(%eax),%edx
 790:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 793:	39 f1                	cmp    %esi,%ecx
 795:	74 23                	je     7ba <free+0x7a>
 797:	89 08                	mov    %ecx,(%eax)
 799:	a3 b0 0b 00 00       	mov    %eax,0xbb0
 79e:	5b                   	pop    %ebx
 79f:	5e                   	pop    %esi
 7a0:	5f                   	pop    %edi
 7a1:	5d                   	pop    %ebp
 7a2:	c3                   	ret    
 7a3:	03 72 04             	add    0x4(%edx),%esi
 7a6:	89 73 fc             	mov    %esi,-0x4(%ebx)
 7a9:	8b 10                	mov    (%eax),%edx
 7ab:	8b 12                	mov    (%edx),%edx
 7ad:	89 53 f8             	mov    %edx,-0x8(%ebx)
 7b0:	8b 50 04             	mov    0x4(%eax),%edx
 7b3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7b6:	39 f1                	cmp    %esi,%ecx
 7b8:	75 dd                	jne    797 <free+0x57>
 7ba:	03 53 fc             	add    -0x4(%ebx),%edx
 7bd:	a3 b0 0b 00 00       	mov    %eax,0xbb0
 7c2:	89 50 04             	mov    %edx,0x4(%eax)
 7c5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7c8:	89 10                	mov    %edx,(%eax)
 7ca:	5b                   	pop    %ebx
 7cb:	5e                   	pop    %esi
 7cc:	5f                   	pop    %edi
 7cd:	5d                   	pop    %ebp
 7ce:	c3                   	ret    
 7cf:	90                   	nop

000007d0 <malloc>:
 7d0:	55                   	push   %ebp
 7d1:	89 e5                	mov    %esp,%ebp
 7d3:	57                   	push   %edi
 7d4:	56                   	push   %esi
 7d5:	53                   	push   %ebx
 7d6:	83 ec 0c             	sub    $0xc,%esp
 7d9:	8b 45 08             	mov    0x8(%ebp),%eax
 7dc:	8b 15 b0 0b 00 00    	mov    0xbb0,%edx
 7e2:	8d 78 07             	lea    0x7(%eax),%edi
 7e5:	c1 ef 03             	shr    $0x3,%edi
 7e8:	83 c7 01             	add    $0x1,%edi
 7eb:	85 d2                	test   %edx,%edx
 7ed:	0f 84 a3 00 00 00    	je     896 <malloc+0xc6>
 7f3:	8b 02                	mov    (%edx),%eax
 7f5:	8b 48 04             	mov    0x4(%eax),%ecx
 7f8:	39 cf                	cmp    %ecx,%edi
 7fa:	76 74                	jbe    870 <malloc+0xa0>
 7fc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 802:	be 00 10 00 00       	mov    $0x1000,%esi
 807:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 80e:	0f 43 f7             	cmovae %edi,%esi
 811:	ba 00 80 00 00       	mov    $0x8000,%edx
 816:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 81c:	0f 46 da             	cmovbe %edx,%ebx
 81f:	eb 10                	jmp    831 <malloc+0x61>
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 828:	8b 02                	mov    (%edx),%eax
 82a:	8b 48 04             	mov    0x4(%eax),%ecx
 82d:	39 cf                	cmp    %ecx,%edi
 82f:	76 3f                	jbe    870 <malloc+0xa0>
 831:	39 05 b0 0b 00 00    	cmp    %eax,0xbb0
 837:	89 c2                	mov    %eax,%edx
 839:	75 ed                	jne    828 <malloc+0x58>
 83b:	83 ec 0c             	sub    $0xc,%esp
 83e:	53                   	push   %ebx
 83f:	e8 26 fc ff ff       	call   46a <sbrk>
 844:	83 c4 10             	add    $0x10,%esp
 847:	83 f8 ff             	cmp    $0xffffffff,%eax
 84a:	74 1c                	je     868 <malloc+0x98>
 84c:	89 70 04             	mov    %esi,0x4(%eax)
 84f:	83 ec 0c             	sub    $0xc,%esp
 852:	83 c0 08             	add    $0x8,%eax
 855:	50                   	push   %eax
 856:	e8 e5 fe ff ff       	call   740 <free>
 85b:	8b 15 b0 0b 00 00    	mov    0xbb0,%edx
 861:	83 c4 10             	add    $0x10,%esp
 864:	85 d2                	test   %edx,%edx
 866:	75 c0                	jne    828 <malloc+0x58>
 868:	31 c0                	xor    %eax,%eax
 86a:	eb 1c                	jmp    888 <malloc+0xb8>
 86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 870:	39 cf                	cmp    %ecx,%edi
 872:	74 1c                	je     890 <malloc+0xc0>
 874:	29 f9                	sub    %edi,%ecx
 876:	89 48 04             	mov    %ecx,0x4(%eax)
 879:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 87c:	89 78 04             	mov    %edi,0x4(%eax)
 87f:	89 15 b0 0b 00 00    	mov    %edx,0xbb0
 885:	83 c0 08             	add    $0x8,%eax
 888:	8d 65 f4             	lea    -0xc(%ebp),%esp
 88b:	5b                   	pop    %ebx
 88c:	5e                   	pop    %esi
 88d:	5f                   	pop    %edi
 88e:	5d                   	pop    %ebp
 88f:	c3                   	ret    
 890:	8b 08                	mov    (%eax),%ecx
 892:	89 0a                	mov    %ecx,(%edx)
 894:	eb e9                	jmp    87f <malloc+0xaf>
 896:	c7 05 b0 0b 00 00 b4 	movl   $0xbb4,0xbb0
 89d:	0b 00 00 
 8a0:	c7 05 b4 0b 00 00 b4 	movl   $0xbb4,0xbb4
 8a7:	0b 00 00 
 8aa:	b8 b4 0b 00 00       	mov    $0xbb4,%eax
 8af:	c7 05 b8 0b 00 00 00 	movl   $0x0,0xbb8
 8b6:	00 00 00 
 8b9:	e9 3e ff ff ff       	jmp    7fc <malloc+0x2c>
