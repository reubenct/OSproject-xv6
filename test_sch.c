#include "types.h"
#include "stat.h"
#include "user.h"

/*argv[1]=minp_time
argv[2]=maxp_time
argv[3]=minp_runtime
argv[4]=maxp_runtime
arg[5]=maxnum_processes
*/
int seed=2;
int random1(int min, int max);
int main ( int argc, char *argv[] ){
	int i;

	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	//int ptime[maxnum_processes];
	//int runtime[maxnum_processes];
	//char *list[] = { "sleep_sec", "1", 0 };
	
	sleep((int)(1000*random1(minp_time,maxp_time)/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
				
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
			sleep((int)(1000*random1(minp_runtime,maxp_runtime)/15)); //sleep for a randomly chosen runtime
			//exec("sleep_sec", list);
			
			//printf(1, "init: exec sleep_sec failed\n");
			printf(1,"Child %d\n",getpid());
		   exit();
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)//waiting for the wrong child
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			sleep((int)(1000*random1(minp_time,maxp_time)/15));	
			wait();	
		}
	}
/*	for(i=0;i<maxnum_processes;i++)					//instead of wait in the parent, let the parent sleep for required time and use this loop
	{
	wait();		
	}*/
	return 1;

}

int random1(int min, int max){
	int x=seed,r;	
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	seed=x;
	r=x%(max-min);
	if(r<0)
		r=-r;
	r+=min;//got a random number between min and max
	return r;
}
