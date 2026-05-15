#include <stdio.h>

struct student {
  char name[12];
  int kor, math, sum, total;
};

int main() {
  struct student s[3] = {{"김구름", 80, 92}, {"김구구", 72, 99}, {"김구루움", 12, 44}};
}
