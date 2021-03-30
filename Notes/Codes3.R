#My code notes 3.
#Looped functions.

#All the parameters are not defaulted hence have to be written(without names is fine too).

#*x<-list(a=1:5 , 1:100)
lapply(X=x,FUN=mean)
##$a
##[1] 3
##[[2]]
##[1] 50.5
#What this does is that it accepts a list(if not it will coerce into one) and apply the parameterized function to every element of the list.
#lapply always returns a list.
lapply(X=x,FUN=sum,1)
#This way we can set the other parameters too of the function, if named and not(...) then write the name. Else it will be placed accordingally.
#*x<-list(a=1:5 , 1:100)
sapply(X=x,FUN=mean)
##a      
##3.0 50.5
#sapply is similar to lapply but the key difference is when it returns if all the elements of the list are of the same class and same length, it will return an vector instead of a list which is much more readable.
#*a<-c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5)
#*dim(a)<-c(5,5)
#*a
##     [,1] [,2] [,3] [,4] [,5]
##[1,]    1    2    3    4    5
##[2,]    1    2    3    4    5
##[3,]    1    2    3    4    5
##[4,]    1    2    3    4    5
##[5,]    1    2    3    4    5
apply(X=a,MARGIN=1,FUN=mean)
rowMeans(a)
rowSums(a)#Gets the sum.
##[1] 3 3 3 3 3
apply(X=a,MARGIN=2,FUN=mean)
colMeans(a)
colSums(a)#Gets the sum.
##[1] 1 2 3 4 5
#MARGIN is the dimention which you want to collapse and calculate.
#If the dimentions are more than 2 you can set the MARGIN to to c(dim1,dim2).
#We can addthe dims attricute to col/row mean/sum s(a,dims=no_) 1-row , 2-column , 3-depth and so on. If we use col then 2 is skipped and depth becomes-2.
mapply(FUN=rep,1:4,2,SIMPLIFY = FALSE)
##[[1]]
##[1] 1 1
##[[2]]
##[1] 2 2
##[[3]]
##[1] 3 3
##[[4]]
##[1] 4 4
mapply(FUN=rep,1:4,2,SIMPLIFY = T)
##     [,1] [,2] [,3] [,4]
##[1,]    1    2    3    4
##[2,]    1    2    3    4
#*x<-list(a=1:4 , b=5:10)
#*y<-list(c=11:15, d=15:20)
#Simplyfying gives you back a matrix in its simplest form.
mapply(FUN=rep,c(x,y),2,SIMPLIFY = F)
##$a
##[1] 1 2 3 4 1 2 3 4
##$b
##[1]  5  6  7  8  9 10  5  6  7  8  9 10
##$c
##[1] 11 12 13 14 15 11 12 13 14 15
##$d
##[1] 15 16 17 18 19 20 15 16 17 18 19 20
#This does what lapply does but it can do it to 2 lists simulataneously.
#*x<-rep(1:10,2)
tapply(x,x,sum)
##1  2  3  4  5  6  7  8  9 10 
##2  4  6  8 10 12 14 16 18 20 
y<-gl(2,10)
tapply(x,y,sum)
##1  2 
##55 55 
#Basically what tapply does is that it subsets the first vector by matching the elements from the secong vector.
#It returns in a single dimentional array(default). Set simplyft to FALSE it will return a list having names as the mached or non repeative matched elements of the secong parameter.
#*x<-rep(1:10,2)
#*y<-rep(11:20,2)
vapply(x, mean, character(1))
#This similar to sapply except for it accepts a class type too.
split(x,y)
##$`11`
##[1] 1 1
##$`12`
##[1] 2 2
##$`13`
##[1] 3 3
##$`14`
##[1] 4 4
##$`15`
#[1] 5 5
##$`16`
##[1] 6 6
##$`17`
##[1] 7 7
##$`18`
##[1] 8 8
##$`19`
##[1] 9 9
##$`20`
##[1] 10 10
#split is similar to tapply except that it doesn't run the newly subsetted data in a function. It only returns the splitted vector as a list.
split(x,y,drop = TRUE)
#Now as we saw here some levels are not used hence we can use drop and it will drop them.
x<-gl(2,10)
y<-gl(4,5)
interaction(x,y)
##[1] 1.1 1.1 1.1 1.1 1.1 1.2 1.2 1.2 1.2 1.2 2.3 2.3 2.3 2.3
##[15] 2.3 2.4 2.4 2.4 2.4 2.4
##Levels: 1.1 2.1 1.2 2.2 1.3 2.3 1.4 2.4
#They interact and can be used then in spliting.
#I can just set x,y in a list the interaction function will be called automatically.
x<-gl(2,20)
y<-gl(4,10)
z<-gl(8,5)
interaction(x,y,z)#64(8*4*2) but there are only 40(20*2) as length is 40.
#It will work properly but all areas will not be covered cause by the time the vector moves forward the old data is lost
#It is possible but not here there I would have to repeat. Like shown below.
x<-rep(rep(c(1,2,3),each=3),each=3)
y<-rep(rep(c(1,2,3),each=3),3)
z<-rep(rep(c(1,2,3),3),3)
interaction(x,y,z)
##[1] 1.1.1 1.1.2 1.1.3 1.2.1 1.2.2 1.2.3 1.3.1 1.3.2 1.3.3
##[10] 2.1.1 2.1.2 2.1.3 2.2.1 2.2.2 2.2.3 2.3.1 2.3.2 2.3.3
##[19] 3.1.1 3.1.2 3.1.3 3.2.1 3.2.2 3.2.3 3.3.1 3.3.2 3.3.3
#Here this has 21 levels and 27 corresponding elements.
#The number of levels>=the number of elements.
