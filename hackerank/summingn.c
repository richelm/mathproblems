#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
/*
 * Summing the N Series
 * Given:
 *   Tn = n^2 - (n - 1)^2
 * 
 * Evaluate the series:
 *	 Sn = T1 + T2 + T3 + ... Tn
 * 
 * Find:
 * 	 Sn mod (10^9 + 7)
 * 
 */
 
int main() {
	int i, j, t, n, s;

	// read in number of test cases
	scanf("%d",&t);
	
	for(i = 0; i < t; i++) {
		// for each case read in n
		scanf("%d",&n);
		
		// sum j; where j = 1 to n-1
		s = 0;
		for (j = 1; j <= (n-1); j++) {
			s = s + j;
		} 
		printf("%d\n",s);
	}
	
    return 0;
}
