#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|Diagonal Difference
 * 
 * Given a square matrix of size , calculate the absolute 
 * difference between the sums of its diagonals.
 * 
 * Solved: 8/24/2017
 * 
 */
 
int main(){
    int n, a_i, a_j;
    int dp, ds, dd; 
    scanf("%d",&n);
    int a[n][n];
    for(a_i = 0; a_i < n; a_i++){
       for(a_j = 0; a_j < n; a_j++){
          scanf("%d",&a[a_i][a_j]);
       }
    }
    
    // caculate the diagonal difference
    dp = 0;
    ds = 0;
    for (a_i = 0; a_i < n; a_i++) {
		dp = dp + a[a_i][a_i];
		ds = ds + a[a_i][n-(a_i+1)];
	}
	dd = abs(dp - ds);
	printf("%d\n",dd);
	
    return 0;
}
