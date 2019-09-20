#include "unistd.h"
#include "stdio.h"
#include "stdlib.h"


int sub11(void)
{
#if defined(SUB11)
	printf("sub1\n");
#endif
	return 0;
}
