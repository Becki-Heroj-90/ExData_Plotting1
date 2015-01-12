tok<-read.table("household_power_consumption.txt",nrows=2880,sep=";",skip=66637)
png("plot1.png")
hist(tok[,3],col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()

