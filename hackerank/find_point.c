#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
	int i, n, px, py, qx, qy, rx, ry;

	scanf("%d",&n);
	
	for(i = 0; i < n; i++) {
		scanf("%d %d %d %d", &px,&py,&qx,&qy);
		rx = qx + (qx - px);
		ry = qy + (qy - py);
		printf("%d %d\n",rx,ry);
	}
	
    return 0;
}
