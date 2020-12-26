library(readxl)
data=read_excel('100_sales.xlsx')
View(data)

#######  Correlation  ########

#Correlation is use measure vs measure
CR=cor(data$Total_Revenue,data$Total_Profit)
CR

#range of correlation (-1,1)
#  corr>0.5 its strong positive corr  , that's means total_revenue is increase total_profit is also increase 
#  0<corr<0.5 its positive corr
#  -0.5<corr<0 its negative corr
#  corr<-0.5  its strong negative corr  ,that's means total_revenue is increase total_profit is decrease 


if (CR >0.5){
  cat('There is strong positive correletion between' ,names(data)[8],'and',names(data)[9])
}else if(CR>=0 & CR<=0.5){
  cat('There is positive correletion between' ,names(data)[8],'and',names(data)[9])
}else if(CR>=-0.5 & CR<0){
  cat('There is negative correletion between' ,names(data)[8],'and',names(data)[9])
}else if(CR <-0.5){
  cat('There is strong negative correletion between' ,names(data)[8],'and',names(data)[9])
}