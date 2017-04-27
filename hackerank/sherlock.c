#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

int main() {
    int t, n, i, j, n3, n5;
     
    scanf("%d",&t);
    
    for(i = 0; i < t; i++) {
        scanf("%d ",&n);
        if ((n % 3) == 0) {
          n3 = 0;
          n5 = n;
        }
        else if ((n % 3) == 1) {
          n3 = 10;
          n5 = n - n3;
        }
        else if ((n % 3) == 2) {
          n3 = 5;
          n5 = n - n3;
        }
        
        if ((n < n3) || (n < n5)) {
          printf("-1\n");
        } else {
          for (j = 0; j < n5; j++) {
            printf("5");
          }
          for (j = 0; j < n3; j++) {
            printf("3");
          }
          printf("\n");
        }
    }
    
    return 0;
}
