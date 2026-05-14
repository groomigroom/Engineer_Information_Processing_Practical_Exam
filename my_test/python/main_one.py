inum1, inum2, inum3, inum4, inum5 = 0, 0, 0, 0, 0
iarr = [[0] * 5 for _ in range(3)]

for inum1 in range(3) :
    for inum2 in range(5) :
        inum3 += 3
        iarr[inum1][inum2] = inum3

for inum4 in range(3) :
    for inum5 in range(5) :
        print(iarr[inum4][inum5], end=" ")
    print("\n")

inum6 = 0
inum6 = iarr[0][1] + iarr[2][4]

inum7 = 0
inum7 = (inum6 := inum6 - 1)


inum8 = 0
inum8 = inum6
inum6 += 1

print(inum8)

"""
3 6 9 12 15 

18 21 24 27 30 

33 36 39 42 45 

50
"""
