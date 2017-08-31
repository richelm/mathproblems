#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Implementation|Breaking the Records
 * 
 * Maria plays games of college basketball in a season. Because she 
 * wants to go pro, she tracks her points scored per game sequentially 
 * in an array defined as . After each game , she checks to see if score
 * breaks her record for most or least points scored so far during that
 * season.
 * 
 * Given Maria's array of for a season of games, find and print the 
 * number of times she breaks her record for most and least points 
 * scored during the season.
 * 
 * Solved: 8/31/2017
 * 
 */

int main() {
    int n, i;
    int s0, s;
    int hscr, lscr, hcnt, lcnt;
    
    scanf("%d",&n);
    scanf("%d",&s0);
    hscr = s0;
    lscr = s0;
    hcnt = 0;
    lcnt = 0;
    
    for(i = 1; i < n; i++){
		scanf("%d",&s);
		if (s > hscr) {
			hcnt++;
			hscr = s;
		}
		if (s < lscr) {
			lcnt++;
			lscr = s;
		}
    }
    
    printf("%d %d\n", hcnt, lcnt);

    return 0;
}
