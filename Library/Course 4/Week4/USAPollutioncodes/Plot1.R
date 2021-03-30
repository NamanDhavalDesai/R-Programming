#Reading the summarySCC_PM25.rds file and storing it in a variable named NEI.
NEI<-readRDS("summarySCC_PM25.rds")
#Reading the Source_Classification_Code file and storing it in a variable named SCC.
SCC<-readRDS("Source_Classification_Code.rds")
library(dplyr)
#Grouping the data according to the year and storing it in a variable named, data.
data<-group_by(NEI,year)
#Summarizing the data by taking the sum of the emissions per year and storing it in a variable named, emissionsumperyear(espy).
espy<-summarize(data,sum=sum(Emissions,na.rm=T))
#Making the plot using base plotting system.
png(filename='Plot1.png')
plot(espy,pch=19,col="red",ylab="Total Annual Emissions in tons",xlab="Year",main="Total Annual Emissions in the USA by Year",cex=2)
dev.off()
