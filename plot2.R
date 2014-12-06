data=read.table("household_power_consumption.txt",sep=";",header=TRUE)
sub=data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
sub$Date=as.Date(sub$Date, "%d/%m/%Y")
dateTime=strptime(paste(sub$Date,sub$Time,sep=" "),format="%Y-%m-%d %H:%M:%S")
sub2=data.frame(sub,dateTime)
sub2$Global_active_power=as.numeric(as.vector(sub2$Global_active_power))
plot(sub2$dateTime,sub2$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")