#R code containing library to download the dataset, load it into memory
#and install/load all library dependencies
source("load_data.R")

#Open PNG graphical device with size parameters
png(filename = "plot1.png", width=480, height=480)

#Plot the histogram function
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

#Close the graphical device, save to file
dev.off()