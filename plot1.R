data <- read.table("C:/Users/Admin/Desktop/Coursera/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data)
project_1_1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] # only data in date range
head(project_1_1)
globalActivePower <- as.numeric(project_1_1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
