#Reading the summarySCC_PM25.rds file and storing it in a variable named NEI.
NEI<-readRDS("summarySCC_PM25.rds")
#Reading the Source_Classification_Code file and storing it in a variable named SCC.
SCC<-readRDS("Source_Classification_Code.rds")
library(dplyr)
#Subsetting the data, taking readings of Baltimore whose fips is '24510' and storing it in a variable named, databaltimore.
databaltimore<-NEI[which(NEI$fips == '24510'),]#Reading as a character as readRDS read it as a character.
data<-group_by(databaltimore,SCC,year)
#Taking the sum of the values of emissions in a summary by SCC and year.
datasummarized<-summarize(data,sum=sum(Emissions,na.rm=T))
#Removing the unwanted data.
SCCuse<-SCC[,c(1,3)]
#Merging the 2 new data frames.
NEISCC<-merge(datasummarized,SCCuse,by="SCC")
#Subsetting the coal combustions.
subset<-NEISCC[grepl("veh",NEISCC$Short.Name,ignore.case=TRUE),]
#Removing the unwanted data.
plotdata<-subset[,c(-1,-4)]
#Grouping the years.
plotdata<-group_by(plotdata,year)
#Summarizing the data we need in year plot
plotdataba<-summarize(plotdata,sum=sum(sum,na.rm=T))
#Subsetting the data, taking readings of Los Angeles whose fips is '24510' and storing it in a variable named, databaltimore.
datalosangeles<-NEI[which(NEI$fips == '06037'),]#Reading as a character as readRDS read it as a character.
data<-group_by(datalosangeles,SCC,year)
#Taking the sum of the values of emissions in a summary by SCC and year.
datasummarized<-summarize(data,sum=sum(Emissions,na.rm=T))
#Removing the unwanted data.
SCCuse<-SCC[,c(1,3)]
#Merging the 2 new data frames.
NEISCC<-merge(datasummarized,SCCuse,by="SCC")
#Subsetting the coal combustions.
subset<-NEISCC[grepl("veh",NEISCC$Short.Name,ignore.case=TRUE),]
#Removing the unwanted data.
plotdata<-subset[,c(-1,-4)]
#Grouping the years.
plotdata<-group_by(plotdata,year)
#Summarizing the data we need in year plot
plotdatals<-summarize(plotdata,sum=sum(sum,na.rm=T))
#Making the plot using ggplot2 plotting system.
plotdata<-rbind(plotdatals,plotdataba)
plotdata$sep<-c(rep("Los Angeles",4),rep("Baltimore",4))
png("Plot6.png")
library(ggplot2)
ggplot(plotdata,aes(x=year,y=sum))+geom_point(aes(color=sep),cex=1.5)+labs(x="year",y="Total Emissions in tons")+labs(title="Total Annual Vehicle Emissions in Baltimore City")
dev.off()