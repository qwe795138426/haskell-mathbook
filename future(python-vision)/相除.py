m=int(input("m"))
n=int(input("n"))
while True:
    r=m%n
    m=n
    n=r
    if r==0:
        break
print(m)
