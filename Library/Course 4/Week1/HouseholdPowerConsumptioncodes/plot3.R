data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
#Unlike most cases here the file is speparated by ";" hence the sep used here is =";" and have used used characters to store the dates and times which will be re-structured in the next step and storing it in data.
data$Date<-as.Date(data$Date,"%d/%m/%Y")
#Reading and formatiing the Date column as dates.
data$DateAndTime<-as.POSIXct(paste(data$Date,data$Time))
#Reading and formatiing the Time column as time and merging the data.
subsetdata<-subset(data,Date>=as.Date("2007-2-1")&Date<=as.Date("2007-2-2"))
#Subsetting the data to be between 2007-2-1 and 2007-2-2 and storing it in a variable named subsetdata.
completecasessubsetdata<-complete.cases(subsetdata)
#Making a logical vector having TRUE where the data is not NA or NaN and storing it in variable named completecasessubsetdata.
subsetdatawithoutmissingvalues<-subsetdata[completecasessubsetdata,]
#Subsetting and hence removing those rows where there are NA or NaN values and storing it in a variable named subsetdatawithoutmissingvalues.
newdata<-cbind(subsetdatawithoutmissingvalues[,10],subsetdatawithoutmissingvalues[,3:9])
#Removing unwanted columns an dstoring it in newdata.
names(newdata)[1]<-'DateAndTime'
#Plotting, 
png("plot3.png",height=480,width=480)#Setting the height and width given.
plot(newdata$Sub_metering_1~newdata$DateAndTime,type="l",ylab="Energy sub metering",xlab="")#Making the xlab="" because nothing has to be printed there.
#Making the plot and below drawing the lines.
lines(newdata$DateAndTime,newdata$Sub_metering_2,col="red")
lines(newdata$DateAndTime,newdata$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2,col=c("black","red","blue"))
dev.off()
