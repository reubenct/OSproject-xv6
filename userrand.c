#include "types.h"
//include<stat.h>
#include "user.h"
int main(int argc, char *argv[])
{
int len=strlen(argv[1]);
int i,n=0,r;
for(i=0;i<len;i++)
{
 n=(n*10+(argv[1][i]-'0'));
}
r=random(n);
//n =n%10;
 printf(1,"random:%d for %d\n",r,n);
exit();
}

