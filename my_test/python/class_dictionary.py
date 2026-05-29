class kimgroom :
    def set_name (self, name) :
        self.name = name
    def get_name_part (self) :
      return self.name['name_part']
    def favorite (self) :
      return self.name['favorite']
    def hobby (self) :
      return self.name['hobby']
  
  
name = kimgroom()
name.set_name({
    "name_part": "kimgroom",
    "favorite": "간식",
    "hobby": "잠자기"
})

print(name.get_name_part())
print(name.favorite())
print(name.hobby())

"""
kimgroom
간식
잠자기
"""
