## Rendom_Forest

#install party library for dataset
install.packages('party')
library(party)
data("readingSkills")
View(readingSkills)

#instal library
install.packages("randomForest")
library(randomForest)

#model
model=randomForest(nativeSpeaker ~ .,readingSkills)
print(model)
summary(model)

#prediction
p1=predict(model)   #predict train dataset
p1

#confusion matrix
table(readingSkills$nativeSpeaker,p1)

