#### Exploratory Analysis Assignment1



############ plot1
library(data.table)

power <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata <- power[power$Date  %in% c("1/2/2007","2/2/2007") , ]


globalactivepower <- as.numeric(mydata$Global_active_power)

png("plot1.png", width=480, height=480, units = "px")
hist(globalactivepower,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
