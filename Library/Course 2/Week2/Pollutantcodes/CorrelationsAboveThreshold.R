corr <- function(directory, threshold = 0)
{
    cor_results <- vector(mode = 'numeric' , length = 0)
    complete_cases <- complete(directory)
    complete_cases <- complete_cases[complete_cases$nobs>threshold,]
    print(complete_cases$id)
    if(length(complete_cases$id)>0)
    {
        x<-''
        for(naa in complete_cases$id)
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
            cor_results<-c(cor_results,cor(n[q],s[q]))
        }
    }
    return(cor_results)
}
cr <- corr("specdata", 150)