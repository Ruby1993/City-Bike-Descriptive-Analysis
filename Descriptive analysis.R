getwd()   
citibike<-read.csv("~/Desktop/business analysis/homework/1/CitiBike Data.csv",header=TRUE)
#explore data
names(citibike)
dim(citibike)
class(citibike)
head(citibike)
str(citibike)

#statistical summary
install.packages("psych")
library("psych")

#summary statistics for tripduration
describe(citibike$tripduration)  #summary(citibike$tripduration)
hist(citibike$tripduration)

#summary statistics for age (only provided birth year in data)
age<- 2016-citibike$birth.year
describe(age)
hist(age)

#summary statistics for tripduration in minutes 
trip_minutes<-citibike$tripduration/60
class(citibike$tripduration)
describe(trip_minutes)
hist(trip_minutes)
#????????????describe(citibike$tripduration/60)

#the correlation between age and tripduration
cor.test(age,citibike$tripduration)
plot(age,citibike$tripduration)

#plot graph
#	Plot the histograms and box plots for tripduration by gender
install.packages("ggplot2")
library("ggplot2")
##plot without any modificaition
citibike$gender = ifelse(citibike$gender==1, "female", "male")
library(lattice)
histogram(~ tripduration | gender, data=citibike,col="grey",breaks = 50)


## modify data
tripduration.ln0<-log(citibike$tripduration)
tripduration.scale<-scale(citibike$tripduration)
#par(mar=c(1,1,1,1))
par(mfrow=c(2,1)) 
hist(tripduration.scale)
hist(tripduration.ln0)

##histgram
citibike["log_tripduraion"]<-tripduration.ln0
ggplot(citibike, aes(x=citibike$log_tripduraion, fill=type))+geom_histogram(binwidth=.5, alpha=.5, position="dodge")

#histgram
library(plyr)
cdat <- ddply(citibike, "type", summarise, tripduration.mean=mean(tripduration.ln0))
cdat
ggplot(citibike, aes(tripduration.ln0, fill=type))+geom_histogram(binwidth=.5, alpha=.5, position="dodge")+geom_vline(data=cdat, aes(xintercept=tripduration.mean,colour=gender),linetype="dashed", size=1)

##boxplot
citibike.gender<-split(tripduration.ln0,citibike$gender)
boxplot(citibike.gender,col="beige",main="Box Plot for Tripduration by Gender",xlab="Gender",ylab="tripduration_log")

##boxplot
ggplot(citibike, aes(x=type, y=tripduration.ln0, fill=type)) + geom_boxplot()




