#include <stdio.h>

int main(void)
{
    int a = 10, b = 20;
    const int *pa = &a; // pa는 a의 주소를 저장하는 상수 포인터 변수

    printf("value of a : %d\n", *pa); // pa가 가리키는 주소의 값을 출력
    pa = &b; // pa는 b의 주소를 저장하는 상수 포인터 변수
    printf("value of b : %d\n", *pa); // pa가 가리키는 주소의 값을 출력
    pa = &a; // pa는 a의 주소를 저장하는 상수 포인터 변수
    a = 20;
    printf("value of a : %d\n", *pa); // pa가 가리키는 주소의 값을 출력

    return 0;
    
}