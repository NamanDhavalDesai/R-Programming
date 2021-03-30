#Reading the summarySCC_PM25.rds file and storing it in a variable named NEI.
NEI<-readRDS("summarySCC_PM25.rds")
#Reading the Source_Classification_Code file and storing it in a variable named SCC.
SCC<-readRDS("Source_Classification_Code.rds")
library(dplyr)
#Subsetting the data, taking readings of Baltimore whose fips is '24510' and storing it in a variable named, databaltimore.
databaltimore<-NEI[which(NEI$fips == '24510'),]#Reading as a character as readRDS read it as a character.
#Grouping the data according to the year and storing it in a variable named, data.
data<-group_by(databaltimore,year)
#Summarizing the data by taking the sum of the emissions per year and storing it in a variable named, emissionsumperyear(espy).
espy<-summarize(data,sum=sum(Emissions,na.rm=T))
#Making the plot using base plotting system.
png(filename='Plot2.png')
plot(espy,pch=19,col="red",ylab="Total Annual Emissions in tons",xlab="Year",main="Total Annual Emissions in Baltimore by Year",cex=2)
dev.off()
