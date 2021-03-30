arrangement <- function(outcome)
{
  file1 <- file(description = 'outcome-of-care-measures.csv' , open = 'r')
  data1 <- read.csv(file1)
  state<-c()
  hospital<-c()
  a <- data1
  names <- a[,2]
  states <- a[,7]
  HA <- as.numeric(a[,11])
  HF <- as.numeric(a[,17])
  PN <- as.numeric(a[,23])
  if(outcome == 'heart attack')
    List <- HA
  if(outcome == 'heart failure')
    List <- HF
  if(outcome == 'pneumonia')
    List <- PN
  SList <- split(List,states)
  Snames <- split(names,states)
  m<-SList
  states<-sort(unique(states))
  for(i in 1:(length(m)))
  {
    sni<-Snames[[i]]
    sli<-SList[[i]]
    sni[is.na(sli)]<-NA
    sni<-sni[!is.na(sli)]
    sli<-sli[!is.na(sli)]
    Snames[[i]]<-sni
    SList[[i]]<-sli
    m[[i]]<-cbind(SList[[i]],Snames[[i]])
    m[[i]][,1]<-as.numeric(m[[i]][,1])
    oo<-order(as.numeric(m[[i]][,1]))
    m[[i]]<-m[[i]][oo,]
  }
}
