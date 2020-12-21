#Missing Value__________________________
#Missing data in R appears as NA. NA is not a string or a numeric value, but an indicator of missingness.

x1 <- c(1, 4, 3, NA, 7)
x2 <- c("a", "B", NA, "NA")
is.na(x1)
is.na(x2)

#You would need to explicitly change these values to NA.
is.na(x1)=which(x1==7)
x1

#Replace NA with 0
x1[is.na(x1)]=0
x1

#Remove NA
x2[!is.na(x2)]

#Identify how many NA in the dataset
sum(is.na(x1))
mean(is.na(x1))

x1 = c(1, 4, 3, 7,NA)
x2 = c("A", "B", "D",NA, "E")

g=data.frame(x1,x2)
g
#na.omit and na.exclude_____________________
na.omit(g)
na.exclude(g)

#na.fail: returns the object only if it contains no missing values
#if any NA value is present in data frame , this function give error
na.fail(g)


#Missing values in analysis_________________
x1
#mean(x) if NA value is present in data frame we can not find mean,median etc
mean(x1,na.rm = TRUE)
#or
mean(x1[!is.na(x1)])
table(x1)


#Replce null values with mean_________________
#First install package imputeTS
library(imputeTS)
na.mean(g)





