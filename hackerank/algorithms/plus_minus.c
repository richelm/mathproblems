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
 * Solved: 
 * 
 */
 
int main(){
    int n; 
    scanf("%d",&n);
    int arr[n];
    for(int arr_i = 0; arr_i < n; arr_i++){
       scanf("%d",&arr[arr_i]);
    }
    return 0;
}
