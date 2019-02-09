setwd("/Users/akr712")
oj<-read.csv("oj (2).csv")

library(dplyr)
data<-filter(oj,brand=="tropicana")
dim(data)

data2<-mutate(oj,logIncome=log(INCOME))
dim(data)

data13<-arrange(oj,INCOME)
data14<-arrange(oj,desc(INCOME))
data14<-arrange(oj,-INCOME)

gr_brand<-group_by(oj,brand)
summarize(gr_brand, mean(INCOME), sd(INCOME))

gr_brand<-group_by(oj,brand)
summarize(gr_brand, round(mean(INCOME),0), round(sd(INCOME),1), median(INCOME))


head(select(oj, brand))
head(select(oj, -brand, -CPDIST5, -INCOME))
head(oj)

head(arrange(oj,INCOME))

summarize()
oj%>%filter(INCOME>=10.5)%>%summarize(mean(price))

names(oj)

oj%>%filter(price>=2.5)%>%mutate(logIncome=log(INCOME))%>%summarize(mean(logIncome), median(logIncome), sd(logIncome))

#gropby%value%sdataframe
names(iris)
iris%>%group_by(Species)%>%summarise(mean(Sepal.Width))%>%as.data.frame()->new_iris
head(new_iris)
class(new_iris)



install.packages("lubridate")
library(lubridate)

strDates<-"01/20/2014"
date1<-as.Date(strDates,format="%m/%d/%y")
date1
class(date1)

date<-"20181203"
date<-ymd(date)
format(date, "%d-%B-%y")

fd<-read.csv("Fd (2).csv")
head(fd)
dim(fd)
str(fd)

fd$FlightDate<-as.Date(fd$FlightDate, format<-"%d-%b-%y")
head(fd$FlightDate)

#days
year(fd$FlightDate)
unique(weekdays(fd$FlightDate))
unique(months(fd$FlightDate))

#日付の計算
difftime(fd$FlightDate[3000], fd$FlightDate[300], units="weeks")
difftime(fd$FlightDate[3000], fd$FlightDate[300], units="days")






