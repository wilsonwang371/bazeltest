#include "unistd.h"
#include "stdio.h"
#include "stdlib.h"


int mymodprint(void)
{
#if defined(MODULE_ENABLED)
	printf("Output from module library!\n");
#endif
	return 0;
}
