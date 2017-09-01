#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

int main() {
    int n, nm; 

    scanf("%d", &n);
    
    nm = n + (5 - n%5);
    
	printf("%d %d %d\n", n, n%5, nm);

    return 0;
}
