#My code notes 4.
#Simulation.

#There are number of functions for generating random variables from the standard probablity distributions. Like pois, gamma, norm which have different parameters according to which the random variables are generated and processed upon.
#There are 4 probablity distribuion functions in R.
#r - for random number generation. (n,mean=0,sd=1)
#d - for density. (x,mean=0,sd=1,log=F)
#p - for cumulative distributions. (q,mean=0,sd=1,lower.tail=T,log.p=F)          
#q - for quantile functions. (p,mean=0,sd=1,lower.tail=T,log.p=F)
#pnorm(q)= cumulative distribution of q.
#qnorm(p)= the inverse of the cumulative distribution of p.
#qnorm(pnorm(x))==x (TRUE).
#These are prefixes which have to be placed with thefunctions of the standard probablity distribution functions.
#Now these numbers are not actually random tthey are pseudo random numbers.

set.seed(1)
#What this does is that it sets the seed to the pseudo random numbers and hnec those 'random' numbers can be re-called. It can store values from multiple random codes too.
#Order is saved too and there is causality.

rbinom(10,1,0.5)
#This means that there will be 10 numbers from 0 to 1 having a probablity of 0.5 of being either.

system.time({for(q in 1:100000)print(q)})
##user  system elapsed 
##6.74    0.28    9.03 
#Performance analysis or simply profiling helps us by telling us that which part of code is taking how much time to execute.
#user time is the amount of time chared to the CPU.
#elapsed time is the time taken by the expression to run in real time.
#Now the user time can be higher than the elapsed time when your computer has multiple cores in the processor. Now although R does not use multiple cores but many r packages/libraries(Multi-threaded BLAS libraries) do.  Some packages can run two different computers hence the user time could be less than the elapsed time.
#Now the elapsed time can be higher than the user time when there is a user defined wait in th program lik when it is accepting values or has a non processor halt. Or when we are reading data from the internet.
#We can use it even for a group of statements by ({placing the code here}).

Rprof("exampleOmit.out")
complete("specdata", 30:25)
corr("specdata", 150)
Rprof(NULL)
#Rprof, it gives you the amount of time spent in various functions.
#This will create a file exampleOmit.out.
a<-summaryRprof('exampleOmit.out')
#summaryRprof, it gives you the percentages of the amount of time spent in various functions. 
#This can read it.
a$by.total
#by.total which divides total time spent by the number of functions.
##                       total.time total.pct self.time self.pct
##"corr"                       3.16     97.53      0.10     3.09
##"read.csv"                   2.64     81.48      0.10     3.09
##"read.table"                 2.54     78.40      0.14     4.32
##"complete"                   2.10     64.81      0.46    14.20
##"scan"                       1.70     52.47      1.70    52.47
##"type.convert"               0.58     17.90      0.02     0.62
##"type.convert.default"       0.56     17.28      0.48    14.81
##"match.arg"                  0.10      3.09      0.04     1.23
##"simplify2array"             0.04      1.23      0.04     1.23
##"structure"                  0.04      1.23      0.04     1.23
##"formals"                    0.04      1.23      0.02     0.62
##".signalSimpleWarning"       0.04      1.23      0.00     0.00
##"sapply"                     0.04      1.23      0.00     0.00
##"withRestarts"               0.04      1.23      0.00     0.00
##"as.data.frame.list"         0.02      0.62      0.02     0.62
##"cor"                        0.02      0.62      0.02     0.62
##"eval"                       0.02      0.62      0.02     0.62
##"order"                      0.02      0.62      0.02     0.62
##"sys.function"               0.02      0.62      0.02     0.62
##"<Anonymous>"                0.02      0.62      0.00     0.00
##"as.matrix"                  0.02      0.62      0.00     0.00
##"doWithOneRestart"           0.02      0.62      0.00     0.00
##"format.data.frame"          0.02      0.62      0.00     0.00
##"make.names"                 0.02      0.62      0.00     0.00
##"makeRestart"                0.02      0.62      0.00     0.00
##"makeRestartList"            0.02      0.62      0.00     0.00
##"print.data.frame"           0.02      0.62      0.00     0.00
##"simpleWarning"              0.02      0.62      0.00     0.00
##"withOneRestart"             0.02      0.62      0.00     0.00
a$by.self
#by.self does the same except it subtracts the time spent in functions above the call stack.
##                       self.time self.pct total.time total.pct
##"scan"                      1.70    52.47       1.70     52.47
##"type.convert.default"      0.48    14.81       0.56     17.28
##"complete"                  0.46    14.20       2.10     64.81
##"read.table"                0.14     4.32       2.54     78.40
##"corr"                      0.10     3.09       3.16     97.53
##"read.csv"                  0.10     3.09       2.64     81.48
##"match.arg"                 0.04     1.23       0.10      3.09
##"simplify2array"            0.04     1.23       0.04      1.23
##"structure"                 0.04     1.23       0.04      1.23
##"type.convert"              0.02     0.62       0.58     17.90
##"formals"                   0.02     0.62       0.04      1.23
##"as.data.frame.list"        0.02     0.62       0.02      0.62
##"cor"                       0.02     0.62       0.02      0.62
##"eval"                      0.02     0.62       0.02      0.62
##"order"                     0.02     0.62       0.02      0.62
##"sys.function"              0.02     0.62       0.02      0.62
#We can us any of the two and get the other but we will not get the parent function(main) in self.
a$sample.interval #The time interwal(accuracy in simple terms).
##[1] 0.02
a$sampling.time #The total time of the profiling run.
##[1] 3.24
