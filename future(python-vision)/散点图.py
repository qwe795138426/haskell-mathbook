import pyecharts.options as opts
from pyecharts.charts import Scatter
answer_1=input("表格名称：")
answer_2=input("输入x轴数据（用空格隔开）")
answer_3=input("输入y轴数据（用空格隔开）")
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


(
    Scatter(init_opts=opts.InitOpts(width="1600px", height="1000px"))
    .add_xaxis(xaxis_data=x_data)
    .add_yaxis(
        series_name="",
        symbol='pin',
        tooltip_opts=opts.TooltipOpts(
            axis_pointer_type="cross",textstyle_opts=opts.TextStyleOpts(
                font_size=14,font_family="Arial",border_radius=" Sequence"
                )
            ),
        y_axis=y_data,
        symbol_size=20,
        label_opts=opts.LabelOpts(is_show=True),
    )
    .set_series_opts()
    .set_global_opts(
        title_opts=opts.TitleOpts(
            title=answer_1
            ),
        xaxis_opts=opts.AxisOpts(
            type_="value", splitline_opts=opts.SplitLineOpts(is_show=True)
        ),
        yaxis_opts=opts.AxisOpts(
            type_="value",
            axistick_opts=opts.AxisTickOpts(is_show=True),
            splitline_opts=opts.SplitLineOpts(is_show=True),
        ),
        tooltip_opts=opts.TooltipOpts(is_show=True),
    )
    .render(name_1+".html")
)
