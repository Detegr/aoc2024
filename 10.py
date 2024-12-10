i=[]
with open("10.in") as f:
 l=f.readlines();wi=len(l[0])-1;[[i.append(int(c)) for c in l[:-1]] for l in l]
def oob(p):return p<0 or p>=wi
def c(i):return [int(i/wi),i-(wi*int(i/wi))]
def v(y,x):return i[x+y*wi]
def n(y,x):
 o=[]
 for dx,dy in [[-1,0],[1,0],[0,1],[0,-1]]:
  xx=x+dx;yy=y+dy
  if not(oob(xx) or oob(yy)):o.append((yy,xx))
 return o
def w(y,x,prt):
 o=[]
 ns=[]
 if v(y,x)==9:
  return ((y,x)) if prt==1 else 1
 for nb in n(y,x):
  if 1+v(y,x)==v(*nb):
   ns.append(nb)
 for p in ns:
  o.append(w(*p,prt))
 return o
def f(l):
 o=[]
 for x in l:
  if type(x) is list:
   for x in f(x):o.append(x)
  else:o.append(x)
 return o

def star1(p):return len(list(dict.fromkeys(f(w(*p,1)))))
def star2(p):return sum(f(w(*p,2)))

print(sum([star1(c(i)) for i,v in enumerate(i) if v==0]))
print(sum([star2(c(i)) for i,v in enumerate(i) if v==0]))
