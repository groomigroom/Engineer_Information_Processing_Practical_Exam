kimgroom = ["김", "구", "름"]

del kimgroom[0]
print(kimgroom)
kimgroom.remove("구")
print(kimgroom)
print("구" in kimgroom)
print("구" not in kimgroom)
kimgroom.clear()
print(kimgroom)
"""
["구", "름"]

["름"]

False

True

[]
"""
