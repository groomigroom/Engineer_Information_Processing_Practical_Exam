sum = 0
min = 0
for i in range (1, 8, 2) :
    for j in range (1, 9) :
        for k in range (11) :
            for l in range (2, 11, 3) :
                for m in range (3, 12, 2) :
                    for n in range (2, 10, 1) :
                        for o in range (10, 1, -1) :
                            for p in range (0, 11, 2) :
                                for q in range (0, 11) :
                                    for r in range (1, 12, 4) :
                                        min -= 1
                                    sum += 1
                                min -= 1
                            sum += 1
                        min -= 1
                    sum += 1
                min -= 1
            sum += 1
        min -= 1
    sum += 1

print(sum)
print(min)

"""
25476356
-77595968
"""
