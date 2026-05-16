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
