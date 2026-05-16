public class Main {
  public static int sangsung(String st_mytype, String st_juktype, int sang_same) {
    if (st_mytype == "불꽃") {
      if ((st_juktype == "불꽃") || (st_juktype == "물") || (st_juktype == "얼음")) {
        sang_same += 1;
        System.out.println(sang_same);
      }
    }
    return sang_same;
  }
  public static void main(String[] args) {
    System.out.println("Hello, World!");
    int same = 0;
    same = sangsung("불꽃", "얼음", same);
  }
/*    
def sangsung (st_mytype, st_juktype) : 
  global win, lose, same


      same += 1
    elif st_juktype == "풀" :
      win += 1
    else :
      lose += 1
  
  elif st_mytype == "전기" :
    if st_juktype == "전기" or st_juktype == "얼음" or st_juktype == "풀" :
      same += 1
    elif st_juktype == "불꽃" :
      win += 1
    else :
      lose += 1

  elif st_mytype == "물" :
    if st_juktype == "물" or st_juktype == "풀" or st_juktype == "불꽃" :
      same += 1
    elif st_juktype == "전기" :
      win += 1
    else :
      lose += 1
  
  elif st_mytype == "얼음" :
    if st_juktype == "얼음" or st_juktype == "전기" or st_juktype == "불꽃" :
      same += 1
    elif st_juktype == "물" :
      win += 1
    else :
      lose += 1

  else :
    if st_juktype == "풀" or st_juktype == "전기" or st_juktype == "물" :
      same += 1
    elif st_juktype == "얼음" :
      win += 1
    else :
      lose += 1

  return win, lose, same

win = 0
same = 0
lose = 0

sangsung ("풀", "얼음")
sangsung ("불꽃", "물")
sangsung ("불꽃", "풀")

  
print(f"승: {win}, 패: {lose}, 무승부: {same}회입니다.")


#불꽃->전기->물->얼음->풀->불꽃
*/
}
