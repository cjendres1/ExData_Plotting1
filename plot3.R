##plot3.R
home_dir <- "C:/Users/Endres/Desktop/Coursera/ExploratoryData/"
##
## NOTE - PLEASE SEE loadHPCdata.R FOR LOADING THE DATA
##
hpc_data <- loadHPCdata(home_dir)

png(filename=paste(c(home_dir, "plot3.png"), collapse = ""), width = 480, height = 480)
plot(hpc_data$Date,hpc_data$Sub_metering_1, type="l", xlab = "", 
     ylab = "Energy sub metering", col="black", yaxp  = c(0, 30, 3), ylim = c(0,40))
points(hpc_data$Date,hpc_data$Sub_metering_2, type="l", col="red")
points(hpc_data$Date,hpc_data$Sub_metering_3, type="l", col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1),col=c("black", "red", "blue"))
dev.off()