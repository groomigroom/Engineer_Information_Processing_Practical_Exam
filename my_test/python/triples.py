triples = ["윤서연", "정혜린", "이지우", "김채연", "김유연", "김수민", "김나경", "공유빈", "카에데", "서다현", "코토네", "곽연지", "니엔", "박소현", "신위", "마유", "린", "주빈", "정하연", "박시온", "김채원", "설린", "서아", "지연"]
#print(triples)
last_list = []

monday = triples[:4]
tuesday = triples[4:8]
wendesday = triples[8:12]
thursday = triples[12:16]
friday = triples[16:20]

"""
print(monday)
print(tuesday)
print(wendesday)
print(thursday)
print(friday)
"""

s1 = "030806"
s2 = "070412"
s3 = "051024"
s4 = "041204"
s5 = "010209"
s6 = "071003"
s7 = "021013"
s8 = "050203"
s9 = "051220"
s10 = "030108"
s11 = "040310"
s12 = "080108"
s13 = "030602"
s14 = "021013"
s15 = "020525"
s16 = "020512"
s17 = "060412"
s18 = "090116"
s19 = "070801"
s20 = "060403"

print("막내인 서아가 학교에서 시험을 오늘 보게 되어서, 대타를 구해야 합니다.")
today = input("오늘은 무슨 요일인가요?")


if (today == "월요일"):
    if (int(s1) > int(s2) and int(s1) > int(s3) and int(s1) > int(s4)):
        last_list.append(triples[0])
    elif (int(s2) > int(s1) and int(s2) > int(s3) and int(s2) > int(s4)):
        last_list.append(triples[1])
    elif (int(s3) > int(s1) and int(s3) > int(s2) and int(s3) > int(s4)):
        last_list.append(triples[2])
    else:
        last_list.append(triples[3])
elif (today == "화요일"):
    if (int(s5) > int(s6) and int(s5) > int(s7) and int(s5) > int(s8)):
        last_list.append(triples[4])
    elif (int(s6) > int(s5) and int(s6) > int(s7) and int(s6) > int(s8)):
        last_list.append(triples[5])
    elif (int(s7) > int(s5) and int(s7) > int(s6) and int(s7) > int(s8)):
        last_list.append(triples[6])
    else:
        last_list.append(triples[7])
elif (today == "수요일"):
    if (int(s9) > int(s10) and int(s9) > int(s11) and int(s9) > int(s12)):
        last_list.append(triples[8])
    elif (int(s10) > int(s9) and int(s10) > int(s11) and int(s10) > int(s12)):
        last_list.append(triples[9])
    elif (int(s11) > int(s9) and int(s11) > int(s10) and int(s11) > int(s12)):
        last_list.append(triples[10])
    else:
        last_list.append(triples[11])
elif (today == "목요일"):
    if (int(s13) > int(s14) and int(s13) > int(s15) and int(s13) > int(s16)):
        last_list.append(triples[12])
    elif (int(s14) > int(s13) and int(s14) > int(s15) and int(s14) > int(s16)):
        last_list.append(triples[13])
    elif (int(s15) > int(s13) and int(s15) > int(s14) and int(s15) > int(s16)):
        last_list.append(triples[14])
    else:
        last_list.append(triples[15])
elif (today == "금요일"):
    if (int(s17) > int(s18) and int(s17) > int(s19) and int(s17) > int(s20)):
        last_list.append(triples[16])
    elif (int(s18) > int(s17) and int(s18) > int(s19) and int(s18) > int(s20)):
        last_list.append(triples[17])
    elif (int(s19) > int(s17) and int(s19) > int(s18) and int(s19) > int(s20)):
        last_list.append(triples[18])
    else:
        last_list.append(triples[19])


last_list.extend([triples[20], triples[21], triples[23]])

print(f"오늘은 {today}이니 공연에 참여하는 멤버는 {last_list}입니다.")

