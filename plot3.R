# Create a histogram plot of Global Active Power
# Read in the forked dataset 
# Reads only dates 2007-02-01 and 2007-02-02

df1 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE, dec = ".")

dfSub <- subset(df1, Date == "2/2/2007"| Date == "1/2/2007")

#x axis variable dt(date & time)
dt <- strptime(paste(dfSub$Date, dfSub$Time), format = "%d/%m/%Y %H:%M:%S")

# Open PNG file
png(filename = "plot3.png", width = 480, height = 480)

# plot out a line plot of Global Active Power on Thurs-Saturday
# Global active power is Y, x is the time shows as specific days of the week
# line plot has no title, but labeled axes 

plot(x = dt, y = dfSub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = dt, y = dfSub$Sub_metering_2, type = "l", col = "red")
lines(x = dt, y = dfSub$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, col = c("black", "red", "blue"))

# close png (finish writing)

dev.off()