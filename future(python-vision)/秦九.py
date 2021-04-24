n=int(input("n"))
a=int(input("an"))
x=int(input("x"))
v=a
i=n-1
while i>=0:
    print ("i=",i)
    a=int(input ("ai="))
    v=v*x+a
    i=i-1
print(v)
