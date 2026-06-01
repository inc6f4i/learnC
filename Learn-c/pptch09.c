#include <stdio.h>

int main()
{
    char stack[5];
    int top = 0;

    stack[top]='A';
    printf("%c자동차가 터널에 들어감\n", stack[top]);
    top ++;

    stack[top]='B';
    printf("%c자동차가 터널에 들어감\n", stack[top]);
    top ++;

    stack[top]='C';
    printf("%c자동차가 터널에 들어감\n", stack[top]);
    top ++;
    printf("\n");
    
    
    top --;
    printf("%c자동차가 터널에서 나옴\n", stack[top]);
    stack[top] = ' ';
    top --;
    printf("%c자동차가 터널에서 나옴\n", stack[top]);
    stack[top] = ' ';
    top --;
    printf("%c자동차가 터널에서 나옴\n", stack[top]);
    stack[top] = ' ';

}