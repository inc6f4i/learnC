#include <stdio.h>

int main(void)
{
    int a;
    int *pa;

    pa = &a; // pa는 a의 주소를 저장하는 포인터 변수
    *pa = 10; // pa가 가리키는 주소에 10을 저장

    printf("print pointer value : %d\n", *pa); // pa가 가리키는 주소의 값을 출력
    printf("print variable value : %d\n", a); // a의 값을 출력

    return 0;
}