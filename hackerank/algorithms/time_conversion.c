#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

/*
 * 0123456789
 * 12:35:46PM
 */
 
int main() {
	char hr[2];
	char base[6];
	char ms[6];
	
	int nhr;
    char* s = (char *)malloc(512000 * sizeof(char));
    scanf("%s", s);

	strncpy (hr, s, 2);
	hr[2] = '\0';
	nhr = atoi(hr); 
	if (s[8] == 'P') {
		if (nhr != 12) {
			nhr = (nhr + 12) % 24;
		}
	}
	if (s[8] == 'A') {
		if (nhr == 12) {
			nhr = 0;
		}
	}
	
	strncpy(base, &s[2],6);
	base[6] = '\0';
		
    printf("%02.0f%s\n", (double)nhr,base);
    
    return 0;
}
