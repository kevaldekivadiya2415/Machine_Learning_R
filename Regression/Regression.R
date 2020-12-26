#########  Linear-Regression  ##########

#X=independent variable  Y=dependent variable
x=c(151,174,138,186,128,136,179,163,152,131)
y=c(63,81,56,91,47,57,76,72,62,48)


#create model
model=lm(y~x)
print(model)

#plot
plot(x,y,col='blue')
#linear line
abline(model,col='red')

summary(model)

#prediction
a=data.frame(x=c(145,155))
result=predict(model,a)
result 

########## Multi-Regression ###########

#load data
data("mtcars")
View(mtcars)

df=mtcars[,c('mpg','disp','hp','wt')]
View(df)

#model
model=lm(mpg ~ .,df)   #dot . means all column omit target column
#model=lm(mpg ~ disp+hp+wt,df)

summary(model)

#prediction
a=data.frame(disp=150,hp=92,wt=1.91)

pre_mpg=predict(model,a)
pre_mpg
#data add
a$pre_mpg=pre_mpg
View(a)

#write data
write.csv(a,'predicted.CSV')





