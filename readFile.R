
fileName <- "../household_power_consumption.txt"
readText <- read.table(fileName, sep = ";", dec = ".", header = TRUE, 
                       colClasses = c("character", "character", rep("numeric",7)),
                       na = "?")
subset <- readText$Date == "1/2/2007" | readText$Date =="2/2/2007"
subsetDate <- readText[subset, ]
dateTime <- paste(subsetDate$Date, subsetDate$Time)
subsetDate$DateTime <- strptime(dateTime, "%d/%m/%Y %H:%M:%S")
rownames(subsetDate) <- 1:nrow(subsetDate)
