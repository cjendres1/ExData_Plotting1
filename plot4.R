##plot4.R
home_dir <- "C:/Users/Endres/Desktop/Coursera/ExploratoryData/"
##
## NOTE - PLEASE SEE loadHPCdata.R FOR LOADING THE DATA
##
hpc_data <- loadHPCdata(home_dir)

png(filename=paste(c(home_dir, "plot4.png"), collapse = ""), width = 480, height = 480)
par(mfrow=c(2,2))
par("mar"=c(4, 4, 2, 2))
## PLOT 1 (top left)
plot(hpc_data$Date,hpc_data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")
## PLOT 2 (top right)
plot(hpc_data$Date,hpc_data$Voltage, type="l", xlab = "datetime", ylab = "Voltage", yaxp  = c(234, 246, 3))
## PLOT 3 (lower left)
plot(hpc_data$Date,hpc_data$Sub_metering_1, type="l", xlab = "", 
     ylab = "Global_reactive_power", col="black", yaxp  = c(0, 30, 3), ylim = c(0,40))
points(hpc_data$Date,hpc_data$Sub_metering_2, type="l", col="red")
points(hpc_data$Date,hpc_data$Sub_metering_3, type="l", col="blue")
legend(hpc_data$Date[800],39.5,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1),col=c("black", "red", "blue"),bty="n")
## PLOT 4 (lower right)
plot(hpc_data$Date,hpc_data$Global_reactive_power, type="l", 
     xlab = "datetime", ylab = "Global_reactive_power", yaxp  = c(0.0, 0.5, 5))
dev.off()