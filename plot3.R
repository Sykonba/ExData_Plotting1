source("readFile.R")
png(filename = "plot3.png", 
    width = 480, height = 480)
plot(subsetDate$DateTime, subsetDate$Sub_metering_1, 
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(subsetDate$DateTime, subsetDate$Sub_metering_2, col = "red")
lines(subsetDate$DateTime, subsetDate$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()