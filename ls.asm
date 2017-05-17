
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
  int i;

  if(argc < 2){
   6:	bb 01 00 00 00       	mov    $0x1,%ebx
  close(fd);
}

int
main(int argc, char *argv[])
{
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 75 08             	mov    0x8(%ebp),%esi
  14:	8b 7d 0c             	mov    0xc(%ebp),%edi
  int i;

  if(argc < 2){
  17:	83 fe 01             	cmp    $0x1,%esi
  1a:	7e 1b                	jle    37 <main+0x37>
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  20:	8b 04 9f             	mov    (%edi,%ebx,4),%eax

  if(argc < 2){
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
  23:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  26:	89 04 24             	mov    %eax,(%esp)
  29:	e8 c2 00 00 00       	call   f0 <ls>

  if(argc < 2){
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
  2e:	39 f3                	cmp    %esi,%ebx
  30:	75 ee                	jne    20 <main+0x20>
    ls(argv[i]);
  exit();
  32:	e8 8b 05 00 00       	call   5c2 <exit>
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    ls(".");
  37:	c7 04 24 e6 0a 00 00 	movl   $0xae6,(%esp)
  3e:	e8 ad 00 00 00       	call   f0 <ls>
    exit();
  43:	e8 7a 05 00 00       	call   5c2 <exit>
  48:	66 90                	xchg   %ax,%ax
  4a:	66 90                	xchg   %ax,%ax
  4c:	66 90                	xchg   %ax,%ax
  4e:	66 90                	xchg   %ax,%ax

00000050 <fmtname>:
#include "user.h"
#include "fs.h"

char*
fmtname(char *path)
{
  50:	55                   	push   %ebp
  51:	89 e5                	mov    %esp,%ebp
  53:	56                   	push   %esi
  54:	53                   	push   %ebx
  55:	83 ec 10             	sub    $0x10,%esp
  58:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  5b:	89 1c 24             	mov    %ebx,(%esp)
  5e:	e8 9d 03 00 00       	call   400 <strlen>
  63:	01 d8                	add    %ebx,%eax
  65:	73 10                	jae    77 <fmtname+0x27>
  67:	eb 13                	jmp    7c <fmtname+0x2c>
  69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  70:	83 e8 01             	sub    $0x1,%eax
  73:	39 c3                	cmp    %eax,%ebx
  75:	77 05                	ja     7c <fmtname+0x2c>
  77:	80 38 2f             	cmpb   $0x2f,(%eax)
  7a:	75 f4                	jne    70 <fmtname+0x20>
    ;
  p++;
  7c:	8d 58 01             	lea    0x1(%eax),%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
  7f:	89 1c 24             	mov    %ebx,(%esp)
  82:	e8 79 03 00 00       	call   400 <strlen>
  87:	83 f8 0d             	cmp    $0xd,%eax
  8a:	77 53                	ja     df <fmtname+0x8f>
    return p;
  memmove(buf, p, strlen(p));
  8c:	89 1c 24             	mov    %ebx,(%esp)
  8f:	e8 6c 03 00 00       	call   400 <strlen>
  94:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  98:	c7 04 24 e8 0d 00 00 	movl   $0xde8,(%esp)
  9f:	89 44 24 08          	mov    %eax,0x8(%esp)
  a3:	e8 e8 04 00 00       	call   590 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  a8:	89 1c 24             	mov    %ebx,(%esp)
  ab:	e8 50 03 00 00       	call   400 <strlen>
  b0:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  b3:	bb e8 0d 00 00       	mov    $0xde8,%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  b8:	89 c6                	mov    %eax,%esi
  ba:	e8 41 03 00 00       	call   400 <strlen>
  bf:	ba 0e 00 00 00       	mov    $0xe,%edx
  c4:	29 f2                	sub    %esi,%edx
  c6:	89 54 24 08          	mov    %edx,0x8(%esp)
  ca:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  d1:	00 
  d2:	05 e8 0d 00 00       	add    $0xde8,%eax
  d7:	89 04 24             	mov    %eax,(%esp)
  da:	e8 51 03 00 00       	call   430 <memset>
  return buf;
}
  df:	83 c4 10             	add    $0x10,%esp
  e2:	89 d8                	mov    %ebx,%eax
  e4:	5b                   	pop    %ebx
  e5:	5e                   	pop    %esi
  e6:	5d                   	pop    %ebp
  e7:	c3                   	ret    
  e8:	90                   	nop
  e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000000f0 <ls>:

void
ls(char *path)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	57                   	push   %edi
  f4:	56                   	push   %esi
  f5:	53                   	push   %ebx
  f6:	81 ec 6c 02 00 00    	sub    $0x26c,%esp
  fc:	8b 7d 08             	mov    0x8(%ebp),%edi
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
  ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 106:	00 
 107:	89 3c 24             	mov    %edi,(%esp)
 10a:	e8 f3 04 00 00       	call   602 <open>
 10f:	85 c0                	test   %eax,%eax
 111:	89 c3                	mov    %eax,%ebx
 113:	0f 88 c7 01 00 00    	js     2e0 <ls+0x1f0>
    printf(2, "ls: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
 119:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 11f:	89 74 24 04          	mov    %esi,0x4(%esp)
 123:	89 04 24             	mov    %eax,(%esp)
 126:	e8 ef 04 00 00       	call   61a <fstat>
 12b:	85 c0                	test   %eax,%eax
 12d:	0f 88 f5 01 00 00    	js     328 <ls+0x238>
    printf(2, "ls: cannot stat %s\n", path);
    close(fd);
    return;
  }

  switch(st.type){
 133:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 13a:	66 83 f8 01          	cmp    $0x1,%ax
 13e:	74 68                	je     1a8 <ls+0xb8>
 140:	66 83 f8 02          	cmp    $0x2,%ax
 144:	75 48                	jne    18e <ls+0x9e>
  case T_FILE:
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 146:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 14c:	89 3c 24             	mov    %edi,(%esp)
 14f:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 155:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 15b:	e8 f0 fe ff ff       	call   50 <fmtname>
 160:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 166:	89 74 24 10          	mov    %esi,0x10(%esp)
 16a:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 171:	00 
 172:	c7 44 24 04 c6 0a 00 	movl   $0xac6,0x4(%esp)
 179:	00 
 17a:	89 54 24 14          	mov    %edx,0x14(%esp)
 17e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 185:	89 44 24 08          	mov    %eax,0x8(%esp)
 189:	e8 a2 05 00 00       	call   730 <printf>
      }
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);
 18e:	89 1c 24             	mov    %ebx,(%esp)
 191:	e8 54 04 00 00       	call   5ea <close>
}
 196:	81 c4 6c 02 00 00    	add    $0x26c,%esp
 19c:	5b                   	pop    %ebx
 19d:	5e                   	pop    %esi
 19e:	5f                   	pop    %edi
 19f:	5d                   	pop    %ebp
 1a0:	c3                   	ret    
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  case T_FILE:
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1a8:	89 3c 24             	mov    %edi,(%esp)
 1ab:	e8 50 02 00 00       	call   400 <strlen>
 1b0:	83 c0 10             	add    $0x10,%eax
 1b3:	3d 00 02 00 00       	cmp    $0x200,%eax
 1b8:	0f 87 4a 01 00 00    	ja     308 <ls+0x218>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
 1be:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1c4:	89 7c 24 04          	mov    %edi,0x4(%esp)
 1c8:	8d bd c4 fd ff ff    	lea    -0x23c(%ebp),%edi
 1ce:	89 04 24             	mov    %eax,(%esp)
 1d1:	e8 aa 01 00 00       	call   380 <strcpy>
    p = buf+strlen(buf);
 1d6:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1dc:	89 04 24             	mov    %eax,(%esp)
 1df:	e8 1c 02 00 00       	call   400 <strlen>
 1e4:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 1ea:	01 c8                	add    %ecx,%eax
    *p++ = '/';
 1ec:	8d 48 01             	lea    0x1(%eax),%ecx
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
    p = buf+strlen(buf);
 1ef:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 1f5:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 1fb:	c6 00 2f             	movb   $0x2f,(%eax)
 1fe:	66 90                	xchg   %ax,%ax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 200:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 207:	00 
 208:	89 7c 24 04          	mov    %edi,0x4(%esp)
 20c:	89 1c 24             	mov    %ebx,(%esp)
 20f:	e8 c6 03 00 00       	call   5da <read>
 214:	83 f8 10             	cmp    $0x10,%eax
 217:	0f 85 71 ff ff ff    	jne    18e <ls+0x9e>
      if(de.inum == 0)
 21d:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 224:	00 
 225:	74 d9                	je     200 <ls+0x110>
        continue;
      memmove(p, de.name, DIRSIZ);
 227:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 22d:	89 44 24 04          	mov    %eax,0x4(%esp)
 231:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
 237:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 23e:	00 
 23f:	89 04 24             	mov    %eax,(%esp)
 242:	e8 49 03 00 00       	call   590 <memmove>
      p[DIRSIZ] = 0;
 247:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 24d:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 251:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 257:	89 74 24 04          	mov    %esi,0x4(%esp)
 25b:	89 04 24             	mov    %eax,(%esp)
 25e:	e8 9d 02 00 00       	call   500 <stat>
 263:	85 c0                	test   %eax,%eax
 265:	0f 88 e5 00 00 00    	js     350 <ls+0x260>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 26b:	0f bf 95 d4 fd ff ff 	movswl -0x22c(%ebp),%edx
 272:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 278:	8b 85 dc fd ff ff    	mov    -0x224(%ebp),%eax
 27e:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 284:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
 28a:	89 14 24             	mov    %edx,(%esp)
 28d:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 293:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 299:	e8 b2 fd ff ff       	call   50 <fmtname>
 29e:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 2a4:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 2aa:	c7 44 24 04 c6 0a 00 	movl   $0xac6,0x4(%esp)
 2b1:	00 
 2b2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2b9:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 2bd:	8b 8d b4 fd ff ff    	mov    -0x24c(%ebp),%ecx
 2c3:	89 54 24 0c          	mov    %edx,0xc(%esp)
 2c7:	89 44 24 08          	mov    %eax,0x8(%esp)
 2cb:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 2cf:	e8 5c 04 00 00       	call   730 <printf>
 2d4:	e9 27 ff ff ff       	jmp    200 <ls+0x110>
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
    printf(2, "ls: cannot open %s\n", path);
 2e0:	89 7c 24 08          	mov    %edi,0x8(%esp)
 2e4:	c7 44 24 04 9e 0a 00 	movl   $0xa9e,0x4(%esp)
 2eb:	00 
 2ec:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 2f3:	e8 38 04 00 00       	call   730 <printf>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);
}
 2f8:	81 c4 6c 02 00 00    	add    $0x26c,%esp
 2fe:	5b                   	pop    %ebx
 2ff:	5e                   	pop    %esi
 300:	5f                   	pop    %edi
 301:	5d                   	pop    %ebp
 302:	c3                   	ret    
 303:	90                   	nop
 304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
 308:	c7 44 24 04 d3 0a 00 	movl   $0xad3,0x4(%esp)
 30f:	00 
 310:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 317:	e8 14 04 00 00       	call   730 <printf>
      break;
 31c:	e9 6d fe ff ff       	jmp    18e <ls+0x9e>
 321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "ls: cannot stat %s\n", path);
 328:	89 7c 24 08          	mov    %edi,0x8(%esp)
 32c:	c7 44 24 04 b2 0a 00 	movl   $0xab2,0x4(%esp)
 333:	00 
 334:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 33b:	e8 f0 03 00 00       	call   730 <printf>
    close(fd);
 340:	89 1c 24             	mov    %ebx,(%esp)
 343:	e8 a2 02 00 00       	call   5ea <close>
    return;
 348:	e9 49 fe ff ff       	jmp    196 <ls+0xa6>
 34d:	8d 76 00             	lea    0x0(%esi),%esi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
 350:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 356:	89 44 24 08          	mov    %eax,0x8(%esp)
 35a:	c7 44 24 04 b2 0a 00 	movl   $0xab2,0x4(%esp)
 361:	00 
 362:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 369:	e8 c2 03 00 00       	call   730 <printf>
        continue;
 36e:	e9 8d fe ff ff       	jmp    200 <ls+0x110>
 373:	66 90                	xchg   %ax,%ax
 375:	66 90                	xchg   %ax,%ax
 377:	66 90                	xchg   %ax,%ax
 379:	66 90                	xchg   %ax,%ax
 37b:	66 90                	xchg   %ax,%ax
 37d:	66 90                	xchg   %ax,%ax
 37f:	90                   	nop

00000380 <strcpy>:
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	53                   	push   %ebx
 384:	8b 45 08             	mov    0x8(%ebp),%eax
 387:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 38a:	89 c2                	mov    %eax,%edx
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 390:	83 c1 01             	add    $0x1,%ecx
 393:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 397:	83 c2 01             	add    $0x1,%edx
 39a:	84 db                	test   %bl,%bl
 39c:	88 5a ff             	mov    %bl,-0x1(%edx)
 39f:	75 ef                	jne    390 <strcpy+0x10>
 3a1:	5b                   	pop    %ebx
 3a2:	5d                   	pop    %ebp
 3a3:	c3                   	ret    
 3a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003b0 <strcmp>:
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	56                   	push   %esi
 3b4:	53                   	push   %ebx
 3b5:	8b 55 08             	mov    0x8(%ebp),%edx
 3b8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 3bb:	0f b6 02             	movzbl (%edx),%eax
 3be:	0f b6 19             	movzbl (%ecx),%ebx
 3c1:	84 c0                	test   %al,%al
 3c3:	75 1e                	jne    3e3 <strcmp+0x33>
 3c5:	eb 29                	jmp    3f0 <strcmp+0x40>
 3c7:	89 f6                	mov    %esi,%esi
 3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 3d0:	83 c2 01             	add    $0x1,%edx
 3d3:	0f b6 02             	movzbl (%edx),%eax
 3d6:	8d 71 01             	lea    0x1(%ecx),%esi
 3d9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3dd:	84 c0                	test   %al,%al
 3df:	74 0f                	je     3f0 <strcmp+0x40>
 3e1:	89 f1                	mov    %esi,%ecx
 3e3:	38 d8                	cmp    %bl,%al
 3e5:	74 e9                	je     3d0 <strcmp+0x20>
 3e7:	29 d8                	sub    %ebx,%eax
 3e9:	5b                   	pop    %ebx
 3ea:	5e                   	pop    %esi
 3eb:	5d                   	pop    %ebp
 3ec:	c3                   	ret    
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
 3f0:	31 c0                	xor    %eax,%eax
 3f2:	29 d8                	sub    %ebx,%eax
 3f4:	5b                   	pop    %ebx
 3f5:	5e                   	pop    %esi
 3f6:	5d                   	pop    %ebp
 3f7:	c3                   	ret    
 3f8:	90                   	nop
 3f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000400 <strlen>:
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	8b 4d 08             	mov    0x8(%ebp),%ecx
 406:	80 39 00             	cmpb   $0x0,(%ecx)
 409:	74 12                	je     41d <strlen+0x1d>
 40b:	31 d2                	xor    %edx,%edx
 40d:	8d 76 00             	lea    0x0(%esi),%esi
 410:	83 c2 01             	add    $0x1,%edx
 413:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 417:	89 d0                	mov    %edx,%eax
 419:	75 f5                	jne    410 <strlen+0x10>
 41b:	5d                   	pop    %ebp
 41c:	c3                   	ret    
 41d:	31 c0                	xor    %eax,%eax
 41f:	5d                   	pop    %ebp
 420:	c3                   	ret    
 421:	eb 0d                	jmp    430 <memset>
 423:	90                   	nop
 424:	90                   	nop
 425:	90                   	nop
 426:	90                   	nop
 427:	90                   	nop
 428:	90                   	nop
 429:	90                   	nop
 42a:	90                   	nop
 42b:	90                   	nop
 42c:	90                   	nop
 42d:	90                   	nop
 42e:	90                   	nop
 42f:	90                   	nop

00000430 <memset>:
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 55 08             	mov    0x8(%ebp),%edx
 437:	8b 4d 10             	mov    0x10(%ebp),%ecx
 43a:	8b 45 0c             	mov    0xc(%ebp),%eax
 43d:	89 d7                	mov    %edx,%edi
 43f:	fc                   	cld    
 440:	f3 aa                	rep stos %al,%es:(%edi)
 442:	89 d0                	mov    %edx,%eax
 444:	5f                   	pop    %edi
 445:	5d                   	pop    %ebp
 446:	c3                   	ret    
 447:	89 f6                	mov    %esi,%esi
 449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000450 <strchr>:
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	53                   	push   %ebx
 454:	8b 45 08             	mov    0x8(%ebp),%eax
 457:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 45a:	0f b6 10             	movzbl (%eax),%edx
 45d:	84 d2                	test   %dl,%dl
 45f:	74 1d                	je     47e <strchr+0x2e>
 461:	38 d3                	cmp    %dl,%bl
 463:	89 d9                	mov    %ebx,%ecx
 465:	75 0d                	jne    474 <strchr+0x24>
 467:	eb 17                	jmp    480 <strchr+0x30>
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 470:	38 ca                	cmp    %cl,%dl
 472:	74 0c                	je     480 <strchr+0x30>
 474:	83 c0 01             	add    $0x1,%eax
 477:	0f b6 10             	movzbl (%eax),%edx
 47a:	84 d2                	test   %dl,%dl
 47c:	75 f2                	jne    470 <strchr+0x20>
 47e:	31 c0                	xor    %eax,%eax
 480:	5b                   	pop    %ebx
 481:	5d                   	pop    %ebp
 482:	c3                   	ret    
 483:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000490 <gets>:
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
 495:	53                   	push   %ebx
 496:	31 f6                	xor    %esi,%esi
 498:	8d 7d e7             	lea    -0x19(%ebp),%edi
 49b:	83 ec 1c             	sub    $0x1c,%esp
 49e:	eb 29                	jmp    4c9 <gets+0x39>
 4a0:	83 ec 04             	sub    $0x4,%esp
 4a3:	6a 01                	push   $0x1
 4a5:	57                   	push   %edi
 4a6:	6a 00                	push   $0x0
 4a8:	e8 2d 01 00 00       	call   5da <read>
 4ad:	83 c4 10             	add    $0x10,%esp
 4b0:	85 c0                	test   %eax,%eax
 4b2:	7e 1d                	jle    4d1 <gets+0x41>
 4b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4b8:	8b 55 08             	mov    0x8(%ebp),%edx
 4bb:	89 de                	mov    %ebx,%esi
 4bd:	3c 0a                	cmp    $0xa,%al
 4bf:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 4c3:	74 1b                	je     4e0 <gets+0x50>
 4c5:	3c 0d                	cmp    $0xd,%al
 4c7:	74 17                	je     4e0 <gets+0x50>
 4c9:	8d 5e 01             	lea    0x1(%esi),%ebx
 4cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4cf:	7c cf                	jl     4a0 <gets+0x10>
 4d1:	8b 45 08             	mov    0x8(%ebp),%eax
 4d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 4d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4db:	5b                   	pop    %ebx
 4dc:	5e                   	pop    %esi
 4dd:	5f                   	pop    %edi
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    
 4e0:	8b 45 08             	mov    0x8(%ebp),%eax
 4e3:	89 de                	mov    %ebx,%esi
 4e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 4e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ec:	5b                   	pop    %ebx
 4ed:	5e                   	pop    %esi
 4ee:	5f                   	pop    %edi
 4ef:	5d                   	pop    %ebp
 4f0:	c3                   	ret    
 4f1:	eb 0d                	jmp    500 <stat>
 4f3:	90                   	nop
 4f4:	90                   	nop
 4f5:	90                   	nop
 4f6:	90                   	nop
 4f7:	90                   	nop
 4f8:	90                   	nop
 4f9:	90                   	nop
 4fa:	90                   	nop
 4fb:	90                   	nop
 4fc:	90                   	nop
 4fd:	90                   	nop
 4fe:	90                   	nop
 4ff:	90                   	nop

00000500 <stat>:
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
 505:	83 ec 08             	sub    $0x8,%esp
 508:	6a 00                	push   $0x0
 50a:	ff 75 08             	pushl  0x8(%ebp)
 50d:	e8 f0 00 00 00       	call   602 <open>
 512:	83 c4 10             	add    $0x10,%esp
 515:	85 c0                	test   %eax,%eax
 517:	78 27                	js     540 <stat+0x40>
 519:	83 ec 08             	sub    $0x8,%esp
 51c:	ff 75 0c             	pushl  0xc(%ebp)
 51f:	89 c3                	mov    %eax,%ebx
 521:	50                   	push   %eax
 522:	e8 f3 00 00 00       	call   61a <fstat>
 527:	89 c6                	mov    %eax,%esi
 529:	89 1c 24             	mov    %ebx,(%esp)
 52c:	e8 b9 00 00 00       	call   5ea <close>
 531:	83 c4 10             	add    $0x10,%esp
 534:	89 f0                	mov    %esi,%eax
 536:	8d 65 f8             	lea    -0x8(%ebp),%esp
 539:	5b                   	pop    %ebx
 53a:	5e                   	pop    %esi
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
 53d:	8d 76 00             	lea    0x0(%esi),%esi
 540:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 545:	eb ef                	jmp    536 <stat+0x36>
 547:	89 f6                	mov    %esi,%esi
 549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000550 <atoi>:
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	53                   	push   %ebx
 554:	8b 4d 08             	mov    0x8(%ebp),%ecx
 557:	0f be 11             	movsbl (%ecx),%edx
 55a:	8d 42 d0             	lea    -0x30(%edx),%eax
 55d:	3c 09                	cmp    $0x9,%al
 55f:	b8 00 00 00 00       	mov    $0x0,%eax
 564:	77 1f                	ja     585 <atoi+0x35>
 566:	8d 76 00             	lea    0x0(%esi),%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 570:	8d 04 80             	lea    (%eax,%eax,4),%eax
 573:	83 c1 01             	add    $0x1,%ecx
 576:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 57a:	0f be 11             	movsbl (%ecx),%edx
 57d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 580:	80 fb 09             	cmp    $0x9,%bl
 583:	76 eb                	jbe    570 <atoi+0x20>
 585:	5b                   	pop    %ebx
 586:	5d                   	pop    %ebp
 587:	c3                   	ret    
 588:	90                   	nop
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000590 <memmove>:
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	56                   	push   %esi
 594:	53                   	push   %ebx
 595:	8b 5d 10             	mov    0x10(%ebp),%ebx
 598:	8b 45 08             	mov    0x8(%ebp),%eax
 59b:	8b 75 0c             	mov    0xc(%ebp),%esi
 59e:	85 db                	test   %ebx,%ebx
 5a0:	7e 14                	jle    5b6 <memmove+0x26>
 5a2:	31 d2                	xor    %edx,%edx
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5a8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 5ac:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 5af:	83 c2 01             	add    $0x1,%edx
 5b2:	39 da                	cmp    %ebx,%edx
 5b4:	75 f2                	jne    5a8 <memmove+0x18>
 5b6:	5b                   	pop    %ebx
 5b7:	5e                   	pop    %esi
 5b8:	5d                   	pop    %ebp
 5b9:	c3                   	ret    

000005ba <fork>:
 5ba:	b8 01 00 00 00       	mov    $0x1,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <exit>:
 5c2:	b8 02 00 00 00       	mov    $0x2,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <wait>:
 5ca:	b8 03 00 00 00       	mov    $0x3,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <pipe>:
 5d2:	b8 04 00 00 00       	mov    $0x4,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <read>:
 5da:	b8 05 00 00 00       	mov    $0x5,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <write>:
 5e2:	b8 10 00 00 00       	mov    $0x10,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <close>:
 5ea:	b8 15 00 00 00       	mov    $0x15,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <kill>:
 5f2:	b8 06 00 00 00       	mov    $0x6,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <exec>:
 5fa:	b8 07 00 00 00       	mov    $0x7,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <open>:
 602:	b8 0f 00 00 00       	mov    $0xf,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <mknod>:
 60a:	b8 11 00 00 00       	mov    $0x11,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <unlink>:
 612:	b8 12 00 00 00       	mov    $0x12,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <fstat>:
 61a:	b8 08 00 00 00       	mov    $0x8,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <link>:
 622:	b8 13 00 00 00       	mov    $0x13,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <mkdir>:
 62a:	b8 14 00 00 00       	mov    $0x14,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <chdir>:
 632:	b8 09 00 00 00       	mov    $0x9,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <dup>:
 63a:	b8 0a 00 00 00       	mov    $0xa,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <getpid>:
 642:	b8 0b 00 00 00       	mov    $0xb,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <sbrk>:
 64a:	b8 0c 00 00 00       	mov    $0xc,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <sleep>:
 652:	b8 0d 00 00 00       	mov    $0xd,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <uptime>:
 65a:	b8 0e 00 00 00       	mov    $0xe,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <random>:
 662:	b8 16 00 00 00       	mov    $0x16,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <cprocstate>:
 66a:	b8 18 00 00 00       	mov    $0x18,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    

00000672 <signalinfo>:
 672:	b8 19 00 00 00       	mov    $0x19,%eax
 677:	cd 40                	int    $0x40
 679:	c3                   	ret    

0000067a <setseed>:
 67a:	b8 17 00 00 00       	mov    $0x17,%eax
 67f:	cd 40                	int    $0x40
 681:	c3                   	ret    
 682:	66 90                	xchg   %ax,%ax
 684:	66 90                	xchg   %ax,%ax
 686:	66 90                	xchg   %ax,%ax
 688:	66 90                	xchg   %ax,%ax
 68a:	66 90                	xchg   %ax,%ax
 68c:	66 90                	xchg   %ax,%ax
 68e:	66 90                	xchg   %ax,%ax

00000690 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	89 c6                	mov    %eax,%esi
 697:	53                   	push   %ebx
 698:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 69b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 69e:	85 db                	test   %ebx,%ebx
 6a0:	74 09                	je     6ab <printint+0x1b>
 6a2:	89 d0                	mov    %edx,%eax
 6a4:	c1 e8 1f             	shr    $0x1f,%eax
 6a7:	84 c0                	test   %al,%al
 6a9:	75 75                	jne    720 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6ab:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 6ad:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6b4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 6b7:	31 ff                	xor    %edi,%edi
 6b9:	89 ce                	mov    %ecx,%esi
 6bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 6be:	eb 02                	jmp    6c2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 6c0:	89 cf                	mov    %ecx,%edi
 6c2:	31 d2                	xor    %edx,%edx
 6c4:	f7 f6                	div    %esi
 6c6:	8d 4f 01             	lea    0x1(%edi),%ecx
 6c9:	0f b6 92 ef 0a 00 00 	movzbl 0xaef(%edx),%edx
  }while((x /= base) != 0);
 6d0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 6d2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 6d5:	75 e9                	jne    6c0 <printint+0x30>
  if(neg)
 6d7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 6da:	89 c8                	mov    %ecx,%eax
 6dc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 6df:	85 d2                	test   %edx,%edx
 6e1:	74 08                	je     6eb <printint+0x5b>
    buf[i++] = '-';
 6e3:	8d 4f 02             	lea    0x2(%edi),%ecx
 6e6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 6eb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 6ee:	66 90                	xchg   %ax,%ax
 6f0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 6f5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6f8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6ff:	00 
 700:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 704:	89 34 24             	mov    %esi,(%esp)
 707:	88 45 d7             	mov    %al,-0x29(%ebp)
 70a:	e8 d3 fe ff ff       	call   5e2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 70f:	83 ff ff             	cmp    $0xffffffff,%edi
 712:	75 dc                	jne    6f0 <printint+0x60>
    putc(fd, buf[i]);
}
 714:	83 c4 4c             	add    $0x4c,%esp
 717:	5b                   	pop    %ebx
 718:	5e                   	pop    %esi
 719:	5f                   	pop    %edi
 71a:	5d                   	pop    %ebp
 71b:	c3                   	ret    
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 720:	89 d0                	mov    %edx,%eax
 722:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 724:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 72b:	eb 87                	jmp    6b4 <printint+0x24>
 72d:	8d 76 00             	lea    0x0(%esi),%esi

00000730 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 734:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 736:	56                   	push   %esi
 737:	53                   	push   %ebx
 738:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 73b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 73e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 741:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 744:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 747:	0f b6 13             	movzbl (%ebx),%edx
 74a:	83 c3 01             	add    $0x1,%ebx
 74d:	84 d2                	test   %dl,%dl
 74f:	75 39                	jne    78a <printf+0x5a>
 751:	e9 c2 00 00 00       	jmp    818 <printf+0xe8>
 756:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 758:	83 fa 25             	cmp    $0x25,%edx
 75b:	0f 84 bf 00 00 00    	je     820 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 761:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 764:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 76b:	00 
 76c:	89 44 24 04          	mov    %eax,0x4(%esp)
 770:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 773:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 776:	e8 67 fe ff ff       	call   5e2 <write>
 77b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 77e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 782:	84 d2                	test   %dl,%dl
 784:	0f 84 8e 00 00 00    	je     818 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 78a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 78c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 78f:	74 c7                	je     758 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 791:	83 ff 25             	cmp    $0x25,%edi
 794:	75 e5                	jne    77b <printf+0x4b>
      if(c == 'd'){
 796:	83 fa 64             	cmp    $0x64,%edx
 799:	0f 84 31 01 00 00    	je     8d0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 79f:	25 f7 00 00 00       	and    $0xf7,%eax
 7a4:	83 f8 70             	cmp    $0x70,%eax
 7a7:	0f 84 83 00 00 00    	je     830 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 7ad:	83 fa 73             	cmp    $0x73,%edx
 7b0:	0f 84 a2 00 00 00    	je     858 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 7b6:	83 fa 63             	cmp    $0x63,%edx
 7b9:	0f 84 35 01 00 00    	je     8f4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 7bf:	83 fa 25             	cmp    $0x25,%edx
 7c2:	0f 84 e0 00 00 00    	je     8a8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7c8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7cb:	83 c3 01             	add    $0x1,%ebx
 7ce:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7d5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7d6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7d8:	89 44 24 04          	mov    %eax,0x4(%esp)
 7dc:	89 34 24             	mov    %esi,(%esp)
 7df:	89 55 d0             	mov    %edx,-0x30(%ebp)
 7e2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 7e6:	e8 f7 fd ff ff       	call   5e2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 7eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7f1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7f8:	00 
 7f9:	89 44 24 04          	mov    %eax,0x4(%esp)
 7fd:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 800:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 803:	e8 da fd ff ff       	call   5e2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 808:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 80c:	84 d2                	test   %dl,%dl
 80e:	0f 85 76 ff ff ff    	jne    78a <printf+0x5a>
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 818:	83 c4 3c             	add    $0x3c,%esp
 81b:	5b                   	pop    %ebx
 81c:	5e                   	pop    %esi
 81d:	5f                   	pop    %edi
 81e:	5d                   	pop    %ebp
 81f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 820:	bf 25 00 00 00       	mov    $0x25,%edi
 825:	e9 51 ff ff ff       	jmp    77b <printf+0x4b>
 82a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 830:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 833:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 838:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 83a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 841:	8b 10                	mov    (%eax),%edx
 843:	89 f0                	mov    %esi,%eax
 845:	e8 46 fe ff ff       	call   690 <printint>
        ap++;
 84a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 84e:	e9 28 ff ff ff       	jmp    77b <printf+0x4b>
 853:	90                   	nop
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 858:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 85b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 85f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 861:	b8 e8 0a 00 00       	mov    $0xae8,%eax
 866:	85 ff                	test   %edi,%edi
 868:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 86b:	0f b6 07             	movzbl (%edi),%eax
 86e:	84 c0                	test   %al,%al
 870:	74 2a                	je     89c <printf+0x16c>
 872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 878:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 87b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 87e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 881:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 888:	00 
 889:	89 44 24 04          	mov    %eax,0x4(%esp)
 88d:	89 34 24             	mov    %esi,(%esp)
 890:	e8 4d fd ff ff       	call   5e2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 895:	0f b6 07             	movzbl (%edi),%eax
 898:	84 c0                	test   %al,%al
 89a:	75 dc                	jne    878 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 89c:	31 ff                	xor    %edi,%edi
 89e:	e9 d8 fe ff ff       	jmp    77b <printf+0x4b>
 8a3:	90                   	nop
 8a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8a8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8ab:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8ad:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8b4:	00 
 8b5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8b9:	89 34 24             	mov    %esi,(%esp)
 8bc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 8c0:	e8 1d fd ff ff       	call   5e2 <write>
 8c5:	e9 b1 fe ff ff       	jmp    77b <printf+0x4b>
 8ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 8d0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8d8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 8db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8e2:	8b 10                	mov    (%eax),%edx
 8e4:	89 f0                	mov    %esi,%eax
 8e6:	e8 a5 fd ff ff       	call   690 <printint>
        ap++;
 8eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8ef:	e9 87 fe ff ff       	jmp    77b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 8f4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8f7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 8f9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8fb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 902:	00 
 903:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 906:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 909:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 90c:	89 44 24 04          	mov    %eax,0x4(%esp)
 910:	e8 cd fc ff ff       	call   5e2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 915:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 919:	e9 5d fe ff ff       	jmp    77b <printf+0x4b>
 91e:	66 90                	xchg   %ax,%ax

00000920 <free>:
 920:	55                   	push   %ebp
 921:	a1 f8 0d 00 00       	mov    0xdf8,%eax
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 92e:	8b 10                	mov    (%eax),%edx
 930:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 933:	39 c8                	cmp    %ecx,%eax
 935:	73 19                	jae    950 <free+0x30>
 937:	89 f6                	mov    %esi,%esi
 939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 940:	39 d1                	cmp    %edx,%ecx
 942:	72 1c                	jb     960 <free+0x40>
 944:	39 d0                	cmp    %edx,%eax
 946:	73 18                	jae    960 <free+0x40>
 948:	89 d0                	mov    %edx,%eax
 94a:	39 c8                	cmp    %ecx,%eax
 94c:	8b 10                	mov    (%eax),%edx
 94e:	72 f0                	jb     940 <free+0x20>
 950:	39 d0                	cmp    %edx,%eax
 952:	72 f4                	jb     948 <free+0x28>
 954:	39 d1                	cmp    %edx,%ecx
 956:	73 f0                	jae    948 <free+0x28>
 958:	90                   	nop
 959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 960:	8b 73 fc             	mov    -0x4(%ebx),%esi
 963:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 966:	39 d7                	cmp    %edx,%edi
 968:	74 19                	je     983 <free+0x63>
 96a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 96d:	8b 50 04             	mov    0x4(%eax),%edx
 970:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 973:	39 f1                	cmp    %esi,%ecx
 975:	74 23                	je     99a <free+0x7a>
 977:	89 08                	mov    %ecx,(%eax)
 979:	a3 f8 0d 00 00       	mov    %eax,0xdf8
 97e:	5b                   	pop    %ebx
 97f:	5e                   	pop    %esi
 980:	5f                   	pop    %edi
 981:	5d                   	pop    %ebp
 982:	c3                   	ret    
 983:	03 72 04             	add    0x4(%edx),%esi
 986:	89 73 fc             	mov    %esi,-0x4(%ebx)
 989:	8b 10                	mov    (%eax),%edx
 98b:	8b 12                	mov    (%edx),%edx
 98d:	89 53 f8             	mov    %edx,-0x8(%ebx)
 990:	8b 50 04             	mov    0x4(%eax),%edx
 993:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 996:	39 f1                	cmp    %esi,%ecx
 998:	75 dd                	jne    977 <free+0x57>
 99a:	03 53 fc             	add    -0x4(%ebx),%edx
 99d:	a3 f8 0d 00 00       	mov    %eax,0xdf8
 9a2:	89 50 04             	mov    %edx,0x4(%eax)
 9a5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 9a8:	89 10                	mov    %edx,(%eax)
 9aa:	5b                   	pop    %ebx
 9ab:	5e                   	pop    %esi
 9ac:	5f                   	pop    %edi
 9ad:	5d                   	pop    %ebp
 9ae:	c3                   	ret    
 9af:	90                   	nop

000009b0 <malloc>:
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 0c             	sub    $0xc,%esp
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
 9bc:	8b 15 f8 0d 00 00    	mov    0xdf8,%edx
 9c2:	8d 78 07             	lea    0x7(%eax),%edi
 9c5:	c1 ef 03             	shr    $0x3,%edi
 9c8:	83 c7 01             	add    $0x1,%edi
 9cb:	85 d2                	test   %edx,%edx
 9cd:	0f 84 a3 00 00 00    	je     a76 <malloc+0xc6>
 9d3:	8b 02                	mov    (%edx),%eax
 9d5:	8b 48 04             	mov    0x4(%eax),%ecx
 9d8:	39 cf                	cmp    %ecx,%edi
 9da:	76 74                	jbe    a50 <malloc+0xa0>
 9dc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 9e2:	be 00 10 00 00       	mov    $0x1000,%esi
 9e7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 9ee:	0f 43 f7             	cmovae %edi,%esi
 9f1:	ba 00 80 00 00       	mov    $0x8000,%edx
 9f6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 9fc:	0f 46 da             	cmovbe %edx,%ebx
 9ff:	eb 10                	jmp    a11 <malloc+0x61>
 a01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a08:	8b 02                	mov    (%edx),%eax
 a0a:	8b 48 04             	mov    0x4(%eax),%ecx
 a0d:	39 cf                	cmp    %ecx,%edi
 a0f:	76 3f                	jbe    a50 <malloc+0xa0>
 a11:	39 05 f8 0d 00 00    	cmp    %eax,0xdf8
 a17:	89 c2                	mov    %eax,%edx
 a19:	75 ed                	jne    a08 <malloc+0x58>
 a1b:	83 ec 0c             	sub    $0xc,%esp
 a1e:	53                   	push   %ebx
 a1f:	e8 26 fc ff ff       	call   64a <sbrk>
 a24:	83 c4 10             	add    $0x10,%esp
 a27:	83 f8 ff             	cmp    $0xffffffff,%eax
 a2a:	74 1c                	je     a48 <malloc+0x98>
 a2c:	89 70 04             	mov    %esi,0x4(%eax)
 a2f:	83 ec 0c             	sub    $0xc,%esp
 a32:	83 c0 08             	add    $0x8,%eax
 a35:	50                   	push   %eax
 a36:	e8 e5 fe ff ff       	call   920 <free>
 a3b:	8b 15 f8 0d 00 00    	mov    0xdf8,%edx
 a41:	83 c4 10             	add    $0x10,%esp
 a44:	85 d2                	test   %edx,%edx
 a46:	75 c0                	jne    a08 <malloc+0x58>
 a48:	31 c0                	xor    %eax,%eax
 a4a:	eb 1c                	jmp    a68 <malloc+0xb8>
 a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a50:	39 cf                	cmp    %ecx,%edi
 a52:	74 1c                	je     a70 <malloc+0xc0>
 a54:	29 f9                	sub    %edi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 a5c:	89 78 04             	mov    %edi,0x4(%eax)
 a5f:	89 15 f8 0d 00 00    	mov    %edx,0xdf8
 a65:	83 c0 08             	add    $0x8,%eax
 a68:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
 a70:	8b 08                	mov    (%eax),%ecx
 a72:	89 0a                	mov    %ecx,(%edx)
 a74:	eb e9                	jmp    a5f <malloc+0xaf>
 a76:	c7 05 f8 0d 00 00 fc 	movl   $0xdfc,0xdf8
 a7d:	0d 00 00 
 a80:	c7 05 fc 0d 00 00 fc 	movl   $0xdfc,0xdfc
 a87:	0d 00 00 
 a8a:	b8 fc 0d 00 00       	mov    $0xdfc,%eax
 a8f:	c7 05 00 0e 00 00 00 	movl   $0x0,0xe00
 a96:	00 00 00 
 a99:	e9 3e ff ff ff       	jmp    9dc <malloc+0x2c>
