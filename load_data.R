filename = "./household_power_consumption.txt"
dataset = read.table(filename, header = TRUE, sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)), na = "?")

two_day_data = dataset[Date == "1/2/2007" | Date == "2/2/2007", ]
datetime = paste(two_day_data$Date, two_day_data$Time)
two_day_data$DateTime = strptime(datetime, "%d/%m/%Y %H:%M:%S")