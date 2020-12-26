library(dplyr)

#load data
data("mtcars")
View(mtcars)

#create structure formate
df=tbl_df(mtcars)
View(df)

# 80% train data
train=sample_frac(df,0.8)
View(train)

class(row.names(train))
rown=as.numeric(row.names(train))

# 20% test data
test=df[-rown,]
View(test)
