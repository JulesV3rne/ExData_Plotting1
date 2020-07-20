#R code containing library to download the dataset, load it into memory
#and install/load all library dependencies
source("load_data.R")

#Open PNG graphical device with size parameters
png(filename = "plot2.png", width=480, height=480)

#Convert first two cols to Date object and store in temp vector
time_date <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

#Plot the data with type n for no plot points
plot(time_date,data$Global_active_power,type = "n", 
     ylab = "Global Active Power (kilowatts)", xlab = "")

#Add lines following the data
lines(time_date,data$Global_active_power)

#Close the graphical device, save to file
dev.off()