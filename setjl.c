#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
	
	if(argc<3)
	{
	 printf(1,"\n ! Error: number of argument lesser than required\n");
	 exit();
	 }
	else if(argc>3)
	 printf(1,"\n (! Error: 3rd argument neglected\n)"); 
	signalinfo(atoi(argv[1]),atoi(argv[2]));
	exit();
}

