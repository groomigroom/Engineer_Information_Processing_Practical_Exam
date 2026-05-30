inf = 1
while (True) :
    cw = input("이동할 방향을 입력하세요. u 또는 d")
    if inf == 1 and cw == 'd' :
        print("아래로 더 이상 이동할 수 없습니다.")
        continue
    elif inf == 18 and cw == 'u' :
        print("위로 더 이상 이동할 수 없습니다.")
        continue
    elif cw != 'd' and cw != 'u' :
        print("다시 입력하세요")
        continue
    else :
        print("이제 원하시는 층 수를 입력하세요")
        while (True) :
            iwf = int(input("이동할 층을 입력하세요. 1 ~ 18"))
            if iwf == inf :
                print("현재 층을 입력했습니다.")
            elif iwf > 18 or iwf < 1 :
                print("1 ~ 18층 사이의 숫자를 입력하세요")
            elif cw == 'u' and inf > iwf :
                print("현재 층보다 낮은 층으로 올라갈 수 없습니다.")
            elif cw == 'd' and inf < iwf :
                print("현재 층보다 높은 층으로 내려갈 수 없습니다.")
            else :
                print(f"{iwf}층으로 이동하겠습니다.")
                inf = iwf
                break
