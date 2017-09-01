#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/* Hackerank
 * Dashboard|Algorithms|Implementation|Kangaroo
 * 
 * Solved: 9/1/2017
 */


int main() {
    int x1; 
    int v1; 
    int x2; 
    int v2;
    int n;
    scanf("%i %i %i %i", &x1, &v1, &x2, &v2);

	if ((v2 == v1) && (x1 != x2)) {
		printf("NO\n");
	}
	else if ((v2 == v1) && (x1 == x2))  {
		printf("YES\n");
	}
	else {
		n = (x1 - x2) / (v2 - v1);
		
		if ((n > 0) && ((x1+n*v1) == (x2+n*v2))) {
			printf("YES\n");
		}
		else {
			printf("NO\n");
		}
	}

    return 0;
}
