#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|Compare the Triplets
 * 
 * Solution:
 * Read in a0,a1,a2 and b0,b1,b2 and compare corresponding values.
 *
 * Solved: 8/22/2017
 * 
 */

int main() {
    int asum, a0, a1, a2; 
	int bsum, b0, b1, b2;
	
    scanf("%d %d %d", &a0, &a1, &a2);
    scanf("%d %d %d", &b0, &b1, &b2);
    
    asum = 0;
    bsum = 0;
    
    asum = (a0 > b0);
    bsum = (b0 > a0);
    asum = asum + (a1 > b1);
    bsum = bsum + (b1 > a1);
    asum = asum + (a2 > b2);
    bsum = bsum + (b2 > a2);
    
    printf ("%d %d\n", asum, bsum);
}
