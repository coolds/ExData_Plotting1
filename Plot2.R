#### Exploratory Analysis Assignment1


############ plot2
library(data.table)
power <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata <- power[power$Date  %in% c("1/2/2007","2/2/2007") , ]

globalactivepower <- as.numeric(mydata$Global_active_power)
DateTime <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")


png("plot2.png", width=480, height=480, units = "px")
plot(DateTime, globalactivepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
