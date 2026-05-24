#include <stdio.h>
#include <string.h>
int main()
{
    char a[100] = "kimgroom";
    printf("%d\n", strlen(a));
    //8
    char b[100] = "groomgroom";
    printf("%s\n", strcpy(a, b));
    //groomgroom
    if (strcmp(a, b) == 0) {
        printf("a와 b는 같다\n");
        //이거 출력
    }
    else {
        printf("a와 b는 다르다\n");
        
    }
    strcat(a, b);
    //groomgroomgroomgroom
    printf("%s\n", a);
    
    char* r = strchr(a, 'r');
    printf("%s\n", r);
    //roomgroomgroomgroom
    
    
}
