#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main()
{
  char triples [24][20] = {"윤서연", "정혜린", "이지우", "김채연", "김유연", "김수민", "김나경", "공유빈", "카에데", "서다현", "코토네", "곽연지", "니엔", "박소현", "신위", "마유", "린", "주빈", "정하연", "박시온", "김채원", "설린", "서아", "지연"};
  
  //출력해본거
  for (int i = 0; i < 24; i++) {
    printf("%s\n", triples[i]);
  }
  
  char last_list [4][20];
  
  char monday[4][20];
  
  for(int i = 0; i < 4; i++) {
    strcpy(monday[i], triples[i]);
  }
  
  char tuesday[4][20];
  
  for(int i = 0; i < 4; i++) {
    strcpy(tuesday[i], triples[i + 4]);
  }
  
  char wendesday[4][20];
  
  for(int i = 0; i < 4; i++) {
    strcpy(wendesday[i], triples[i + 8]);
  }
  
  char thursday[4][20];
  
  for(int i = 0; i < 4; i++) {
    strcpy(thursday[i], triples[i + 12]);
  }
  
  char friday[4][20];
  
  for(int i = 0; i < 4; i++) {
    strcpy(friday[i], triples[i + 16]);
  }
  
  //출력 해본거
  for(int i = 0; i < 4; i++) {
    printf("%s\n", friday[i]);
  }
  
  char s1 [8] = "030806";
  char s2 [8] = "070412";
  char s3 [8] = "051024";
  char s4 [8] = "041204";
  char s5 [8] = "010209";
  char s6 [8] = "071003";
  char s7 [8] = "021013";
  char s8 [8] = "050203";
  char s9 [8] = "051220";
  char s10 [8] = "030108";
  char s11 [8] = "040310";
  char s12 [8] = "080108";
  char s13 [8] = "030602";
  char s14 [8] = "021013";
  char s15 [8] = "020525";
  char s16 [8] = "020512";
  char s17 [8] = "060412";
  char s18 [8] = "090116";
  char s19 [8] = "070801";
  char s20 [8] = "060403";
  
  //출력 해본거 생년월일
  for(int i = 0; i < 6; i++) {
    printf("%c\n", s3[i]);
  }

  printf("막내인 서아가 학교에서 시험을 오늘 보게 되어서, 대타를 구해야 합니다.\n");
  printf("오늘은 무슨 요일인가요?");
  char sdayname[20];
  scanf("%s", sdayname);
  
  if (strcmp(sdayname, "월요일") == 0) {
    if((atoi(s1) > atoi(s2)) && (atoi(s1) > atoi(s3)) && (atoi(s1) > atoi(s4))) {
      strcpy(last_list[0], triples[0]);    
    }
    else if ((atoi(s2) > atoi(s1)) && (atoi(s2) > atoi(s3)) && (atoi(s2) > atoi(s4))) {
      strcpy(last_list[0], triples[1]); 
    }
    else if ((atoi(s3) > atoi(s1)) && (atoi(s3) > atoi(s2)) && (atoi(s3) > atoi(s4))) {
      strcpy(last_list[0], triples[2]); 
    }
    else {
      strcpy(last_list[0], triples[3]); 
    }
  }
  else if (strcmp(sdayname, "화요일") == 0) {
    if((atoi(s5) > atoi(s6)) && (atoi(s5) > atoi(s7)) && (atoi(s5) > atoi(s8))) {
      strcpy(last_list[0], triples[4]);    
    }
    else if((atoi(s6) > atoi(s5)) && (atoi(s6) > atoi(s7)) && (atoi(s6) > atoi(s8))) {
      strcpy(last_list[0], triples[5]);    
    }
    else if((atoi(s7) > atoi(s5)) && (atoi(s7) > atoi(s6)) && (atoi(s7) > atoi(s8))) {
      strcpy(last_list[0], triples[6]);    
    }
    else {
      strcpy(last_list[0], triples[7]);
    }
  }
  else if (strcmp(sdayname, "수요일") == 0) {
    if((atoi(s9) > atoi(s10)) && (atoi(s9) > atoi(s11)) && (atoi(s9) > atoi(s12))) {
      strcpy(last_list[0], triples[8]);    
    }
    else if((atoi(s10) > atoi(s9)) && (atoi(s10) > atoi(s11)) && (atoi(s10) > atoi(s12))) {
      strcpy(last_list[0], triples[9]);    
    }
    else if((atoi(s11) > atoi(s9)) && (atoi(s11) > atoi(s10)) && (atoi(s11) > atoi(s12))) {
      strcpy(last_list[0], triples[10]);    
    }
    else {
      strcpy(last_list[0], triples[11]);
    }
  }
  else if (strcmp(sdayname, "목요일") == 0) {
    if((atoi(s13) > atoi(s14)) && (atoi(s13) > atoi(s15)) && (atoi(s13) > atoi(s16))) {
      strcpy(last_list[0], triples[12]);    
    }
    else if((atoi(s14) > atoi(s13)) && (atoi(s14) > atoi(s15)) && (atoi(s14) > atoi(s16))) {
      strcpy(last_list[0], triples[13]);    
    }
    else if((atoi(s15) > atoi(s13)) && (atoi(s15) > atoi(s14)) && (atoi(s15) > atoi(s16))) {
      strcpy(last_list[0], triples[14]);    
    }
    else {
      strcpy(last_list[0], triples[15]);
    }
  }
  else if (strcmp(sdayname, "금요일") == 0) {
    if((atoi(s17) > atoi(s18)) && (atoi(s17) > atoi(s19)) && (atoi(s17) > atoi(s20))) {
      strcpy(last_list[0], triples[16]);    
    }
    else if((atoi(s18) > atoi(s17)) && (atoi(s18) > atoi(s19)) && (atoi(s18) > atoi(s20))) {
      strcpy(last_list[0], triples[17]);    
    }
    else if((atoi(s19) > atoi(s17)) && (atoi(s19) > atoi(s18)) && (atoi(s19) > atoi(s20))) {
      strcpy(last_list[0], triples[18]);    
    }
    else {
      strcpy(last_list[0], triples[19]);
    }
  }
  
  strcpy(last_list[1], triples[20]);
  strcpy(last_list[2], triples[21]);
  strcpy(last_list[3], triples[23]);
  
  printf("오늘은 %s이니 공연에 참여하는 멤버는 ", sdayname);
  for (int i = 0; i < 4; i++) {
    printf("%s, ", last_list[i]);
  }
  printf("입니다.\n");
}
