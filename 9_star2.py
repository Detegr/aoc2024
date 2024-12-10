with open('9.in') as f:inp=[int(c) for c in f.read()[:-1]]                  # input
d,f,i=(inp[::2],inp[1::2]+[0],[x for x in range(0,1+int(len(inp)/2))]);o=[] # disk, free space, indices
def mv(l,i,j):l.insert(i+1,l.pop(j));return l                               # move element in a list from j to right side of i
f2=[0 for x in f];m=[]                                                      # helper free space list to not clobber the main one, map
c=bi=len(d)-1                                                               # loop counter, index from the end
while c>0:
 b=d[bi]                                                                    # disk block
 for fbi,fb in enumerate(f):                                                # free block index and free block
  if fb>=b and fbi<bi:                                                      # find the right space, don't go too much to right
   f2[bi]+=d[bi]+f[bi]                                                      # update the free space gained from moving the block
   i=mv(i,fbi,bi);d=mv(d,fbi,bi);f=mv(f,fbi,bi)                             # move the block, update i,d,f
   f[fbi+1]=f[fbi]-b;f[fbi]=0                                               # reduce the free space from the destination. move free space info right by one
   bi+=1                                                                    # add one to the reversed counter as the index stays the same if the block moves
   break
 bi-=1;c-=1                                                                 # reduce loop counters
for v,n,f in zip(i,d,[x+y for x,y in zip(f,f2)]):                           # sum values in f and f2 to get the resulting free space
 m+=n*[v];m+=f*[0]                                                          # generate the "map". take n times v and combine with f times 0 for free space
print(sum([x*i for x,i in enumerate(m)]))                                   # calculate checksum by multiplying the index and the value
