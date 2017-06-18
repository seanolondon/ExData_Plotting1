# Create a histogram plot of Global Active Power
# Read in the forked dataset 
# Reads only dates 2007-02-01 and 2007-02-02

df1 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE, dec = ".")

dfSub <- subset(df1, Date == "2/2/2007"| Date == "1/2/2007")

# Open PNG file
png(filename = "plot1.png", width = 480, height = 480)

# plot out histogram of Global Active Power
# Global active power is x, Y is fequenct
# hist is red, has title, labeled axes 

hist(dfSub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main ="Global Active Power")

# close png (finish writing)

dev.off()