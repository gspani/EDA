## plot1.R

# Please set the working directory to the folder having "household_power_consumption.txt"

rm(list=ls())

dataFile <- "./household_power_consumption.txt"
readData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData  <- subset(readData, readData$Date == "1/2/2007" | readData$Date == "2/2/2007")

globalActivePower <- as.numeric(subData$Global_active_power)

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()