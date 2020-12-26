#install.packages('ROSE')
library(ROSE)

#Classification library
library(rpart)

#plot library
library(rpart.plot)

#load data
data(hacide)

#we have already given train and test dataset.
View(hacide.train)
View(hacide.test)

###Decision Tree
tree=rpart(cls ~.,hacide.train)
print(tree)
summary(tree)

#plot
rpart.plot(tree) 

#prediction
pre=predict(tree,hacide.test,type='class')
#if we don't have test data then we put pre=predict(tree,type=class) *work on train dataset
pre

#confusion matrix
table(hacide.test$cls,pre)

#accuracy
accuracy.meas(hacide.test$cls,pre) 



###### multi classification
data("iris")
View(iris)

mul_tree=rpart(Species ~ .,iris)
print(mul_tree)
summary(mul_tree)

#plot
rpart.plot(mul_tree)

#prediction
mul_pre=predict(mul_tree,type='class')
mul_pre

#confusion matrix
table(iris$Species,mul_pre)










