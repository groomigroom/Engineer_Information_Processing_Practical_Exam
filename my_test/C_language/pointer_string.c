#include <stdio.h>
int lala(char a[]) {
    char* p;
    p = a;
    while (*p != '\0') {
        printf("%c", *p);
        p++;
    }
}
int main() {
    char b[] = "groom"; 
    lala(b);
    return 0;
}
//출력값 groom
