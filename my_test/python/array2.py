def f(a) :
  m = [[x] for x in a]
  b = m[:]
  c = []
    
  for i in range(0, len(b)) :
    c.append(b[(i + 1) % len(b)])
  return c
  
  
y = [1, 2, 3, 4]

d= f(y)
print(int(d[2][0]) + int(d[3][0]))

#5
