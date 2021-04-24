a=input("a")
b=input("b")
d=input("d")
a=float(a)
b=float(b)
d=float(d)
while True:
    m=(a+b)/2
    g=a**2-2
    f=m**2-2
    if g*f<0:
        b=m
    else:
        a=m
    if abs(a-b) < d or f==0 :
        break
print(m)
