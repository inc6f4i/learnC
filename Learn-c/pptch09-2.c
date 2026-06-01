#include <stdio.h>

int main()
{
    char stack[5];
    int top = 0;

    char carName = 'A';
    int select = 9;

    while (select != 3)
    {
        printf("<1>자동차 넣기 <2>자동차뺴기 <3>끝:");
        scanf("%d", &select);

    

    switch(select)
    {

        case 1 :
        if (top == 5)
        {
            printf("터널이 꽉 찼습니다.\n");
        }
        else
        {
            stack[top] = carName++;
                printf("%c자동차가 터널에 들어감\n", stack[top]);
                top++;
        }
        break;

    case 2 :
        if (top == 0)
        {
            printf("터널이 비었습니다.\n");
        }
        else
        {
            top --;
            printf("%c자동차가 터널에서 나옴\n", stack[top]);
            stack[top] = ' ';
        }
        break;
 
    case 3  : 
        printf("현재 너널에 %d대가 있음.\n", top);
        printf("프로그램을 종료합니다.\n");
        break;
 
        default :
        printf("잘못된입력입니다\n");
    }
    }   

}