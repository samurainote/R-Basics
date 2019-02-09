setwd("/Users/akr712")
oj<-read.csv("oj (2).csv")
dim(oj)
str(oj)
head(oj)
tail(oj)
names(oj)

#Call Value
oj[2,2]
oj[c(1,2,4,8,456), c(1,3,6)]
oj[c(1:5), "brand"]
dim(oj)
oj[2891,c("AGE60","ETHNIC","HHLARGE")]

#Match Search
head(oj[oj$brand=="tropicana",])
head(oj[oj$brand=="dominicks",2:4])
head(oj[oj$brand=="dominicks",c(1,3,5,6)])
oj[oj$brand=="tropicana",][1:7, 2:6]

#create data
data1<-oj[oj$brand=="tropicana" & oj$feat==0,]
head(data1)
dim(data1)

data2<-oj[oj$brand=="tropicana" | oj$feat==0,]
dim(data2)

index<-which(oj$brand=="dominicks")
head(index)
print(index)

data4<-oj[,c("week","brand")]
head(data4)

data5<-

#add column
os$logInc<-log(oj$INCOME)
names(oj)

mtcars
head(mtcars)
min(mtcars$mpg, na.rm = FALSE)
max(mtcars$mpg, na.rm = FALSE)
rownames(mtcars)<-NULL
head(mtcars)
mtcars[5:10,c("vs", "am", "gear", "carb")]

#Revenue column
sales<-c(NA,NA,600,700,800,200,300,NA)
sales[sales>600]
sales[which(sales>600)]

# sorting
datax<-data.frame(date=c(0120,0121,0122,0123), ID=c(8763,7653,6543,4321))
datax
sort(datax$ID)

# order = index
nums<-c(765,43,23,123,45,23,65,87)
order(nums)
order(-nums)

data7<-oj[order(oj$week),]
head(data7)
max(oj$week)
min(oj$week)

class(oj$brand)
unique(oj$brand)
length(unique(oj$brand))

#groupby
aggregate(oj$price, by=list(oj$brand), mean)
class(aggregate(oj$price, by=list(oj$brand), mean))

t=tapply(oj$price, oj$brand, mean)
class(t)

head(oj)
aggregate(oj$price, by=list(oj$brand), sum)
length(unique(oj$week))

#for 2 variables
table1<-table(oj$brand,oj$feat)
class(table1)
table1

#more than 2 variables
xtabs(oj$INCOME~oj$brand+oj$feat)
