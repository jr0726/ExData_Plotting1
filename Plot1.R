#working directory
setwd("C:/Users/vasur/Desktop/Learning/4_EDA")
#read csv file 
data_file <- read.csv("household_power_consumption.txt",header = T,
                      sep=";",na.strings = "?",
                      nrows = 2075259,
                      check.names = F,
                      stringsAsFactors = F,
                      comment.char = "",
                      quote = '\"')
#subset of last two days
TwoDaysData <-subset(data_file,Date %in% c("1/2/2007","2/2/2007"))
TwoDaysData$Date <- as.Date(TwoDaysData$Date, format="%d/%m%y" )
#plot hist
hist(TwoDaysData$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts",ylab="Frequency")
#print
dev.print(png, file = "plot1.png", width = 480, height = 480)