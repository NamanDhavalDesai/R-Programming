complete <- function(directory,id = 1:332)
{
    ids<-c()
    nobs<-c()
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
        s<-a$sulfate
        n<-a$nitrate
        q<-complete.cases(n,s)
        l<-length(n[q])
        ids<-c(ids,naa)
        nobs<-c(nobs,l)
    }
    return(data.frame(id=ids , nobs=nobs))
}
complete("specdata", 30:25)