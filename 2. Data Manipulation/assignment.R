df<-read.csv("no_name.csv")
head(df)
names(df)
dim(df)
df1<-df[df$Male=="Female"]
length(df1)
length(df[df$Male=="Female"])


data<-read.csv("MMwoes.csv")
head(data)
class(data$next_pymnt_d)

m<-load("model.rda")
str(m)

install.packages("dummies")
names(df)
dummy(df$State.gov)
