b <- file(description = 'o.csv' , open = 'r')
a<-read.csv(b)
c<-split(a,a$Month)#Do not use while using tapply
#sapply(c,function(x) colMeans(x[c('Ozone','Solar.R','Wind','Temp')],na.rm = T))#We can use colMeans too.
getavg<-function(x)
  matrix(c(mean(x$Ozone,na.rm = T),mean(x$Solar.R,na.rm = T),mean(x$Wind,na.rm = T),mean(x$Temp,na.rm = T)))
#q<-lapply(c,getavg)
#q<-tapply(a,a$Month,getavg)
#z<-cbind(q$`5`,q$`6`,q$`7`,q$`8`,q$`9`)#Do not use while using sapply.
#colnames(z)<-c('5','6','7','8','9')#Do not use while using sapply.
z<-sapply(c,getavg)
row.names(z)<-c('Ozone','Solar.R','Wind','Temp')
print(z)