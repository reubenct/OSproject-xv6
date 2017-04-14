#include "types.h"
#include "user.h"
int main(int argc, char *argv[]){
	int n=0,i,len=0;
	len=strlen(argv[1]);//using strlen function of user library
	for(i=0; i<len; i++){
		n= (n* 10 + ( argv[1][i] - '0' ));
		}
	sleep((int)(1000*n/15));//found by trial and error that sleep(1000)~=15sec
	exit();
}

