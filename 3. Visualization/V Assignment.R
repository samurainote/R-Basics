setwd("F:\\Work\\Jigsaw Academy\\Data Scientist Course\\Data Science Redo\\Data Visualuzation")
#ggplot2
library(ggplot2)
library(dplyr)
library(lubridate)

ch<-read.csv("chicago.csv")# Air pollution study data: Chicago
str(ch)
names(ch)

ch$date<-ymd(ch$date)
#Setting up aesthetics
p<-ggplot(ch,aes(x=temp,y=dewpoint,colour=season))
#Using geoms to draw appropriate graphs
#Adding title, xlabels and ylabels
p+geom_point()+ggtitle("Plot between Temperature and Dewpoint")+xlab("Temperature(F)")+ylab("Dewpoint(F)")

p+geom_point(colour="green")+ggtitle("Plot between Temperature and Dewpoint")+xlab("Temperature(F)")+ylab("Dewpoint(F)")

#Univariate Analysis
p1<-ggplot(ch,aes(x=temp))
p1+geom_density(colour="red")
#Studying distribution across all seasons
p1+geom_density(aes(colour=season),stat="density")
p1+geom_density(aes(fill=season,colour=season),stat="density",alpha=0.2)
p1+geom_density(aes(fill=season,colour=season),alpha=0.2)+facet_grid(season~.)
#Making boxplots
p2<-ggplot(ch,aes(season,temp))
p2+geom_boxplot(aes(colour=season))
#Making histograms
p3<-ggplot(ch,aes(x=temp))
p3+geom_histogram(colour="black",fill="pink")
p3+geom_histogram(colour="black",aes(fill=season))
p3+geom_histogram(colour="black",aes(fill=season),alpha=0.4,position = "dodge")+facet_grid(season~.)
