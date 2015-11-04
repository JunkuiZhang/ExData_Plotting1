rawdata <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
rawdata <- rawdata[as.Date(rawdata[,1], "%d/%m/%Y") == as.Date('2007-02-01') | as.Date(rawdata[,1], "%d/%m/%Y") == as.Date('2007-02-02'),]
hist(rawdata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

