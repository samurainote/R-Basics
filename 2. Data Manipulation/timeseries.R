#日曜日のフライトを検索
library(dplyr)
dim(fd)

fd_sunday<-fd%>%filter(weekdays(FlightDate)=="Sunday")
dim(fd_sunday)

#日曜日の「アトランタ」、「GA」へのフライトを検索
fd_sunday<-fd%>%filter(weekdays(FlightDate)=="Sunday", DestCityName=="Atlanta, GA")%>%nrow()
fd_sunday

#日曜日の到着地ごとのフライト
fd_sunday<-fd%>%filter(weekdays(FlightDate)=="Sunday")%>%group_by(DestCityName)%>%summarise(n())
fd_sunday

fd%>%mutate(day=weekdays(FlightDate)=="Saturday")%>%filter(day==TRUE, DestCityName=="Atlanta, GA")%>%nrow()
names(fd)

date1<-as.POSIXct(Sys.time())
date1
class(date1)
unclass(date1)

data2<-POSIXlt(date1)
class(data2)
unclass(data2)

#lubridate
library(lubridate)
year=duration(num=1,units="years")
dob="01011980"
dob=ymd(dob)
refdate=today()
refdate=format(refdate,"%Y-%m-%d")
nyears=interval(dob,refdate)/year
print(nyears)


