import numpy as np
X=[]
Y=[]
a=input('输入x轴数据（用空格隔开）')
b=input("输入y轴数据（用空格隔开）")
a=a.split()
b=b.split()
for  i in a:
    X.append(float(i))
for i in b:
    Y.append(float(i))
z1 = np.polyfit(X, Y, 1)  
p1 = np.poly1d(z1)
print(z1)  
print(p1) 
