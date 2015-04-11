source("load_data.R")
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

# top left
plot(two_day_data$DateTime, two_day_data$Global_active_power,
     type = "l",  xlab = "", ylab = "Global Active Power")

# top right
plot(two_day_data$DateTime, two_day_data$Voltage,
     type = "l", xlab = "datetime", ylab = "Voltage")

## Bottom-left
plot(two_day_data$DateTime, two_day_data$Sub_metering_1,
     type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(two_day_data$DateTime, two_day_data$Sub_metering_2, col = "red")
lines(two_day_data$DateTime, two_day_data$Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## Bottom-right
plot(two_day_data$DateTime, two_day_data$Global_reactive_power,
     type = "l", col = "black", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()