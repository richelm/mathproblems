/* Example using strncpy by TechOnTheNet.com */

#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[])
{
    /* Create an example variable capable of holding 50 characters */
    char example[50];

    /* Copy 16 characters into the example variable
     from the string "TechOnTheNet.com knows strncpy" */
    strncpy (example, "TechOnTheNet.com knows strncpy!", 16);

    /* Add the required NULL to terminate the copied string */
    /* strncpy does not do this for you! */
    example[16] = '\0';

    /* Display the contents of the example variable to the screen */
    printf("%s\n", example);

    return 0;
}
