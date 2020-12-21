#Join columns and Rows in a data frame________________
#We can join multiple vectors to create a data frame using the cbind()function.

# Create vector objects
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

#Combine above three vectors into one data frame.
addresses = cbind(city,state,zipcode)
View(addresses)

# Create another data frame with similar columns
new_address = data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c("80230","33949"),
  stringsAsFactors = FALSE
)
View(new_address)


# Combine rows form both the data frames_____________
all_addresses = rbind(addresses,new.address)
View(all_addresses)


#Merge Data Frame______________________
x = data.frame(k1 = c(1,2,3,4,5), k2 = c(1,4,5,6,7), data = 1:5)
y = data.frame(k1 = c(2,4,5,9,10), k2 = c(3,4,5,6,9), data = 1:5)
View(x)
View(y)

a=merge(x,y,by='k1')
b=merge(x,y,by='k2')
View(a)
c=merge(x,y,by.x = 'k1',by.y = 'k2')
View(c)

sort(x$k1,decreasing = TRUE)


#Get Mode Function_______________________
# Create the function.
getmode = function(v) {
    uniqv = unique(v)
    uniqv[which.max(tabulate(match(v, uniqv)))]
}

#Calculate the mode using the user function.
v = c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
result = getmode(v)
print(result)

charv = c("o","it","the","it","it")
result = getmode(charv)
print(result)



