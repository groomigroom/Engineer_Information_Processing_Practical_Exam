#include <stdio.h>
#include <string.h>

void sangsung(char st_mytype[], char st_juktype[]) {

  

  if (strcmp(st_mytype, "불꽃") == 0) {
    if ((strcmp(st_juktype, "불꽃") == 0) || (strcmp(st_juktype, "물") == 0) || (strcmp(st_juktype, "얼음") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "풀") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "전기") == 0) {
    if ((strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "얼음") == 0) || (strcmp(st_juktype, "풀") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "불꽃") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "물") == 0) {
    if ((strcmp(st_juktype, "물") == 0) || (strcmp(st_juktype, "풀") == 0) || (strcmp(st_juktype, "불꽃") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "전기") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "얼음") == 0) {
    if ((strcmp(st_juktype, "얼음") == 0) || (strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "불꽃") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "물") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }

  else {
    if ((strcmp(st_juktype, "풀") == 0) || (strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "물") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "얼음") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  return win, lose, same;
}

int main()
{
  int win = 0;
  int same = 0;
  int lose = 0;
  char st_mytype[50] = "풀"; 
  char st_juktype[50] = "얼음";
  void sangsung(st_mytype, st_juktype);
  
  printf("승: %d회, 패: %d회, 무승부: %d회입니다.", win, lose, same);
}

//불꽃->전기->물->얼음->풀->불꽃
/*
void sangsung(char st_mytype[], char st_juktype[], int* win, int* lose, int* same)
sangsung(st_mytype, st_juktype, &win, &lose, &same);
*/

/*
#include <stdio.h>
#include <string.h>

void sangsung(char st_mytype[], char st_juktype[]) {

  

  if (strcmp(st_mytype, "불꽃") == 0) {
    if ((strcmp(st_juktype, "불꽃") == 0) || (strcmp(st_juktype, "물") == 0) || (strcmp(st_juktype, "얼음") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "풀") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "전기") == 0) {
    if ((strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "얼음") == 0) || (strcmp(st_juktype, "풀") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "불꽃") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "물") == 0) {
    if ((strcmp(st_juktype, "물") == 0) || (strcmp(st_juktype, "풀") == 0) || (strcmp(st_juktype, "불꽃") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "전기") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "얼음") == 0) {
    if ((strcmp(st_juktype, "얼음") == 0) || (strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "불꽃") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "물") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }

  else {
    if ((strcmp(st_juktype, "풀") == 0) || (strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "물") == 0)) {
      same += 1;
    }
    else if (strcmp(st_juktype, "얼음") == 0) {
      win += 1;
    }
    else {
      lose += 1;
    }
  }
  return win, lose, same;
}

int main()
{
  int win = 0;
  int same = 0;
  int lose = 0;
  char st_mytype[50] = "풀"; 
  char st_juktype[50] = "얼음";
  void sangsung(st_mytype, st_juktype);
  
  printf("승: %d회, 패: %d회, 무승부: %d회입니다.", win, lose, same);
}

//불꽃->전기->물->얼음->풀->불꽃
/*
void sangsung(char st_mytype[], char st_juktype[], int* win, int* lose, int* same)
sangsung(st_mytype, st_juktype, &win, &lose, &same);
*/


/*
올려주신 코드에서 에러가 발생하는 이유는 크게 세 가지입니다. 질문자님이 코드 맨 밑에 주석으로 적어두신 포인터(int*)를 사용하는 방식이 바로 이 문제를 해결할 수 있는 정확한 정답입니다!

기존 코드에서 왜 에러가 났는지 구체적인 원인과 올바르게 수정된 코드를 정리해 드릴게요.

1. 주요 에러 원인 분석
① 변수의 유효 범위(Scope) 문제
main 함수 내부에 선언된 win, same, lose 변수는 main 함수 안에서만 존재하고 사용할 수 있는 지역 변수입니다. sangsung 함수는 main 함수 내부에 있는 변수들을 알지 못하므로, 함수 내부에서 win += 1; 등을 실행하려고 하면 "선언되지 않은 변수(Undeclared identifier)" 에러가 발생합니다.

② void 함수와 잘못된 return 문
함수 정의부 맨 앞에 void sangsung(...)이라고 적으셨는데, void는 "이 함수는 아무것도 반환(return)하지 않는다"는 의미입니다. 그런데 함수 마지막에 return win, lose, same;을 사용하여 값을 반환하려고 했기 때문에 에러가 발생합니다.

참고: C언어에서는 return a, b, c; 처럼 쉼표로 나열하더라도 여러 개의 값을 동시에 반환할 수 없습니다. (C언어의 쉼표 연산자 규칙상 맨 마지막 값 하나만 반환하려고 시도하게 됩니다.)

③ 잘못된 함수 호출 방식
main 함수 안에서 함수를 실행할 때 void sangsung(st_mytype, st_juktype);이라고 선언문처럼 작성하셨습니다. 이미 위에서 함수 정의를 마쳤기 때문에, 호출할 때는 앞에 void를 빼고 sangsung(st_mytype, st_juktype); 형태로 작성해야 합니다.

2. 올바른 해결 방법: 포인터(int*) 활용
C언어에서 다른 함수(sangsung)를 통해 main 함수에 있는 변수의 값을 직접 바꾸고 싶을 때는, 변수의 값이 아니라 변수가 저장된 메모리의 주소(&)를 넘겨주어야 합니다. 이것을 참조에 의한 호출(Call by Reference)이라고 합니다.

주석으로 적어주신 아이디어를 반영하여 올바르게 수정한 전체 코드는 다음과 같습니다.

C

#include <stdio.h>
#include <string.h>

// 매개변수로 int형 포인터(int*)들을 받아 main 함수의 변수 주소를 참조합니다.
void sangsung(char st_mytype[], char st_juktype[], int* win, int* lose, int* same) {

  if (strcmp(st_mytype, "불꽃") == 0) {
    if ((strcmp(st_juktype, "불꽃") == 0) || (strcmp(st_juktype, "물") == 0) || (strcmp(st_juktype, "얼음") == 0)) {
      *same += 1; // *을 붙여 주소가 가리키는 실제 변수의 값을 1 증가시킵니다.
    }
    else if (strcmp(st_juktype, "풀") == 0) {
      *win += 1;
    }
    else {
      *lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "전기") == 0) {
    if ((strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "얼음") == 0) || (strcmp(st_juktype, "풀") == 0)) {
      *same += 1;
    }
    else if (strcmp(st_juktype, "불꽃") == 0) {
      *win += 1;
    }
    else {
      *lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "물") == 0) {
    if ((strcmp(st_juktype, "물") == 0) || (strcmp(st_juktype, "풀") == 0) || (strcmp(st_juktype, "불꽃") == 0)) {
      *same += 1;
    }
    else if (strcmp(st_juktype, "전기") == 0) {
      *win += 1;
    }
    else {
      *lose += 1;
    }
  }
  
  else if (strcmp(st_mytype, "얼음") == 0) {
    if ((strcmp(st_juktype, "얼음") == 0) || (strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "불꽃") == 0)) {
      *same += 1;
    }
    else if (strcmp(st_juktype, "물") == 0) {
      *win += 1;
    }
    else {
      *lose += 1;
    }
  }

  // st_mytype이 "풀"인 경우
  else {
    if ((strcmp(st_juktype, "풀") == 0) || (strcmp(st_juktype, "전기") == 0) || (strcmp(st_juktype, "물") == 0)) {
      *same += 1;
    }
    else if (strcmp(st_juktype, "얼음") == 0) {
      *win += 1;
    }
    else {
      *lose += 1;
    }
  }
  // void 함수이므로 값을 반환하는 return 문은 필요 없습니다.
}

int main()
{
  int win = 0;
  int same = 0;
  int lose = 0;
  char st_mytype[50] = "풀"; 
  char st_juktype[50] = "얼음";
  
  // 함수를 호출할 때 앞에 void를 빼고, 변수 앞에 주소 연산자(&)를 붙여서 넘겨줍니다.
  sangsung(st_mytype, st_juktype, &win, &lose, &same);
  
  printf("승: %d회, 패: %d회, 무승부: %d회입니다.\n", win, lose, same);
  
  return 0;
}
💡 핵심 요약
sangsung 함수 정의에서 변수들 앞에 int*를 붙여 포인터 변수로 만듭니다.

함수 내부에서 값을 바꿀 때는 *win += 1; 처럼 역참조 연산자(*)를 사용합니다.

main 함수에서 함수를 호출할 때는 변수의 주소를 넘겨주어야 하므로 주소 연산자(&)를 붙여 &win, &lose, &same으로 전달합니다.

*/
