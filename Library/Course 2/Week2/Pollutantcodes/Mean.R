pollutantmean <- function(directory, pollutant, id = 1:332)
{
    means<-c()
    x<-''
    for(naa in id)
    {
        if(naa<10)
            x<-paste('0','0',naa,'.csv',sep = '')
        if(naa<100 && naa>=10)
            x<-paste('0',naa,'.csv',sep = '')
        if(naa<=332 && naa>=100)
            x<-paste(naa,'.csv',sep = '')
        b <- file(description = x , open = 'r')
        a <- read.csv(b)
        means<-c(means,a[,pollutant][!is.na(a[,pollutant])])
    }
    return(mean(means))
}
pollutantmean("specdata", "sulfate", 1:10)