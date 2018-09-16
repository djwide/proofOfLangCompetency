skulls <- read.csv(file="Skulls.csv",head=TRUE,sep=",")
head(skulls)
#print(skulls)
range(skulls$Case)
range(skulls$Maximum.breadth)
typeof(skulls)
apply(skulls,2,is.numeric)
levels(skulls$Period)
mean(skulls$Nas)
t(skulls[,2:5])%*%skulls[,2:5]
#convert skulls to matrix