import random
# 初始化基本变量
b = []
c = []
d = []
# 开始抽取
n = 0
while n < 1000000:
    n_1 = 0
    for i in range(0, 20):
        b.append(i)
    while n_1 < 3:
        m_1 = int(len(b))
        # print(n_1)
        ran = random.randint(0, m_1-1)
        m = b[ran]
        del b[ran]
        if (m in b) == False:
            c.append(m)
            n_1 = n_1+1
    n += 1
    if (c in d) == False:
        d.append(c)
    c = []
print(d)
print(len(d))
