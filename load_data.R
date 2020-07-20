#Required packages to read and manipulate data, installed if not available
if(!require(data.table)) {
  install.packages("data.table")
}
if(!require(dplyr)) {
  install.packages("dplyr")
}

library(dplyr)
library(data.table)

#Checks if the data has been downloaded already. If not, retrieves and unzips it
if (!file.exists("data.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                destfile = "data.zip")
  unzip("data.zip", exdir = "./data/")
}

#loads the dataset into memory using the more efficient C based fread command
data <- fread(file = "./data/household_power_consumption.txt", sep = ";", 
              na.strings = "?")

#filters the dataset and overwrites it with the smaller subset of data
data <- filter(data, Date=="1/2/2007" | Date=="2/2/2007")