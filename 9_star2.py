with open('9.in') as f:inp=[int(c) for c in f.read()[:-1]]
d,f,i=(inp[::2],inp[1::2]+[0],[x for x in range(0,1+int(len(inp)/2))]);o=[]
def s(l,i,j):l.insert(i+1,l.pop(j));return l
f2=[0 for x in f];m=[]

c=xi=len(d)-1
while c>0:
 y=0;x=d[xi]
 for fi,fx in enumerate(f):
  if fx>=x and fi<xi:
   f2[xi]+=d[xi]+f[xi]
   i=s(i,fi,xi);d=s(d,fi,xi);f=s(f,fi,xi)
   f[fi+1]=f[fi]-x;f[fi]=0
   xi+=1
   break
 xi-=1;c-=1
for v,n,f in zip(i,d,[x+y for x,y in zip(f,f2)]):
 m+=n*[v];m+=f*[0]
print(sum([x*i for x,i in enumerate(m)]))
