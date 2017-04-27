#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
	int i, t, n;

	scanf("%d",&t);
	
	for(i = 0; i < t; i++) {
		scanf("%d",&n);
		printf("%d\n",n+1);
	}
	
    return 0;
}
