#Reading the summarySCC_PM25.rds file and storing it in a variable named NEI.
NEI<-readRDS("summarySCC_PM25.rds")
#Reading the Source_Classification_Code file and storing it in a variable named SCC.
SCC<-readRDS("Source_Classification_Code.rds")
#Subsetting the SCC of SCC where th eword coal is present.
SCCsubset<-SCC[grep("[Cc]oal",SCC$Short.Name),]
#Converting the subsetted data into a character vector.
SCCsubset<-as.character(SCCsubset[,1])
#subsetting NEI SCC with the SCC or SCC where the worl coal is present.
NEIsubset<-NEI[NEI$SCC %in% SCCsubset,]
library(dplyr)
#Grouping by year.
NEIsubset<-group_by(NEIsubset,year)
#Summarizing the data we need in year plot.
plotdata<-summarize(NEIsubset,sum=sum(Emissions, na.rm = TRUE))
#Making the plot using ggplot2 plotting system.
librar(ggplot2)
png("Plot4.png")
library(ggplot2)
ggplot(plotdata,aes(x=year,y=sum))+geom_point(col="red",cex=2)+labs(x="year",y="Total Emissions in tons")+labs(title="Total Annual Coal Combustion Emissions in the USA")
dev.off()
