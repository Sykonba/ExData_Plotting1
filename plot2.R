source("readFile.R")
png(filename = "plot2.png", 
    width = 480, height = 480)
plot(subsetDate$DateTime, subsetDate$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()