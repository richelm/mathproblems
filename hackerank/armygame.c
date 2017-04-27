/**
 * FILE: armygame.c
 * DATE: 2017.04.27
 * 
 * A HackerRank Mathematics/Fundamentals problem.
 * 
 * Luke is daydreaming in Math class. He has a sheet of graph paper with 
 * rows and columns, and he imagines that there is an army base in each 
 * cell for a total of bases. He wants to drop supplies at strategic 
 * points on the sheet, marking each drop point with a red dot. If a 
 * base contains at least one package inside or on top of its border 
 * fence, then it's considered to be supplied. 
 * 
 * Given and , what's the minimum number of packages that Luke must 
 * drop to supply all of his bases?
 * 
 * CASE 1: n and m are both even
 * 	minimum number is n/2 * m/2
 * 
 * CASE 2: n or m are odd
 *  minimum number is (n-1) * (m-1)
 * 
 */

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
	
	int n, m, p;

	scanf("%d %d",&n,&m);

	// case one: both n and m are even
	if ((n % 2 == 0) && (m % 2 == 0)) {
		p = n/2 * m/2;
	}
	else {
		p = (n-1) * (m-1);
	}

	printf("minimum number of packages is: %d\n",p);
	
	return 0;
}
