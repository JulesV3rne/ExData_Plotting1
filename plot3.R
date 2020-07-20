#R code containing library to download the dataset, load it into memory
#and install/load all library dependencies
source("load_data.R")

#Open PNG graphical device with size parameters
png(filename = "plot3.png", width=480, height=480)

#Convert first two cols to Date object and store in temp vector
time_date <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

#Plot the data with type n for no plot points
plot(time_date,data$Sub_metering_1,type = "n", 
     ylab = "Energy sub metering", xlab = "")

#Add lines following the data
lines(time_date,data$Sub_metering_1)
lines(time_date,data$Sub_metering_2, col = "red")
lines(time_date,data$Sub_metering_3, col = "blue")

#Add a legend to the data
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lwd = 1, cex=0.75)

#Close the graphical device, save to file
dev.off()