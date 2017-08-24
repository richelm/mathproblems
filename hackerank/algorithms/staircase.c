#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|Staircase
 * 
 * Draw a stair case with N steps that is drawn right justified. 
 * 
 * Solved: 8/24/2017
 * 
 */
 
int main(){
    int n, i, j; 
    scanf("%d",&n);
    
    for (i = 0; i < n; i++) {
		j = n - (1+i);
		while(j--)printf(" ");
		j = i + 1;
		while(j--)printf("#");
		printf("\n");
	}
    return 0;
}
