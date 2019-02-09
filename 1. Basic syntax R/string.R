#text data

a<-"Batman"
b<-"Bat-man"
c<-"Bat/man"

substr(a,start=2,stop=5)
nchar()
tolower()
toupper()
strsplit(c,split="/")
paste(b,split=c)
grep("-",b)
grepl()
sub()
gsub()

datay<-mtcars
names(datay)
head(datay)

mfc=rownames(mtcars)
head(mfc)

sapply(mname,"[",1)

#test
reve=c("M 3.2","B 2.6","M 6.7","B 2.4")
class(reve)
data=data.frame(reve)
data
index=which(grepl("M ", data$reve))
data$reve<-gsub("M ","",data$reve)
data$reve<-gsub("B ","",data$reve)
data$reve<-as.numeric(data$reve)

data$reve[index]=data$reve[index]/1000
data

