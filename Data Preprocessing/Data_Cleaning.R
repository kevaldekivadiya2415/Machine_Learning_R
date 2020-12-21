#import Dplyr package
#This package has everything (almost) to accelerate your data manipulation efforts.

#there are many dataset___________ 
data()

library(dplyr)
#import dataset
data('mtcars')
data=mtcars
View(data)
head(data)

data('iris')
View(iris)

#Creating a local data frame. Local data frame are easier to read_________
new_data=tbl_df(data)
View(new_data)


#Filter_______________
f1=filter(new_data,cyl>4 & hp>100)
View(f1)

f2=filter(iris, Species %in% c('setosa', 'virginica'))
View(f2)


#Select________________
select(new_data,cyl,mpg,hp)

#There you can use (-) to hide columns
select(new_data, -cyl, -mpg )

#Hide a range of columns
select(new_data, -c(cyl,mpg))

#select series of columns
select(new_data, cyl:gear)


#Chaining or Pipelining__________________
new_data2=select(new_data,2:4) %>% filter(hp<100 & disp>100)
View(new_data2)

iris %>% select(1:3) %>% filter(iris$Species=='setosa')


#Arrange_____________________
#Arrange can be used to reorder rows
new_data %>% select(cyl, wt, gear)%>% arrange(wt)
#OR
new_data%>% select(cyl, wt, gear)%>% arrange(desc(wt))


#Mutate,Summarise_________________
#Mutate - create new variables
newvariable = new_data %>% mutate(newvariable = mpg*cyl)
View(newvariable)
#simple method
new_data$new_variable=new_data$mpg * new_data$cyl
View(new_data)

#Summarise - this is used to find insights from data
View(summary(new_data))

iris %>% group_by(Species) %>% summarise(Average=mean(Sepal.Length,na.rm = TRUE))

#You can rename the variables using rename command
new_data %>% rename(miles=mpg)

#Select columns with particular values___________
iris[which(iris$Species=='setosa'),]
iris[which(iris$Species %in% c('setosa', 'virginica')),]


#load Data.table package_________________
library(data.table)
iris=data.table(iris)
#Select columns. Returns a vector
iris[,Species]

#Returns sum of selected column
iris[,(sum(Sepal.Length, na.rm = TRUE))]

#Returns sum and standard deviation
iris[,.(sum(Sepal.Length, na.rm = TRUE),  sd(Sepal.Length, na.rm = TRUE))]

