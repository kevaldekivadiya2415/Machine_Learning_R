#can check which directory the R workspace is pointing to using the getwd() function.
#You can also set a new working directory using setwd()function.

#Get and print current working directory.
print(getwd())

# Set current working directory.
setwd('C:/Users/Dell laptop/Desktop/data science/R')

#install readxl package___________________
library(readxl)
#read.csv()
data=read_excel('100_sales.xlsx')
print(data)
View(data)

#count column and row
nrow(data)
ncol(data)


#Subsettng Data_____________________________
#This features is used to select and exclude variables and observations.

#select any one column
View(data$Region)


#Select first 3 columns
new_data=data[c(1:3)]
View(new_data)

data2=data[c(1,5:9)]
View(data2)


#Excluding (DROPPING) Variables_______________________
#exclude first 3 column
new_data1=data[-c(1:3)]
View(new_data1)

var=names(data) %in% c('Region','Country')
View(data[!var])


#Selecting Observation____________________________
#first 5 row
View(data[1:5,])

#base on variable values
new_data3=data[which(data$Item_Type=='Baby Food' & data$Total_Profit >10000),]
View(new_data3)

#OR
attach(data)
new_data4=data[which(Item_Type=='Baby Food' & Total_Profit >10000),]
View(new_data4)
detach(data)


#Subset Function________________________
#The subset( ) function is the easiest way to select variables and observations.
new_data5=subset(data,Item_Type=='Baby Food' & Total_Profit >10000,select = c(1:4))
View(new_data5)


#Random Sample________________________
#Use the sample( ) function to take a random sample of size n from a dataset.
samples=data[sample(1:nrow(data),50,replace = FALSE),]
View(samples)
