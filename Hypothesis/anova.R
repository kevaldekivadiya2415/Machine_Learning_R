library(readxl)
data=read_excel('100_sales.xlsx')
View(data)

#######  Anova  ########

#anova is use more then two categorical variable vs measure
#aov==analysis of variance
#Range of anova(0,1)

anova_result=aov(data$Total_Profit ~ data$Item_Type)
summary(anova_result)

#find p-value
anova_pvalue=anova(anova_result)$`Pr(>F)`[1]
anova_pvalue

if(anova_pvalue<0.05){
  print('significant')  #here some item sales is high and some item sales is low, so we can easily find that item_type name 
}else{
  print('not significant')
}


#######################

#here create pair of two item_type and find p-value of this pair of item_type so we can easily find one item sale is high and other item sale is low.

k=TukeyHSD(anova_result)
k

result=data.frame(k$`data$Item_Type`)
View(result)   #here Fruits-Cosmetics has lowest p-value

#sorting dataframe
library(dplyr)
result=result %>% arrange(p.adj)
View(result)

result[1,]
item_type=row.names(result[1,])
item_type

p_value=result[1,]$p.adj
p_value

if(p_value<0.05){
  cat('There is relation between',item_type,'with p-value',p_value)
}else{
  cat('There is no relation between',item_type,'with p-value',p_value)
}


#we find that Fruits-Cosmetics has lowest p-value
#      lower_profit first..higher_profit last

#install package 'stringr'
library(stringr)
w1=word(item_type,1,sep="\\-")
w2=word(item_type,2,sep="\\-")


cat(w1,"Lower profit")
cat(w2,"Higher profit")
