#merging
df1<-data.frame(ID<-c(1,2,3,4,5,6),State<-c("CA","LA","DB","SA","CA","LA"))
df2<-data.frame(ID<-c(1,3,5),Product<-c("Radio","TV","Radio"))
merge(x=df1,y=df2,by="ID")

#missing value
a<-c(1,2,3,4,55,6,NA,NA,456,NA,4)
sum(is.na(a))

air<-airquality
head(air)

air$Ozone[is.na(air$Ozone)]=45
summary(air)

air&solar.R[is,na(air&solar.R)]=mean(air&solar.R, na.rm=TRUE)
summary(air)

#NAあるとmeanできない
v=c(1,23,4,5,6,NA)
mean(v)
mean(v,na.rm=TRUE)

library(reshape2)

#Transpote
person<-c("A","B","C","A","B","C")
age<-c(24,45,32,24,45,32)
weight<-c(56,67,89,56,67,89)
datax<-data.frame(person,age,weight)
datax
melt(datax, id.vars="person")
melted<-melt(datax, id.vars="person", value.name="variable")
melted
