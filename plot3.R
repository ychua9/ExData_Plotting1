source("load_data.R")
png(filename = "plot3.png", width = 480, height = 480)
plot(two_day_data$DateTime, two_day_data$Sub_metering_1,
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(two_day_data$DateTime, two_day_data$Sub_metering_2, col = "red")
lines(two_day_data$DateTime, two_day_data$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lwd=1)
dev.off()