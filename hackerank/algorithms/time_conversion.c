#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

int main() {
	char *buff = "12:35:00AM";
	char hour[2];

	memcpy( hour, &buff[0], 2 );
	hour[3] = '\0';
	
	printf("%s\n", hour);
}
