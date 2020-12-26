#   clustering

library(cluster)

#load dataset
data("mtcars")
View(mtcars)

#model
model=kmeans(mtcars,3)
model

model$centers
model$cluster
View(model$cluster)

#plot
clusplot(mtcars,model$cluster,color = TRUE,labels = 2)

mtcars$group=model$cluster
View(mtcars)

mtcars$group[model$cluster==1]='Good_MPG'
mtcars$group[model$cluster==2]='Average_MPG'
mtcars$group[model$cluster==3]='Poor_MPG'
View(mtcars)