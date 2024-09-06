#include <stdio.h>

#include "myexample.h"

#include <myroutine.h>

extern void taylor_series_(double* x, int* n);

int main(int argv, char** argc)
{
    printf("Hello, world!\n");

    double x = 30.0;
    int n = 10;

    taylor_series_(&x, &n);

    myroutine();

    return 0;
}