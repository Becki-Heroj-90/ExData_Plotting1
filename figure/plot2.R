tok<-read.table("household_power_consumption.txt",nrows=2880,sep=";",skip=66637)
DateTime <- strptime(paste(tok[,1], tok[,2]), "%d/%m/%Y %H:%M")
png("plot2.png")
plot(DateTime,tok[,3],col="black",xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()

