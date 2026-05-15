class Dogland :
    #생성자
    def __init__(self, bopp, iage, stfav, stname) :
        self.bopp = bopp
        self.iage = iage
        self.stfav = stfav
        self.stname = stname
    def outFunction(self) :
        if self.bopp :
            self.iage += 11
        else :
            self.iage -= 11
        if len(self.stfav) > 3 :
            if len(self.stname) > 3 :
                self.iage -= 11
            else :
                self.iage += 11
        else :
            if len(self.stname) > 3 :
                self.iage += 11
            else :
                self.iage -= 121
        for i in range (0, 4) :
            print(f"{self.iage} {self.stfav} {self.stname} ")
            self.iage += self.iage
            print(f"{self.iage} {self.stname} {self.stfav} ")

groomi = Dogland(False, 3, "brother", "goo")
groomi.outFunction()
