#### Exploratory Analysis Assignment1


############ plot4
library(data.table)
power <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata <- power[power$Date  %in% c("1/2/2007","2/2/2007") , ]

globalactivepower <- as.numeric(mydata$Global_active_power)
DateTime <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")


Sub_metering_1 <- as.numeric(mydata$Sub_metering_1)
Sub_metering_2 <- as.numeric(mydata$Sub_metering_2)
Sub_metering_3 <- as.numeric(mydata$Sub_metering_3)



voltage <- as.numeric(mydata$Voltage)
globalreactivepower <- as.numeric(mydata$Global_reactive_power)



png("plot4.png", width=480, height=480, units = "px")
par(mfrow=c(2,2))


plot(DateTime, globalactivepower, type="l", xlab="", ylab="Global Active Power")

plot(DateTime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(DateTime, Sub_metering_1 , type="l", ylab="Energy sub metering", xlab="")
lines(DateTime, Sub_metering_2, type="l", col="red")
lines(DateTime, Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")


plot(DateTime, globalreactivepower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()








