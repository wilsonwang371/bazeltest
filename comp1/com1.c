#include "unistd.h"
#include "stdio.h"
#include "stdlib.h"


extern int sub11(void);

int main(int argc, char **argv)
{
	printf("com1\n");
    sub11();

	return 0;
}
