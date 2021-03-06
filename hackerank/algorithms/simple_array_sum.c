#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|Simple Arrary Sum
 * 
 * Solution:
 * Just keep a running sum as values are read in. No need to store
 * in an array.
 * 
 * Solved: 8/22/2017
 * 
 */

int main() {
    int n,k,sum; 
    sum = 0;
    scanf("%i", &n);
    for(int i = 0; i < n; i++){
       scanf("%i",&k);
       sum = sum + k;
    }
    printf("%d\n", sum);
    return 0;
}
