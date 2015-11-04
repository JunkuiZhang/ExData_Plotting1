rawdata <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
rawdata <- rawdata[as.Date(rawdata[,1], "%d/%m/%Y") == as.Date('2007-02-01') | as.Date(rawdata[,1], "%d/%m/%Y") == as.Date('2007-02-02'),]
plot(rawdata$Time, rawdata$Sub_metering_1, type = "l", xaxt = "n", lwd = 0.0001, ylab = "Energy sub metering")
lines(rawdata$Sub_metering_2, col = "red")
lines(rawdata$Sub_metering_3, col = "blue")
legend("topright", legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
axis(1,c(0, 720, 1440),c("Thu", "Fri", "Sat"))
