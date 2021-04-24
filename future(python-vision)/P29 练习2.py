x=input("Please input an integer(请输入一个整数）")
x=int(x)
if x>9 and x<100 :
    a=x//10
    b=x%10
    x=10*b+a
    print(x)
