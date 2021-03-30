fifaindi<-function(a)
{
    url<-paste('https://fifarenderz.com/20/players?page=',i,'&scope=DESC&filter=rating&bigcards=false',sep='')
    urldata<-GET(url)
    data<-htmlTreeParse(urldata,useInternalNodes=T)
    
    links<-xpathSApply(data,"//a/@href")
    val<-grep('^/20/player/',links)
    linksimp<-links[val]
    linkp<-paste('https://fifarenderz.com',linksimp,sep='')
    
    url<-linkp[a]
    urldata<-GET(url)
    data<-htmlTreeParse(urldata,useInternalNodes=T)
    names<-xpathSApply(data,"//span[@class='stat-name']",xmlValue)
    rat<-xpathSApply(data,"//span[starts-with(@class,'stat-stat')]",xmlValue)
    de<-rat
    de<-as.data.frame(t(de))
    colnames(de)<-names
    return(de)
}