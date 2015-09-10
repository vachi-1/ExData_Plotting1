data <- read.table("C:/Users/Admin/Desktop/Coursera/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
project_1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] # only data in date range
datetime <- strptime(paste(project_1$Date, project_1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(project_1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
