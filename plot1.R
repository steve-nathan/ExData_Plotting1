file <- "./data/household_power_consumption.txt"
hdata <-read.csv2(file, header = TRUE, sep = ";",stringsAsFactors=FALSE)
hdata2 <- subset(hdata,Date == "1/2/2007" | Date == "2/2/2007")
hdata2[,1] <- as.Date(hdata2[,1],'%d/%m/%Y')
hdata2[,2] <- hdata2[,2]
hdata2[,3] <- as.numeric(hdata2[,3])
hdata2[,4] <- as.numeric(hdata2[,4])
hdata2[,5] <- as.numeric(hdata2[,5])
hdata2[,6] <- as.numeric(hdata2[,6])
hdata2[,7] <- as.numeric(hdata2[,7])
hdata2[,8] <- as.numeric(hdata2[,8])
hdata2[,9] <- as.numeric(hdata2[,9])
png(bg = "white", 
    filename = "plot1.png",
    width = 480, 
    height = 480 
)
hist(hdata2$Global_active_power,xlab="Global_active_power (kilowatts)",ylab="Frequency",col = "red",main = "Global_active_power")
dev.off()