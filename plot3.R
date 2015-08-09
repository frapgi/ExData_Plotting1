#plot 3
File <- "household_power_consumption.txt"
data_All <- read.csv(File, header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#select the subset of data
data_clean<-subset(data_All, data_All$Date %in% c("1/2/2007","2/2/2007"))
#store the variables
GAP_val<-as.numeric(data_clean$Global_active_power)
fechas <- strptime(paste(data_clean$Date, data_clean$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(data_clean$Sub_metering_1)
subMetering2 <- as.numeric(data_clean$Sub_metering_2)
subMetering3 <- as.numeric(data_clean$Sub_metering_3)

#set device graphic png
png("plot3.png", width=480, height=480)

plot(fechas, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(fechas, subMetering2, type="l", col="red")
lines(fechas, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
