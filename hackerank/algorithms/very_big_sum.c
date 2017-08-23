#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|A Very Big Sum
 * 
 * Solution:
 * Just keep a running sum as values are read in. No need to store
 * in an array.
 * 
 * Solved: 8/23/2017
 * 
 */

int main() {
    int n, i; 
	long int k,result;
	
	result = 0;
    scanf("%i", &n);
    for(i = 0; i < n; i++){
		scanf("%li",&k);
		result = result + k;
    }
    printf("%ld\n", result);
    return 0;
}
