del_tm<-read.csv("E:/rajashri/Excelr-Datascience/Assignments/5-Simple-linear-reg/delivery_time.csv")
colnames(del_tm)
boxplot(del_tm$Delivery.Time,col="dodgerblue4")
boxplot(del_tm$Sorting.Time,col="red")
model<-lm(log(del_tm$Delivery.Time)~log(del_tm$Sorting.Time),data=del_tm)
summary(model)
pred<-predict(model)
plot(log(del_tm$Sorting.Time),log(del_tm$Delivery.Time),main="scatter plot",xlab="log(Sorting time)",ylab="log(Delivery Time)",pch=20)
lines(log(del_tm$Sorting.Time),pred,col="red")
finaldata<-data.frame(del_tm,exp(pred),"Error"=del_tm$Delivery.Time-pred)


