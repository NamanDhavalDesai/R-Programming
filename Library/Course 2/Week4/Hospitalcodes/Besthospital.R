best <- function(state , outcome)
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
  Minimum <- min(SList , na.rm = T)
  b<-Snames[SList==Minimum][!is.na(SList[SList==Minimum])]
  b<-sort(b)
  return (b)
}