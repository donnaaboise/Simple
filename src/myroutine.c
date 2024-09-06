#include <myroutine.h>
#include <stdio.h>

void myroutine()
{
    /* Do something */
    int i;
    double result;

    printf("Printing a table of results:\n");
    printf("%-10s %-10s\n", "Index", "Result");

    for (i = 1; i <= 10; i++) {
        result = i * i;  
        printf("%-10d %-10.2f\n", i, result);
    }

}