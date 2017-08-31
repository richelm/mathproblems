#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/**
 * Problem: Dashboard|Alogrithms|Warmup|Birthday Cake Candles
 * 
 * Colleen is turning years old! Therefore, she has candles of various 
 * heights on her cake, and candle has height . Because the taller 
 * candles tower over the shorter ones, Colleen can only blow out the 
 * tallest candles.
 * 
 * Given the for each individual candle, find and print the number of 
 * candles she can successfully blow out. 
 * 
 * Solved: 8/28/2017
 * 
 */

int main() {
    int n, i, h, max, cnt; 
    scanf("%i", &n);

	max = 0;
	cnt = 0;
    for(i = 0; i < n; i++){
       scanf("%i",&h);
       printf("h: %d, max: %d, cnt: %d\n",h,max,cnt);
       if (h > max) {
		   cnt = 1;
		   max = h;
	   }
	   else if (h == max) {
		   cnt++;
	   }
    }
    printf("%d\n", cnt);
    return 0;
}
