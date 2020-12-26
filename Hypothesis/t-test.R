library(readxl)
data=read_excel('100_sales.xlsx')
View(data)

#######  T-test  ########

#T-test is use only two categorical variable vs measure

#                   Measure first   Category last.....
ttest_result=t.test(Total_Revenue ~ Sales_Channel,data)
#ttest_rel=t.test(data$Total_Revenue ~ data$Sales_Channel)
ttest_result

ttest_pvalue=ttest_result$p.value
ttest_pvalue
 #if p-value is > 0.05 it means there is no significant difference between two column 
 #if p-value is <0.05  means there is significant difference between two column

if(ttest_pvalue < 0.05){
  print('sig difference')
}else{
  print('no sig difference')
}