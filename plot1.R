#Plot 1
file <- "E:/Knowlege Base/Coursera/EDA/Week 2/household_power_consumption.txt"
setwd("E:/Knowlege Base/Coursera/EDA/Week 2/")
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(subSetData)
head(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

