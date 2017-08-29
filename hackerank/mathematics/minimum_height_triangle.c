#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/* Hackerank
 * Dashboard|Mathematics|Fundamentals|Minimum Height Triangle 
 * 
 * Solved: 8/29/2017
 */


int main() {
    int base, area; 

    scanf("%d %d", &base, &area);
    
    int height = ceil((float)(2.0*area/base));
    
    printf("%d\n", height);
    return 0;
}
