#include <stdio.h>

int main(void)
{
    int a = 10, b = 15, total;
    double avg;
    int *pa, *pb;
    int *pt = &total;
    double *pg = &avg;

    pa = &a; // pa는 a의 주소를 저장하는 포인터 변수
    pb = &b; // pb는 b의 주소를 저장하는 포인터 변수

    *pt = *pa + *pb; // pt가 가리키는 주소에 a와 b의 합을 저장
    *pg = *pt / 2.0; // pg가 가리키는 주소에 total의 평균을 저장

    printf("print two int values : %d, %d\n", *pa, *pb); // pa와 pb가 가리키는 주소의 값을 출력
    printf("print two int sum : %d\n", *pt); // pt가 가리키는 주소의 값을 출력 
    printf("print two int average : %.1lf\n", *pg); // pg가 가리키는 주소의 값을 출력
    
    return 0;
}