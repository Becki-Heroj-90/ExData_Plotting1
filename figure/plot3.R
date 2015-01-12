tok<-read.table("household_power_consumption.txt",nrows=2880,sep=";",skip=66637)
DateTime <- strptime(paste(tok[,1], tok[,2]), "%d/%m/%Y %H:%M")
titel<-scan("household_power_consumption.txt","character",nlines=1,sep=";")
names(tok)<-titel
png("plot3.png")
plot(DateTime,tok[,7],col="black",xlab="",ylab="Energy sub metering",type="l")
lines(DateTime,tok[,8],col="red",type="l")
lines(DateTime,tok[,9],col="blue",type="l")
legend("topright",titel[7:9],lty=c(1,1,1),lwd=c(1,1,1),col=c("black","red","blue"))
dev.off()

