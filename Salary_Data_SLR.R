sal_dt<-read.csv("E:/rajashri/Excelr-Datascience/Assignments/5-Simple-linear-reg/Salary_Data.csv")
colnames(sal_dt)
boxplot(sal_dt$Salary,col="dodgerblue4")
boxplot(sal_dt$YearsExperience,col="red")
model<-lm(sal_dt$Salary~sal_dt$YearsExperience,data=sal_dt)
summary(model)
pred<-predict(model)
plot(sal_dt$YearsExperience,sal_dt$Salary,main="scatter plot",xlab="Years of Experience",ylab="Salary",pch=20)
lines(sal_dt$YearsExperience,pred,col="red")
finaldata<-data.frame(sal_dt,pred,"Error"=sal_dt$Salary-pred)


