####  Logistic-Regression

#load dataset
data=read.csv('red-wine-quality-prediction-dataset_1.csv')
View(data)

# count 0 and 1
table(data$Quality_Category)

#Convert yes no to 1,0
#ifelse(dataset$column=='yes',1,0)  short method of ifelse

#  Fit model
model=glm(Quality_Category ~ .,data,family = binomial(link = 'logit'))
model

#View the forest result
print(model)
summary(model)

#Prediction
p1=predict(model,type='response')  #response is given probability
p1
View(p1)

#Confusion matrix
pre=ifelse(p1>0.5,1,0)
View(pre)

tab1=table(data$Quality_Category,pre)
tab1

acc=accuracy.meas(data$Quality_Category,pre)  #accuracy=(1 - F_value)*100
acc                                       #Here accuracy is       acc=(1-0.178)*100  
