#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
/*
 * At the annual meeting of Board of Directors of Acme Inc, every one 
 * starts shaking hands with everyone else in the room. Given the fact 
 * that any two persons shake hand exactly once, Can you tell the total 
 * count of handshakes?
 */
 
int main() {
	int i, j, t, n, s;

	// read in number of test cases
	scanf("%d",&t);
	
	for(i = 0; i < t; i++) {
		// for each case read in the number of directors
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
