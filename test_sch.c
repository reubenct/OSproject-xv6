#include "types.h"
#include "stat.h"
#include "user.h"

/*argv[1]=minp_time
argv[2]=maxp_time
argv[3]=minp_runtime
argv[4]=maxp_runtime
arg[5]=maxnum_processes
*/

int main ( int argc, char *argv[] ){
	int i;

	int minp_time, maxp_time, minp_runtime,  maxp_runtime, maxnum_processes;
	minp_time=atoi(argv[1]);
	maxp_time=atoi(argv[2]);
	minp_runtime=atoi(argv[3]);
	maxp_runtime=atoi(argv[4]);
	maxnum_processes=atoi(argv[5]);
	
	//char *list[] = { "sleep_sec", "1", 0 };
	int init_ticks=uptime();
	int inittime=(minp_time+random(maxp_time-minp_time));
	//printf(1,"inittime=%d\n",inittime);										//INITTIME PRINT
	sleep((int)(1000*inittime/15));	
	for(i=0;i<maxnum_processes;i++){		//reference: init.c
				
		int pid=fork();
		if(pid < 0){
	      printf(1, "init: fork failed\n");
    	  exit();
     	}
		 if(pid == 0){
			int runtime=(minp_runtime+random(maxp_runtime-minp_runtime));
			//printf(1,"runtime=%d\n",runtime);									//CHILD RUNTIME PRINT
			sleep((int)(1000*runtime/15)); //sleep for a randomly chosen runtime
			//exec("sleep_sec", list);
				//printf(1, "init: exec sleep_sec failed\n");
			printf(1,"Child %d \n",getpid());					
		   exit();
	   }
		if(pid>0){
			//while((wpid=wait())>0 && wpid!=pid)
				//printf(1, "zombie!\n");
			//parent gonna sleep until the next proc is to be generated
			int sleeptime=(minp_time+random(maxp_time-minp_time));	
			//printf(1,"parent sleeptime=%d\n",sleeptime);						//PARENT SLEEPTIME (time btw process generation)
			sleep((int)(1000*sleeptime/15));	
			//wait();	
		}
	}
/*	for(i=0;i<maxnum_processes;i++)					//instead of wait in the parent, let the parent sleep for required time and use this loop
	{
	wait();		
	}*/
	while(wait()>0);	//busy wait as long as there remain children
	int final_ticks=uptime();
	printf(1,"Total execution time in seconds = %d\n",15*(final_ticks-init_ticks)/1000);
	return 1;

}

