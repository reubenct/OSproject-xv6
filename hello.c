// A simple program which just prints something on screen

#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
 printf(1, "HELLO ");
 int i;
  for(i = 1; i < argc; i++)
    printf(1, "%s%s", argv[i], i+1 < argc ? " " : "\n");
 exit();
}
