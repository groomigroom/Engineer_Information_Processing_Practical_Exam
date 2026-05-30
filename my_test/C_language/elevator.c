#include <stdio.h>
int main()
{
    char cw;
    int inf = 1;
    int iwf;
    while (1) {
        printf("이동할 방향을 입력하세요. u 또는 d");
        scanf(" %c", &cw);
        if (inf == 1 && cw == 'd') {
            printf("아래로 더 이상 이동할 수 없습니다.\n");
            continue;
        }
        else if (inf == 18 && cw == 'u') {
            printf("위로 더 이상 이동할 수 없습니다.\n");
            continue;
        }
        else if (cw != 'd' && cw != 'u') {
            printf("다시 입력하세요\n");
            continue;
        }
        else {
            printf("이제 원하시는 층 수를 입력하세요\n");
            while (1) {
                printf("이동할 층을 입력하세요. 1 ~ 18");
                scanf(" %d", &iwf);
                if (iwf == inf) {
                    printf("현재 층을 입력했습니다.\n");
                    continue;
                }
                else if (iwf > 18 || iwf < 1) {
                    printf("1 ~ 18층 사이의 숫자를 입력하세요\n");
                }
                else if (cw == 'u' && inf > iwf) {
                    printf("현재 층보다 낮은 층으로 올라갈 수 없습니다.\n");
                    continue;
                }
                else if (cw == 'd' && inf < iwf) {
                    printf("현재 층보다 높은 층으로 내려갈 수 없습니다.\n");
                    continue;
                }
                else {
                    printf("%d층으로 이동하겠습니다.\n", iwf);
                    inf = iwf;
                    break; 
                }
            }
        }
        
    }
}
