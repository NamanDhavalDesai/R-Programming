#Reading the summarySCC_PM25.rds file and storing it in a variable named NEI.
NEI<-readRDS("summarySCC_PM25.rds")
#Reading the Source_Classification_Code file and storing it in a variable named SCC.
SCC<-readRDS("Source_Classification_Code.rds")
#Grouping the data of NEI by the SCC and year.
library(dplyr)
data<-group_by(NEI,SCC,year)
#Taking the sum of the values of emissions in a summary by SCC and year.
datasummarized<-summarize(data,sum=sum(Emissions,na.rm=T))
#Removing the unwanted data.
SCCuse<-SCC[,c(1,3)]
#Merging the 2 new data frames.
NEISCC<-merge(datasummarized,SCCuse,by="SCC")
#Subsetting the coal combustions.
subset<-NEISCC[grepl("coal",NEISCC$Short.Name,ignore.case=TRUE),]
#Removing the unwanted data.
plotdata<-subset[,c(-1,-4)]
#Grouping properly.
plotdata<-group_by(plotdata,year)
#Summarizing the data we need in year plot
plotdata<-summarize(plotdata,sum=sum(sum,na.rm=T))
#Making the plot using ggplot2 plotting system.
png("Plot4.png")
library(ggplot2)
ggplot(plotdata,aes(x=year,y=sum))+geom_point(col="red",cex=2)+labs(x="year",y="Total Emissions in tons")+labs(title="Total Annual Coal Combustion Emissions in the USA")
dev.off()
