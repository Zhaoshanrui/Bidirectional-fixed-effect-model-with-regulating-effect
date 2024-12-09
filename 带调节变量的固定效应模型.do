clear
cd "E:\桌面\大挑\变量选择\"
import delimited "E:\桌面\大挑\变量选择\data_final.csv"
xtset id year, yearly
recast long id
recast float year
xtsum birth eco information lngdp urban //描述性统计
gen X3 = eco*information //生成交互项

reg birth eco X3 lngdp urban i.year i.id
reg birth information X3 lngdp urban i.year i.id
reg birth eco information X3 lngdp urban i.year i.id