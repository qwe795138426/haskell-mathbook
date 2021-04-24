# 导入需要的库
import random
# 准备总体
answer_1 = int(input("输入总体数："))
data_1 = []
for i in range(0, answer_1):
    data_1.append(i)
# 准备样本容量
answer_2 = int(input("输入样本容量："))
# 开始抽选
data_2 = 0
data_3 = []
answer_1 = answer_1-1
while data_2 <= answer_2:
    a = random.randint(0, answer_1)
    data_3.append(data_1[a])
    del data_1[a]
    answer_1 = answer_1-1
    data_2 = data_2+1
print(data_3)
input("按下回车键以离开")