library(readxl)
data=read_excel('100_sales.xlsx')
View(data)

#######  Chi-test  ########

#Chi-test is categorical column vs categorical column

chi_test_result=chisq.test(data$Order_Priority,data$Item_Type)
chi_test_result

#find p-value
chi_test_pvalue=chi_test_result$p.value
chi_test_pvalue
#if p-value is > 0.05 it means there is no significant difference between two column 
#if p-value is <0.05  means there is significant difference between two column


#Here p_value is <0.05 , here some item_type sales is high and some item_type sales is low 
if(chi_test_pvalue < 0.05){
  print('sig difference')
}else{
  print('no sig difference')
}

