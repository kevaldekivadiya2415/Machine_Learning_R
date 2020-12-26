##  Naivy bayes

library(e1071)

#load dataset
data("Titanic")
View(Titanic)

#model
model=naiveBayes(Survived ~ Class+Sex+Age,Titanic)
model

#prediction
library(readxl)
test=read_excel('Titanic_test.xlsx')
test

pre=predict(model,test)
test$predicted_data=pre
View(test)

