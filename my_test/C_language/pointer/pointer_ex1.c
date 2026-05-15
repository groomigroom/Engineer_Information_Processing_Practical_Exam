#include <stdio.h>

struct student {
  char name[12];
  int kor, math, sum, total;
};

int main() {
  struct student s[3] = {{"김구름", 80, 92}, {"김구구", 72, 99}, {"김구루움", 12, 44}};
  struct student *p;
  p = &s[0];
  
  (p + 1) -> sum = (p + 1) -> kor + (p + 2) -> math;
  (p + 1) -> total = (p + 1) -> sum + p -> kor + p -> math;
  
}
