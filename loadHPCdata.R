#Function to load in the household power consumption data
#Note - initial review of the data showed that the relevant
#dates (2007-02-01 and 2007-02-02) are located approximately
#between lines 65000 and 70000
#Will use read.table to load in a truncated data set.

loadHPCdata <- function(home_dir) {
  filename <- "household_power_consumption.txt"
  hpc_file <- paste(c(home_dir,filename),collapse="")
  #First get the header info
  headers <- strsplit(readLines(hpc_file,1),";")
  
  hpc_data <- read.table(hpc_file,skip = 65000,nrows = 5000,sep =";")
  names(hpc_data) <- unlist(headers)
  
  #Now pick out the select dates
  date1 <- as.Date("01/02/2007", format = "%d/%m/%Y")
  date2 <- as.Date("02/02/2007", format = "%d/%m/%Y")
  hpc_feb1to2 <- subset(hpc_data, as.Date(Date, format = "%d/%m/%Y") == date1 | 
                        as.Date(Date, format = "%d/%m/%Y") == date2)
  #Set the time index
  hpc_feb1to2$Date <- strptime(paste(hpc_feb1to2$Date,hpc_feb1to2$Time), "%d/%m/%Y %H:%M:%S")
  hpc_feb1to2
}