#include <stdio.h>

struct student {
  char name[12];
  int kor, math, sum, total;
};

int main() {
  struct student s[3] = {{"김구름", 80, 92}, {"김구구", 72, 99}, {"김구루움", 12, 44}};
  //s[0], s[1], s[2]로 3가지 구조체를 받음??
  struct student *p;
  //주소 값을 받는 변수?
  p = &s[0];
  
  (p + 1) -> sum = (p + 1) -> kor + (p + 2) -> math;
  (p + 1) -> total = (p + 1) -> sum + p -> kor + p -> math;
  
  printf("%d\n", (p + 1) -> sum + (p + 1) -> total);
}
