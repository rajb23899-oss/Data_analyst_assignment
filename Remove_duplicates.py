
string = "manjunatha"
result = ""

for i in string:
    if i not in result:
        result += i
print("Unique string: ",result)