#include <stdio.h>
#include <stdbool.h>
#include <string.h>

// 1. 자바의 클래스 속성을 담을 구조체 정의
typedef struct {
    bool bopp;
    int iage;
    char stfav[20];
    char stname[20];
} Dogland;

// 2. 자바의 생성자 역할을 하는 초기화 함수
void initDogland(Dogland* self, bool bopp, int iage, const char* stfav, const char* stname) {
    self->bopp = bopp;
    self->iage = iage;
    strcpy(self->stfav, stfav);   // C언어 문자열 복사
    strcpy(self->stname, stname); // C언어 문자열 복사
}

// 3. 자바의 outFunction 메서드 구현 (구조체 포인터를 인자로 받음)
void outFunction(Dogland* self) {
    if (self->bopp) {
        self->iage += 11;
    } else {
        self->iage -= 11;
    }
    
    // 문자열 길이는 strlen() 함수 사용
    if (strlen(self->stfav) > 3) {
        if (strlen(self->stname) > 3) {
            self->iage -= 11;
        } else {
            self->iage += 11;
        }
    } else {
        if (strlen(self->stname) > 3) {
            self->iage += 11;
        } else {
            self->iage -= 121;
        }
    }
    
    for (int i = 0; i < 4; i++) {
        printf("%d %s %s \n", self->iage, self->stfav, self->stname);
        self->iage += self->iage;
        printf("%d %s %s \n", self->iage, self->stname, self->stfav);
    }
}

// 4. 자바의 main 메서드와 동일한 진입점
int main() {
    Dogland groomi; // 구조체 변수 선언
    
    // 생성자 함수 호출을 통해 값 초기화
    initDogland(&groomi, false, 3, "brother", "goo");
    
    // 메서드 실행
    outFunction(&groomi);
    
    return 0;
}
