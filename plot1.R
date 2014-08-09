##plot1.R
home_dir <- "C:/Users/Endres/Desktop/Coursera/ExploratoryData/"
##
## NOTE - PLEASE SEE loadHPCdata.R FOR LOADING THE DATA
##
hpc_data <- loadHPCdata(home_dir)
png(filename=paste(c(home_dir, "plot1.png"), collapse = ""), width = 480, height = 480)
hist(hpc_data$Global_active_power, xlab = "Global Active Power (kilowatts)", 
     col = "red", main="Global Active Power")
dev.off()