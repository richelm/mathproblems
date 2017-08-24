#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|Plus Minus
 * 
 * Given an array of integers, calculate which fraction of its elements 
 * are positive, which fraction of its elements are negative, and which 
 * fraction of its elements are zeroes, respectively. Print the decimal 
 * value of each fraction on a new line.
 * NOTE: Precision should be scaled to six decimal places.
 * 
 * Solved: 8/24/2017
 * 
 */
 
int main(){
    int n,i,k; 
    int pos, neg, zero;
    
    scanf("%d",&n);

	pos = 0;
	neg = 0;
	zero = 0;
    for(i = 0; i < n; i++){
		scanf("%d",&k);
		if (k > 0) {pos++;}
		if (k < 0) {neg++;}
		if (k == 0) {zero++;}
    }
    
    printf("%.6f\n",(double)pos/(double)n);
    printf("%.6f\n",(double)neg/(double)n);
    printf("%.6f\n",(double)zero/(double)n);
    
    return 0;
}
