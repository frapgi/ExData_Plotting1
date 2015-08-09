#plot 1
File <- "household_power_consumption.txt" 
data_All <- read.csv(File, header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"') 

#select the subset of data
data_clean<-subset(data_All, data_All$Date %in% c("1/2/2007","2/2/2007"))
#store the variable
GAP_val<-as.numeric(data_clean$Global_active_power)

#str(subSetData) 
globalActivePower <- as.numeric(subSetData$Global_active_power) 
png("plot1.png", width=480, height=480) 
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
dev.off() 
