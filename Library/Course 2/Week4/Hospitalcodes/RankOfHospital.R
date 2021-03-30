rankhospital <- function(state, outcome, num = "best")
{
  file1 <- file(description = 'outcome-of-care-measures.csv' , open = 'r')
  data1 <- read.csv(file1)
  b<-c()
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
  SList <- List[states==state]
  Snames <- names[states==state]
  if(num=='best')
    return(Snames[SList==min(SList , na.rm = T)][!is.na(SList[SList==min(SList , na.rm = T)])])
  if(num=='worst')
    return(Snames[SList==max(SList , na.rm = T)][!is.na(SList[SList==max(SList , na.rm = T)])])
  SList[is.na(SList)]<-100
  for(i in 1:(num-1))
  {
    az<-1:length(SList)
    az<-az[SList==min(SList)]
    aq<-az[1]
    SList[aq]<-100
  }
  Minimum<-min(SList)
  SList <- List[states==state]
  Snames <- names[states==state]
  SList[is.na(SList)]<-100
  b<-Snames[SList==Minimum]
  return(b)
}