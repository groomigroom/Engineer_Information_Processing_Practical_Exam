#include <stdio.h>
int ssuum(int left, int right) {
    printf("%d\n", left + right + left);
}

int avvgg(int left, int right) {
    printf("%d\n", left * right / left);
}

int main()
{
    ssuum(20, 25);
    avvgg(20, 25);
}
//65
//25
