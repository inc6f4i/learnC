#include<stdio.h>

int main(void)
{
    int a;
    int *pa;

    pa = &a;
    *pa = 10;

    printf("print value a by pointer : %d\n", *pa);
    printf("print variable value a : %d\n", a);

    return 0;

}