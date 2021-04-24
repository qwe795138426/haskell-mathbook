from pyecharts import options as opts
from pyecharts.charts import Bar
answer_1=input("表格名称：")
answer_2=input("输入x轴数据（用空格隔开）")
answer_3=input("输入y轴数据（用空格隔开）")
answer_4=input("输入y轴轴坐标")
name_1=input("输入输出名称（默认为out）")
if name_1=="":
    name_1="out"
answer_2=answer_2.split()
answer_3=answer_3.split()
x_data=[]
y_data=[]

for i in answer_2:
    x_data.append(float(i))

for i in answer_3:
    y_data.append(float(i))


c = Bar()
c.add_xaxis(x_data)
c.add_yaxis(answer_4, y_data,gap="0%",category_gap="0%")
c.set_global_opts(
    title_opts=opts.TitleOpts(title=answer_1),
    toolbox_opts=opts.ToolboxOpts(),
    legend_opts=opts.LegendOpts(is_show=True),
)
c.render(name_1+".html")
