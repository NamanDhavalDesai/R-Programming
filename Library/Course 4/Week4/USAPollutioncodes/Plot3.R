#Reading the summarySCC_PM25.rds file and storing it in a variable named NEI.
NEI<-readRDS("summarySCC_PM25.rds")
#Reading the Source_Classification_Code file and storing it in a variable named SCC.
SCC<-readRDS("Source_Classification_Code.rds")
library(dplyr)
#Subsetting the data, taking readings of Baltimore whose fips is '24510' and storing it in a variable named, databaltimore.
databaltimore<-NEI[which(NEI$fips == '24510'),]#Reading as a character as readRDS read it as a character.
#Grouping the data according to the year, type and storing it in a variable named, data.
data<-group_by(databaltimore,year,type)
#Summarizing the data by taking the sum of the emissions per year and storing it in a variable named, emissionsumperyear(espy).
espy<-summarize(data,sum=sum(Emissions,na.rm=T))
#Making the plot using ggplot2 plotting system.
png(filename='Plot3.png')
library(ggplot2)
ggplot(data=espy,aes(year,sum))+geom_point(color="red",size=2)+facet_grid(.~type)+xlab("Year")+ylab("Total Emissions in tons")+ggtitle("Total Annual Emissions in Baltimore by Year by type")
dev.off()
