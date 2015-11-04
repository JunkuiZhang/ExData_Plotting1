rawdata <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
rawdata <- rawdata[as.Date(rawdata[,1], "%d/%m/%Y") == as.Date("2007-02-01") | as.Date(rawdata[,1], "%d/%m/%Y") == as.Date("2007-02-02"),]
l <- nrow(rawdata)
plot(rawdata$Time, rawdata$Global_active_power, type = "l", xaxt = "n", ylab = "Global Active Power (kilowatts)")
axis(1, c(0,l/4,l/2), c("Thu", "Fri", "Sat"))
