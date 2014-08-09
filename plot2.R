##plot2.R
home_dir <- "C:/Users/Endres/Desktop/Coursera/ExploratoryData/"
##
## NOTE - PLEASE SEE loadHPCdata.R FOR LOADING THE DATA
##
hpc_data <- loadHPCdata(home_dir)

png(filename=paste(c(home_dir, "plot2.png"), collapse = ""), width = 480, height = 480)
plot(hpc_data$Date,hpc_data$Global_active_power, type="l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()