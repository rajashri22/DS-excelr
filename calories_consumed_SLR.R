wt_cal<-read.csv("E:/rajashri/Excelr-Datascience/Assignments/5-Simple-linear-reg/calories_consumed.csv")
colnames(wt_cal)
boxplot(wt_cal$Weight.gained..grams.,col="dodgerblue4")
boxplot(wt_cal$Calories.Consumed,col="red")
model<-lm(Weight.gained..grams.~ Calories.Consumed,data=wt_cal)
summary(model)
pred<-predict(model)
plot(wt_cal$Calories.Consumed,wt_cal$Weight.gained..grams.,main="scatter plot",xlab="Consumed Calories",ylab="log(Weight Gained in gm)",pch=20)
lines(wt_cal$Calories.Consumed,pred,col="red")
finaldata<-data.frame(wt_cal,pred,"Error"=wt_cal$Weight.gained..grams-pred)


