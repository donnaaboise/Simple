#include <stdio.h>

#include "myexample.h"

#include <myroutine.h>

void myexample_fort_();

int main(int argv, char** argc)
{
    printf("Hello, world!\n");

    myroutine();

    myexample_fort_();

    return 0;
}