a=int(input("a"))
b=int(input("b"))
d=0
while True:
    if a/2-a//2==0 and b/2-b//2==0:
        a=a/2
        b=b/2
        d+=1
    else:
        break
if a>=b:
    ma=a
    mi=b
else:
    ma=b
    mi=a
c=ma-mi
while True:
    if c>mi:
        c=c-mi
    elif c<mi:
        d=mi-c
        mi=c
        c=d
    else:
        break
c=c*d*2
print(c)
        

