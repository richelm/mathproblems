#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/* Hackerank
 * Dashboard|Algorithms|Implementation|Grading Students
 * 
 * Solved: 9/1/2017
 */

int main() {
    int n, g, i, nm5;
     
    scanf("%d", &n); 
    for (i = 0; i < n; i++) {
		scanf("%d", &g);
		nm5 = g + (5 - g%5);
    
		if ((g > 37) && ((nm5 - g)) < 3) {
			g = nm5;
		}
		printf("%d\n", g);
	}

    return 0;
}
