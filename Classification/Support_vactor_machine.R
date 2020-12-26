###   support vector machine

#install party library for dataset
install.packages('party')
library(party)
data("readingSkills")
View(readingSkills)

#for SVM
install.packages('e1071')
library(e1071)

#model
model=svm(nativeSpeaker ~ .,readingSkills)
print(model)
summary(model)

#prediction
pre=predict(model)
pre

df=data.frame(age=10,shoeSize=30,score=52) #yes
p1=predict(model,df)
p1

#confusion matrix
table(readingSkills$nativeSpeaker,pre)
