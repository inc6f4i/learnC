#include <stdio.h>
#include <windows.h>

int main(void)
{
    SetConsoleOutputCP(CP_UTF8);

    int a;
    double b;
    char c;

    printf("int형의 변수의 주소 : %u\n", &a);
    printf("double형의 변수의 주소 : %u\n", &b);
    printf("char형의 변수의 주소 : %u\n", &c);

    return 0;

}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         