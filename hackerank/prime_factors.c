#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

/* 
 * Leonardo loves primes and created queries where each query takes the 
 * form of an integer. For each, he wants you to count the maximum 
 * number of unique prime factors of any number in the inclusive range 
 * and then print this value on a new line.
 * 
 */

int countPrimeFactors(int n);

int main() {
	
	int q, n, i, j;

	// read in number of queries
	scanf("%d",&q);
	
	for(i = 0; i < q; i++) {
		// read in n
		scanf("%d",&n);
		
		// find the max number of unique primes in [1..n]
		for(j = 2; j <= n; j++) {
			
		}
	}
	
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */    
    return 0;
}

int countPrimeFactors(int n) {
	
	
