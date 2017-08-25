#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

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
