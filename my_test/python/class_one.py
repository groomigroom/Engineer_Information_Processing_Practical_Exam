class pllus :
    def __init__ (self, left, right) :
        self.left = left
        self.right = right
        
    def ssuum(self) :
        print(self.left + self.right + self.left)
        
    def avvgg(self) :
        print(int(self.left * self.right / self.left))

pp = pllus(20, 25)
pp.ssuum()
pp.avvgg()
"""
65
25
"""
