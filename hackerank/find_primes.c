#include <stdio.h>

/* file: get_primes.c
 * 
 * Find prime numbers between two numbers given as input.
 * 
 */
 
int checkPrimeNumber(int n);
int main() {
	int n1, n2, tmp, i, flag;
	
	// read in numbers
	printf("Enter two positive integers: ");
	scanf("%d %d",&n1,&n2);
	
	// check if n1 < n2, if not swap
	if (n1 > n2) {
		tmp = n1;
		n1 = n2;
		n2 = tmp;
	}
	
	printf("Primes between %d and %d are: ",n1,n2);
	for(i=n1+1; i<n2; ++i)
    {
        // i is a prime number, flag will be equal to 1
        flag = checkPrimeNumber(i);

        if(flag == 1)
            printf("%d ",i);
    }
    printf("\n");
    
    return 0;
}


// user-defined function to check prime number
int checkPrimeNumber(int n)
{
    int j, flag = 1;

    for(j=2; j <= n/2; ++j)
    {
        if (n%j == 0)
        {
            flag =0;
            break;
        }
    }
    return flag;
}
