#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>


int main() {
	
	int n, i;
	
	printf("Enter an integer greater than 1: ");
	scanf("%d", &n);

	// get all 2 factors
	while (n % 2 == 0) {
		printf("%d ", 2);
		n = n/2;
	}
	
	// at this point n should be odd
	for (i = 3; i <= sqrt(n); i = i + 2) {
		while (n % i == 0) {
			printf("%d ", i);
			n = n/i;
		}
	}
	
	// case where n is a prime number greater than 2
	if (n > 2) {
		printf("%d ", n);
	}
	
	printf("\n");
	
	return 0;
}
