#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

/**
 * Problem: Hackerrack|Alogrithms|Warmup|Min-Max-Sum
 * 
 * Solution:
 * 1. Read in 5 values
 * 2. Caculate sum of the 5 values
 * 3. Find maximum value of the 5
 * 4. minimum sum = sum of 5 - maximum value of 5
 * 5. Find minimum value of the 5
 * 6. maximum sum = sum of 5 - minimum value of 5
 * 
 * 2017.07.07: This solution was correct.
 */

int main() {
	long long int n1,n2, n3, n4, n5;
    long long int  m, min, max, sum;
    
    scanf("%lld %lld %lld %lld %lld",&n1,&n2,&n3,&n4,&n5);
    
    // calculate the sum of all 5 input numbers
    sum = n1 + n2 + n3 + n4 + n5;
    
    // find the maximum value of the five input numbers
    m = n1;
    if (n2 > m) {m = n2;}
    if (n3 > m) {m = n3;}
    if (n4 > m) {m = n4;}
    if (n5 > m) {m = n5;}
    
    // substract maximum value from sum to get minimum sum
    min = sum - m;
    
    // find the minimum value of the five input numbers  
    m = n1;
    if (n2 < m) {m = n2;}
    if (n3 < m) {m = n3;}
    if (n4 < m) {m = n4;}
    if (n5 < m) {m = n5;}
    
    // substract minimum value from sum to get maximum sum
    max = sum - m;
    
	printf("%lld %lld\n", min, max);
    
    return 0;
}
