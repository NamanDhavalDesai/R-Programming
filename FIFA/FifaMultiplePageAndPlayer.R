fifa<-function(a)
{
    d<-1:57
    library(httr)
    library(XML)
    for(i in 1:a)
    {
        url<-paste('https://fifarenderz.com/20/players?page=',i,'&scope=DESC&filter=rating&bigcards=false',sep='')
        urldata<-GET(url)
        data<-htmlTreeParse(urldata,useInternalNodes=T)
        Rating<-xpathSApply(data,"//span[@class='rating']",xmlValue)
        Position<-xpathSApply(data,"//span[@class='position']",xmlValue)
        Name<-xpathSApply(data,"//span[@class='name']",xmlValue)
        tpp<-cbind(Rating,Position,Name)
        names<-c("Pace","Shootig","Passing","Dribbling","Defending","Physical","Diving","Positioning","Handling","Reflexes","Kicking","Physical")
        Val<-xpathSApply(data,"//span",xmlValue)
        loop2<-11
        stat2<-1:4
        names(stat2)<-c("Club","League","Country","Skillboost")
        len2<-(nrow(tpp)*200)
        while(loop2<=len2)
        {
            if(is.na(Val[loop2]))
                break;
            per2<-c(Val[loop2],Val[loop2+1],Val[loop2+2],Val[loop2+3])
            stat2<-rbind(stat2,per2)
            loop2<-loop2+19
        }
        stat2<-stat2[-1,]
        stat2<-stat2[1:(nrow(tpp)),]
        tpp<-cbind(tpp,stat2)
        aa<-xpathSApply(data,"//span[@class='stat-stat']",xmlValue)
        loop<-1
        stat<-1:12
        names(stat)<-names
        len<-nrow(tpp)
        len<-len*6
        az<-1
        while(loop<=len)
        {
            aaaa<-Position[az]
            per<-c(aa[loop],aa[loop+1],aa[loop+2],aa[loop+3],aa[loop+4],aa[loop+5])
            if(aaaa=="GK")
                per<-c(rep(NA,6),per)
            if(aaaa!="GK")
                per<-c(per,rep(NA,6))
            stat<-rbind(stat,per)
            az<-az+1
            loop<-loop+6
        }
        stat<-stat[-1,]
        tpp<-cbind(tpp,stat)
        rm(stat,stat2,aa,aaaa,az,len,len2,loop,loop2,Name,names,per,per2,Rating,Val)
        links<-xpathSApply(data,"//a/@href")
        val<-grep('^/20/player/',links)
        linksimp<-links[val]
        linkp<-paste('https://fifarenderz.com',linksimp,sep='')
        len3<-nrow(tpp)
        de<-1:38
        de<-as.matrix(t(de))
        for(ii in 1:len3)
        {
            url<-linkp[ii]
            urldata<-GET(url)
            data<-htmlTreeParse(urldata,useInternalNodes=T)
            rat<-xpathSApply(data,"//span[starts-with(@class,'stat-stat')]",xmlValue)
            if(Position[ii]=="GK")
                rat<-c(rep(NA,27),rat)
            if(Position[ii]!="GK")
                rat<-c(rat,rep(NA,11))
            de<-rbind(de,rat)
        }
        de<-de[-1,]
        names(de)<-c( "Acceleration","Sprint Speed","Positioning",   
                      "Finishing","Shot Power","Long Shot",
                      "Volleys","Penalties","Vision",        
                      "Crossing","Free Kick","Short Passing",
                      "Long Passing","Curve","Agility",       
                      "Balance","Reactions","Ball Control",
                      "Dribbling","Interceptions","Heading",       
                      "Marking","Stand Tackle","Sliding Tackle",
                      "Jumping","Strength","Aggression",
                      "GK Diving","GK Positioning","Handling",
                      "Reflexes","Jumping","GK Kicking",
                      "Long Passing","Reactions","Agility",       
                      "Sprint Speed","Strength")
        tpp<-cbind(tpp,de)
        print(i)
        d<-rbind(d,tpp)
    }
    d<-d[-1,]
    d<-as.data.frame(d)
    names(d)[20:57]<-c("Acceleration","Sprint Speed","Positioning","Finishing","Shot Power","Long Shot","Volleys","Penalties","Vision","Crossing","Free Kick","Short Passing","Long Passing","Curve","Agility","Balance","Reactions","Ball Control","Dribbling","Interceptions","Heading","Marking","Stand Tackle","Sliding Tackle","Jumping","Strength","Aggression","GK Diving","GK Positioning","Handling","Reflexes","Jumping","GK Kicking","Long Passing","Reactions","Agility","Sprint Speed","Strength")    
    d<-d[as.numeric(d$Rating)>=85,]
    gk<-d[d$Position=="GK",]
    ngk<-d[d$Position!="GK",]
    ngk<-ngk[,!is.na(ngk[1,])]
    GK<-gk[,!is.na(gk[1,])]
    ST<-ngk[ngk$Position=="ST",]
    RW<-ngk[ngk$Position=="RW",] 
    LW<-ngk[ngk$Position=="LW",]
    CF<-ngk[ngk$Position=="CF",]
    RF<-ngk[ngk$Position=="RF",]
    LF<-ngk[ngk$Position=="LF",]
    CAM<-ngk[ngk$Position=="CAM",]
    CDM<-ngk[ngk$Position=="CDM",]
    CM<-ngk[ngk$Position=="CM",]
    RM<-ngk[ngk$Position=="RM",]
    LM<-ngk[ngk$Position=="LM",]
    CB<-ngk[ngk$Position=="CB",]
    RB<-ngk[ngk$Position=="RB",]
    LB<-ngk[ngk$Position=="LB",]
    RWB<-ngk[ngk$Position=="RWB",]
    LWB<-ngk[ngk$Position=="LWB",]
    data<-list(ST,CF,LF,RF,RW,LW,CAM,CDM,CM,LM,RM,CB,RB,LB,RWB,LWB,GK)
    return(data)
}
