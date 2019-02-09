install.packages("ggplot2")
library("ggplot2")

ir<-iris
str(ir)
summary(ir)

par(mfrow=c(1,1))

#o1 plot correlation
plot(x=ir$Petal.Width, y=ir$Petal.Length, main=c("Petal.width vs Petal.Length"), 
     xlab=c("Petal.width"), ylab=c("Petal.Length"), col="red", pch=4,
     type="p", lwd=2)

# correlation
cor(x=ir$Petal.Width, y=ir$Petal.Length)

# plot again
plot(x=ir$Petal.Width, y=ir$Petal.Length)

# if I wanna show species from 2 variable
plot(x=ir$Petal.Width, y=ir$Petal.Length, pch=c(1,2,3))

boxplot(iris$Petal.Width, main="Iris", xlab=c("Petal.width"), col="green")

with(iris, plot(x=Species, y=Petal.Length, col="orange"))

plot(iris, col="orange")

cars<-cars
boxplot(cars$dist, main="Shopping Distance", xlab=("distance in ft"), col="blue")

# Histogram
hist(cars$dist, breaks=15, freq=FALSE, xlim=c(0,150), main="Stopping Distance",
     xlab="distance in ft", col="orange")
lines(density(cars$dist))

# pair-plotting: scatter
par(mfrow=c(1,2))
plot(iris$Sepal.Length, col="orange")
plot(iris$Sepal.Width, col="blue")

#Understand the relationship between Salary and AmountSpent
mk<-DirectMarketing
p<-ggplot(mk,aes(x=Salary,y=AmountSpent))
p+geom_point()


#Understanding the conditional relationship based on Gender
q<-p+geom_point(aes(colour=Gender))
q

q+xlab("Salary in $")+ylab("Expenditure in $")

#Making a trellis plot for both the genders and fitting a tred line
p+geom_point(aes(colour=Gender))+geom_smooth(aes(colour=Gender))

#Creating a trellis plot
p+geom_point(aes(colour=Gender))+geom_smooth(aes(colour=Gender))+facet_grid(Gender~.)

