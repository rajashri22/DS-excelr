emp_dt<-read.csv("E:/rajashri/Excelr-Datascience/Assignments/5-Simple-linear-reg/emp_data.csv")
colnames(emp_dt)
boxplot(emp_dt$Salary_hike,col="dodgerblue4")
boxplot(emp_dt$Churn_out_rate,col="red")
model<-lm(log(emp_dt$Churn_out_rate)~log(emp_dt$Salary_hike),data=emp_dt)
summary(model)
pred<-predict(model)
plot(log(emp_dt$Salary_hike),log(emp_dt$Churn_out_rate),main="scatter plot",xlab="log(Salary hike)",ylab="log(Churn out rate)",pch=20)
lines(log(emp_dt$Salary_hike),pred,col="red")
finaldata<-data.frame(emp_dt,exp(pred),"Error"=emp_dt$Churn_out_rate-exp(pred))


