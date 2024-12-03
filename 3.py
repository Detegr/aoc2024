import re
with open('3.in.big','r') as f: d=f.read()

# star 1
r = r'mul\((\d*),(\d*)\)'
[print(x) for x in re.findall(r,d)]
print(sum([(int(x)*int(y)) for (x,y) in re.findall(r,d)]))

# star 2
ok = True
ms = []
for m in re.findall(r'(mul\(\d*,\d*\)|do\(\)|don\'t\(\))',d):
    if ok and m not in ["do()","don't()"]:
        ms.append(*[int(x)*int(y) for (x,y) in re.findall(r,m)])
        continue
    ok = m == "do()"
print(sum(ms))
