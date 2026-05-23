#include <stdio.h>
#include <string.h>
char* scr (char a[], char s) {
    char* p;
    p = strchr(a, s);
    //원하는 문자가 시작하는 위치 찾기
    return p;
}
int main() {
    char a[] = "kimgroom";
    char* b = scr(a, 'g');
    printf("%s\n", b);
}
//출력값 groom
