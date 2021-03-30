#My code notes .

#We use # for comments.
#Here x,y,z are objects.
#While creating a vector it will always start from 1 no matter what the value(s) are.
#We can use '' instead of "" too.
#Objects having one single class are called values.
#Objects having data from multiple classes is called data.
#Subsetting with[] will give you what you subset.
#Subsetting with[[]] will give you what you a value(s).
#We can set all value to 0 by having a [TRUE] subset.
#We can go to the global options and then to code and change the tab width then ctrl-a and ctrl-i to indent.

#  Note:
#  Anything more than # has a special condition.
## means output.
#* means requirement code to get understandable output.

#Files Function.
getwd()
#This gets or could even set to x(character)(x<-) the working directory.
dir()
#This gets or could even set to x(character)(x<-) all the files in the directory. 
ls()
#This gets or could even set to x(character)(x<-) all the objects in the directory. 
dir.create('dirname_')
#This creates an directory named dirname_.(This new directory will be created in the file of the old working directory).
setwd('dirname_')
#This sets the working directory to dirname_.
file.create('filename_.R')
#This creates a file named filename_ having extension .R(can vary) in the current working directory.
file.exists('filename_.R')
#This checks if the file exists in the current working directory.
file.info('filename_.R')
#This gives back the information of the file. We can have a subset too like [mode] , etc.
file.rename('filename_.R' , 'filerename_.R')
#This renames the file from filename_.R to filerename.R.
file.copy('filerename_.R' , 'filecoppy_.R')
#This coppies filerename_.R into a new or already existing file filecoppy_.R.
file.path('filerename_.R')
#this gives the path of the location of filerename_.R.
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
#This creates a new directory named testdir2 in the current directory, in which there will be a sub directory named, testdir3.
#We need to keep recursive = TRUE in order to use file.path().
#We can use more than 2 depth too, meaning one inside another inside another and so on this loop will be equal to the number of files. 

#Rudimentary Codes.
x <- 100 
#Stores 100 in x.
#We can use +.-.*,/(not %) during initialization or declaration or even otherwise.
#We can even use x <- y <- z <- (1(val_)(Y/N)).
#We can use ^ for power , sqrt() for square-root and abs() to get the absolute value. 
#We can use ceiling(), floor(), round(x,digits=n) ,signif(x,n), cos(x), sin(x), log(x), log2(x), log1(x), exp(1)(e^1)  etc too.
#We can even use !,|(or),||(if statements),&(and),&&(if statement),xor(var1_,var2_) as not operator.
#We can x <- x+5 but not x +<- 5 (this is wrong).
#nCr is chose(n,r).
#When we use any mathematical operator the vector/value changes to an integer.
#We can get Inf(infinity) by 1/0. It will even print Inf. We can even get -Inf.
#We can get NaN((not a number),(undefined number)) by 0/0. It will even print NaN.
#We can add logic too, like 'a'<'b'(<,>,<=,>=,==). It will give a boolean output.
#We can do this to vectors too wherein each element gets added(If the length is less then too the smaller one will repeat (only if it is a factor if not it wont repeat and the last few will remain the same) and not give any errors). While you can sub-set vectors get values and then perform these operations too. Hence its a win win having it. 
#Things get a little different in matrices ad normal operators do stuff element wise.
#To use proper matrix operators we need to, put them in %% as in * becomes %*%.
x <- "string_"  
#We cant use +.-.*,/(not %) during initialization or declaration or even otherwise.
#The variable changes its data-type even after declaration if it needs to.
x <- 1:10
#: operator is used to create an integer sequence.
#This means that t is an integer vector whose first element is 1 and last element is 10.
#It can be in reverse too.
x <- 1E5
#What this does is that stores 10^5 in x.
x <- c(TRUE,FALSE)
x <- c(T,F)
#Both do the same thing.
#The c operator is another way and a better way to create a vector.
#In the case of having numeric values max presicion is at 0. where you get 3 point precision. 
#We can keep adding to it, like s=s+data.
#Will work on 2 or more vectors having different classes too.
#Varience in classes.
#1.111 -> 1.11 , 11.111 -> 11.1 , 111.111 -> 111 , 1111.111 ->1111 and so on.
#character(exception)>complex>numeric>integer>logical. This the order of precidance in coercion.
y <- x<3
#Will create a logical vector having length similar x and all the values will undergo the condition and y will save the reults in the same order.
x[y]
#What this does is that it prints values of x which are corresponting elements of true only in y. 
#Works for all.
x[-c(2,10)]
x[c(-2,-10)]
#This will print all the values of vector x except 2 and 10.(--=+ works).
x[1]  #Will print the first element.
x[3:5]#Will print from the 3rd element to 5th element.
x[x>3]#Will print all elements for whic this condition holds true.
#We can get a particular elements by using the [val_] operator.
#The [val_] operator will work on values.
#These work for [[val_]] too.
as.logical(x)     #This just prints.
x <- as.logical(x)#This sets not prints.
#This is how we can explecitly coerce. We can multiple coerce in type 1 and 2 but in 2 data can be lost as 2 gives true but true gives 1 but if we do not set the value then no harm is done. We can do this for data frames too (as.data.frame).
#We can use and class there instead of logical(here).
#We cant coerce from string to any other class(data-type). We will get NA(not available). It will even print NA if it has to.

#Print Functions.
print(x)#Explcit printing.
x       #Auto printing.
#Both will print the value stored in them.
#We get the [1] which is a way of the interpreter telling us what element of the vector is being shown.
k={print('s');4}
##[1] "s"
#*print(k)
##[1] 4
c <- c('An', 'apple' , 'a' , 'day')
paste(c , collapse = " ")#If your parameters are 2 vectors and not of the same length then repetition may occur. 
paste(c , collapse = "") == paste0(c , collapse)# Is true.
#Makes the entire sting in one.
#Can be used to create file names.
cat(x,'hello')
##5 hello
#We can use this instead of the + on java. We can set the sep='' for a more genuine output.
View(x)
#We use this fuction to view the value/data stored in the variable/value in the parameter in the source screen.
#we can put a , and then put a name in "" which will become the name of the the source window.
#This way of view will show you changes on spot, if any.

#Basic Functions.
length(x)
#Will give the length of the vector x.
class(x)
#This function gives you the class(data-type) of the parameter(here x).
identical(x,y)
#This will check if the 2 vectors , lists , etc have the names.
library(dplyr)
union(x,y)
#This will give you the values that are same in x and y.
agrs(sum)
#This gives you the arguments of the parameterized function.
attributes(x)
#Gives all the attributes of the object.
summary(x)
#Gives you the summary of x(more statistical).
str(x)
#Gives you the brief description of x(As shown in the environment).
search()
#Gives you the order about how R is going to search a function in a package.
object.size(x)
#Gives us the size of the object x in bytes.r
print(object.size(x),units="Mb")
#Will print the value of object.size(x) in Mb.

#Data Structures.
x <- vector("numeric" , length = 10)
#This creates a vector of length 10 and of the class numeric. 
#It will set the values as defaults.
#class:    default value:
#character ""
#numeric   0
#interger  0
#complex   0+0i
#logical   FALSE
x <- seq(1,10,by=0.5)
#This sets an numeric vector of length 20 from 1,1.5,...10.
x<-seq(5, 10, length=30)
#This sets the by to (10-5)/30 as there will be 30 elements.
y<-seq(along.with = x)
y<-seq_along(x)
#Goes through the elements of x one by one. Same as 1:length(x)
x <- list(foo = 'a' , bar = 1+2i , zee = T)
#This creates a list of 3 (character , complex , logical).
#Lists are not an object they are the combination of one. We can convert by as.list(x).
#Lists can include matrices , data-stuctures and everything.
#We can use x[1]/x[[1]] to get the first element the second way is better as you dont get it printed like you do when you execute it the first way.
#The [[val_]] will work on data.
#If I use x['bar'] then the output is $bar and 1+2i on the next line.In this case you can   reference bar by using a variable storing "bar". As we use string in '' and variable directly hence there is a difference.
#If I use x[['bar']] then the output is 1+2i.Same as bellow.         In this case you can   reference bar by using a variable storing "bar". As we use string in '' and variable directly hence there is a difference.
#if I say x$bar the output will be 1+2i.Same as above.               In this case you can't reference bar by using a variable storing "bar". As we use the string directly, if we use a variable then the interpreter will find the variables name as the string itself tantamonting to an error.
#If I say x[c('bar' , 'zee')]. Repetition is allowed.                In this case you can   reference bar by using a variable storing "bar". As we use string in '' and variable directly hence there is a difference.
#Now we cant use x[[c('bar' , 'zee')]] it wont work.
#Now if,
x <- list (a = c(1 , 2 , 3 , 4, 5) , b = c('a','b','c'))
x[[1]][[2]]
##[1] 2
x[c(1,2)]
##$a
##[1] 1 2 3 4 5
##$b
##[1] "a" "b" "c"
c[[c(1,2)]]
##[1] 2
c$a
##[1] 1 2 3 4 5
c[['a']]
##NULL
c[['a' , exact = FALSE]]#This tells the interpreter that the string does'nt have to be exact only a partial match(at the beginning) will do.
##[1] 1 2 3 4 5
x <- matrix(nrow = 3 , ncol = 6)
#We can create matrix like this. Here the number of rows =3 and the number of columns is 6.
#The data is stored row wise.
#The default vaulue is NA. But we can set is by (x[1,1] <- 1) and so on.
x <- matrix(1:18 , nrow = 3 , ncol = 6)
#This is the same as the above one except it sets the value from 1 to 18 coloumn wise.
x <- 1:30
dim(x) <- c(3 , 10)
#We can have a vector and then make it into a matrix too.
#Hence we can modify the matrix too.
#Here x was a vector having length 30 have value ranging from 1 to 30. Thsi changes into a vector having 3 rows and 10 columns.
x <- 0:5
y <- 10:15
cbind(x,y)     #This prints the column combined matrix.
rbind(x,y)     #This prints the row    combined matrix.
z <- cbind(x,y)#This sets   the column combined matrix to z.
z <- rbind(x,y)#This sets   the row    combined matrix to z.
#This combines the 2 vectors to make a matrix.
#If theie lengths dont match then we gwt an error if if ignore the error then the missing space will be created and set to 1 by default.
dim(x)
#This gives you 3 6 which are the dimentions.
dimnames(x)
#The default is row([1,]) , col([,1]) for (1,1) and so on.
#Will give you the names of the dimentions.
#To use dimnames we have to use lists.
#To print we can,
x[2,2]
##[1] 5
x[2,]#To print the entire row.
##[1]  2  5  8 11 14 17
x[,2]#To print the entire column.
##[1] 4 5 6
x[2,, drop = FALSE]
##     [,1] [,2] [,3] [,4] [,5] [,6]
##[1,]    2    5    8   11   14   17
#If you want the dimnetions set drop to FALSE, as the default value is TRUE we can't see the dimentions as the interpreter drops them but we can activate it like this too.
y <- matrix(c(T,F,F,F,T,F,F,F,T,F,F,F,F,F,F,F,F,F))
dim(e) <- c(3,6)#drop does not work for this.
#* x[y , drop = FALSE]
##[1] 1 5 9
t(x)
#This give the transpose of the matrix.
x <- factor(c('A','A','C','B','A','B','C'))
#*x
##[1] A A C B A B C
##Levels: A B C
table(x)
#*x
##A B C 
##3 2 2 
table(x,useNA = 'ifany')
#This will give you a column of how many NA's are present as table doesnt take NA into concideration by default.
table(x,y)
#This can take 2 paramters and give you a two dimentional table. Remember many values will be 0 as all will be taken into concideration. By all I mean the same effect we see in the interaction command.
unclass(x)
##[1] 1 1 3 2 1 2 3
##attr(,"levels")
##[1] "A" "B" "C"
#Ranks are set alphabetically or numerically.
#The ranks can be changed by using the levels attribute during declaration.
#For eg,
x <- factor(c('naman','naman','dhaval','swati','naman','swati','dhaval') , levels = c('naman' , 'swati' , 'dhaval'))
#*unclass(x)
##[1] 1 1 3 2 1 2 3
##attr(,"levels")
##[1] "naman"  "swati"  "dhaval" (not in order).
#If you want them to be from 0 make it,
#*unclass(x)-1
##[1] 0 0 2 1 0 1 2
#Factors: 
#Factors can be ordered or unordered. They are basically labels. 
#You can have ordered labels like Men(100+ kg) , Men(90+ kg) and so on.
#You can have un-ordered labels like male and females.
#Integer vector where each integer is a label.
x<-gl(5,2)#Another way of creating a list.
#*x
##[1] 1 1 2 2 3 3 4 4 5 5
##Levels: 1 2 3 4 5
x <- data.frame(High = c(1 , 2 , 1 , 3 ) , Medium = c(2 , 2 , 1 , 3) , Low = c(0:3) , Check = c(T , T , F , T))
#This is how to create a data frame.
#Here this data frame has 4 columns and 4 rows.
#We have already named the columns.
#As we have not specified any row names it is set to default 1,2,3,4 and so on.
nrow(x)     #Only prints.
y <- nrow(x)#Only sets not prints.
#This gives the number of rows.
ncol(x)     #Only prints.
y <- ncol(x)#Only sets not prints.
#This gives the number of columns
#This nrow() and ncol() function also works for matrices. 
x$addingtables<-1:4 #This way you can add columns.
#We can do this by rbing an cbind too.
data.matrix(z)
#This makes the data frame into a matrix but loss of data might occur as it is explecit coercion.
#Data frames are used to store tabular data.
#Data frames are the combination of multiple lists. Each list is kept as an coloumn and then these columns of equal length combine and make a table, ie the data frame.
row.names(x) <- c('class1' , 'class2' , 'class3' , 'class4')
#Each row can have differernt name. 
#we can set them like this.
names(x)
colnames(x)
#This priints the column names.
row.names(x)
rownames(x)
#This prints the row names.
#We can even use it to set or modify names by using itself as a funtion on another dimention in instelf or another data frame or by c().
#We can set the values(names) during declaraiom too. The format might be different and sometimes long. We don't have to mention the (x) and istead of <- during declaration we use =.
#In simple terms we use <- when we want set(not during declaration) and we use = to set(during declaration). Changes will cause in errors. We dont mention (var_) if we are using the function during declaraion as the interpreter already knows and will tantamount to an error if we use it.
#Unlike a matrix values are automatically set if the length is more or less it gives an error for values and for headings.
names(x)[5]<-"otf"
#Like this we can set a particular name to a singular dimention too.
table(x$Wind)
#It gives you the value along with their number or repititions.
#*d1<-data.frame(x=c('a','a','b','d1'),y=1:4)
#*d2<-data.frame(x=c('a','b','d2'),z=5:7)
merge(d1,d2)
##  x y z
##1 a 1 5
##2 a 2 5
##3 b 3 6
#This is how merge works.
#By default merge takes all the similar columns and merges then unless specified by, by.x/by.y/by.
#by=var_ works.
b<-file(description = "avgpm25.csv", 'r')
a<-read.csv(b)
a<-transform(airquality,Month=factor(Month))
#We can transform a cloumn of a matrix like this.
a<-subset(airquality,Month==5)
#We can subset a matrix easily like  this.
library(dplyr)
z<-join(x,y)
#Same as merge but only one column which is te identiacal(first identical one) is merged into one(in simple words its is a simple merge without any by parameters). 
z<-join_all(x,y,z,a)
#Same as join but can do it with multiple data sets only if all the data sets have one same column name.
tbl_df(dataframe_)
#This way we can have a better class to work with data.

#NA and NaN Handling.
x <- c(T,NaN,NA,F,T)
is.na(x)
##[1] FALSE  TRUE(NaN)  TRUE(NA) FALSE FALSE
#This checks if any value is NA or no.
is.nan(x)
##[1] FALSE  TRUE(NaN) FALSE(NA) FALSE FALSE
#This checks if any value is NaN or no.
#All NaN values is NA but all NA values are NOT NaN.
#To get the value in 0 and 1 we can suffix +1-1 to it.
#NaN to logical gives NA.
x <- x[!(is.na(x))]
#We can remove the NA/NaN values, by subsetting like this, but this is harmfull if the vector is a logical one as the values get numerized. We need to use as.logical to get the final value.
z = complete.cases(x,y)#Where x and y are 2 vectors of the same length having the same elemental position of their NA and NaN then we can use this.
#This is a subset of both the vectors NA and NaN values.
#Hence when we x[z] or y[z] them they will print no NA or NaN values.
#This can't be used if the placements of NA or NaN aren't the same(their combination of the positions of the placements of NA or NaN of both the vectors will be removed from both the vectors hence tantamounting to loss in data) or if they are of differnt length(error). 
#Can be used on any object like datasets(it takes away the entire row with it) too.(more logical use there)
#Can be used on one too, more useful that way.
x[is.na(x)]<-0
#We can change the NA , NaN to 0.

#Sorting Functions.
sort(x)
#Sorts b in an alphabetical order or numerical.
order(x)
#This can help in arrangement a lot. It basically tells the the current location of the element that would be there after arrangement.
#All these happen lexicographically as in words and then null.
x[order(a$a,a$b),]
#This will sort x in the order of a and then in x$a if there are similar values then it will check the values of x$b.
x[order(x),]<-sort(x)
#Another way or explainatory notation.
library(plyr)
library(dplyr)
arrange(x,a)#Is the same as x[x$a,].
arrange(x,desc(a))#It is the inverse of x[x$a,].
restdat<-read.csv(file("Restaurants.csv",'r'))
newdata<-mutate(restdat,zipGroups=cut2(zipCode,g=4))
arrange(newdata,newdata$zipGroups)
#This will not oly arrange the data in the zipGroup wise it will even do it alphabetically in names. 
rank(x)
#This tells you the position of the elements if they were sorted.
x<-data.frame(High=c(1,2,1,3),Medium=c(2,2,1,3),Low=c(0:3),Check=c(T,T,F,T))
x[which(x[,1]>1),] #Which returns the positions of true.
##  High Medium Low Check
##2    2      2   1  TRUE
##4    3      3   3  TRUE
x[,which(x[1,]>0)]
##  High Medium Check
##1    1      2  TRUE
##2    2      2  TRUE
##3    1      1 FALSE
##4    3      3  TRUE
#which(x[row_/col_]condn_)returns back all the row or column name where its value is true.
#See the commas carefully.

#Helping Functions.
rm(x,y,z)
#Removes/deletes the objects from the workspace.
rm(list = ls())
#Removes/deletes all the objects from the workspace.
x<-rep(10,4)
#Repeats 10, 4 times.
x<-rep(c(0, 1, 2), times = 10)
#Repeats 0,1,2, 10 times.
x<-rep(c(0, 1, 2), each = 10)
#Repeats 0,1,2, 10 times element wise ie 0 10 times followed bt 1 10 times followed by 2 10 times.
x<-rep(1:4 ,4:1)
##[1] 1 1 1 1 2 2 2 3 3 4
mean(x)
#To calculate the mean of a vector.
max(x)
#To calculate the maximum value of a vector.
min(x)
#To calculate the minimun value of a vector.
sum(x)
#To calculate the sum of the values of the vector.
cumsum(1:12)
##[1]  1  3  6 10 15 21 28 36 45 55 66 78
#This will give you the cumulative sum ie the sum of the value and the ones bellow it.
range(x)
#Gives us the minimum followed by the maximum value of x.
unique(x)
#Gives you the output of all the value deleting the repetition.
rev(x)
#Give you the reverse of the the vector.
any(x<0)
#Checks and returns boolean if any value is less than 0.
all(x>0)
#Checks and returns boolean if all values are greater than 0.
min(x , na.rm = TRUE)
#To calculate the minimun value of a vector.
#na.rm doesnt take into concideration the NA or NaN.
quantile(x,probs = c(vals_))
#Gives the 0%, 25%, 50%, 75% ,100%.
#probs gives you the values that you want to see.
x<-rnorm(100)
#This generates 100 random vlaues and stores it in x. It can print too.
y<-rep(1,100)
z<-sample(c(x,y) , 10 ,replace = T)#Replace =T allows the same number to be repeated.
#What this does is, it randomly merges 10 values randomly from x and y.
#*i<-1:5
#*j<-11:15
replicate(5,1:5)
##   [,1] [,2] [,3] [,4] [,5]
##[1,]    1    1    1    1    1
##[2,]    2    2    2    2    2
##[3,]    3    3    3    3    3
##[4,]    4    4    4    4    4
##[5,]    5    5    5    5    5
#Same like outer but simpler and inverse parameters.
outer(i,j,'+')
##     [,1] [,2] [,3] [,4] [,5]
##[1,]   12   13   14   15   16
##[2,]   13   14   15   16   17
##[3,]   14   15   16   17   18
##[4,]   15   16   17   18   19
##[5,]   16   17   18   19   20
#This creates a vector where each element is the output of their possitioned elements in both the vectors.
x<-c(1,2,1,3,1)
x %in% 1
##[1]  TRUE FALSE  TRUE FALSE  TRUE
#Will check if any value of x is 1(here).
x %in% c(1,2)
##[1]  TRUE  TRUE  TRUE FALSE  TRUE
#Same as above but checks for 1 or 2.
match(2,x)
##[1] 2
match(c(1,2),x)
##[1] 1 2
#Match will give you the first occurance of the value in the first parameter.
ifelse(dataframecondition_,"If true","If false")
#This shoul come under Codes2 but as it is a command it comes here.
data("UCBAdmissions")
DF<-as.data.frame(UCBAdmissions)
xtabs(Freq ~ Gender+Admit , data = DF)
Admit
##Gender   Admitted Rejected
##Male       1198     1493
##Female      557     1278
#This can help to finf relations.
#What this does is that it divides the number of admitted patients in male or female and tell us the number of the admitted and rejected Freq.
data("warpbreaks")
DF<-as.data.frame(warpbreaks)
warpbreaks$replicate<-rep(1:9,length=54)
x<-xtabs(breaks~. ,data = warpbreaks)
#*x
##, , replicate = 1
##tension
##wool  L  M  H
##A 26 18 36
##B 27 42 20
##, , replicate = 2
##tension
##wool  L  M  H
##A 30 21 21
##B 14 26 21
##, , replicate = 3
##tension
##wool  L  M  H
##A 54 29 24
##B 29 19 24
##, , replicate = 4
##tension
##wool  L  M  H
##A 25 17 18
##B 19 16 17
##, , replicate = 5
##tension
##wool  L  M  H
##A 70 12 10
##B 29 39 13
##, , replicate = 6
##tension
##wool  L  M  H
##A 52 18 43
##B 31 28 15
##, , replicate = 7
##tension
##wool  L  M  H
##A 51 35 28
##B 41 21 15
##, , replicate = 8
##tension
##wool  L  M  H
##A 26 30 15
##B 20 39 16
##, , replicate = 9
##tension
##wool  L  M  H
##A 67 36 26
##B 44 29 28
ftable(x)
##             replicate  1  2  3  4  5  6  7  8  9
##wool tension                                     
##A    L                 26 30 54 25 70 52 51 26 67
##     M                 18 21 29 17 12 18 35 30 36
##     H                 36 21 24 18 10 43 28 15 26
##B    L                 27 14 29 19 29 31 41 20 44
##     M                 42 26 19 16 39 28 21 39 29
##     H                 20 21 24 17 13 15 15 16 28
az<-0:100
aa<-cut(az,quantile(az))#This subsets internally so if I print aa normally we get a factor making type of data in the aa variable.
#*table(aa)
##aa
##(0,25]  (25,50]  (50,75] (75,100] 
##    25       25       25       25 
#You want it with aa in one dimention then table(aa,az)
nchar(x)
#If x is a string then nchar will give the number of characters in it. 
toupper(x)#Special characters(Non-letters) remain constant.
#If x is a string the this will make all the characters of this string to uppercase.
tolower(x)#Special characters(Non-letters) remain constant.
#If x is a string the this will make all the characters of this string to lowercase.
library(readr)
parse_number("class5")
##[1] 5
#This will read and return the first occurance of a number.
grepl("a","Hella World!")
##[1] TRUE
#As "a" as a character(can be string too) is a part of the string, the secong parameter.
#Command Meaning
#.	     Any Character.
#\w	     A Word.
#\W	     Not a Word.
#\d	     A Digit.
#\D	     Not a Digit.
#\s	     Whitespace.
#\S	     Not Whitespace.
#[xyz]   A Set of Characters.
#[^xyz]	 Negation of Set.
#[a-z]	 A Range of Characters.
#^	     Beginning of String.
#$	     End of String.
#\n	     Newline.
#+	     One or More of Previous character.
#*	     Zero or More of Previous character. This will concider the longest occuance so if there are 3 s and you are matching s* it will take the first s to the third one as its selection.
#To decrease the greedyness we can use ^s(.*?)s$ . This ? says to not take the entire string. 
#?	     Zero or One of Previous character.
#|       Either the Previous or the Following character.
#{5} 	 Exactly 5 times of Previous character.
#{2, 5}	 Between 2 and 5 times or Previous character.
#{2, }   More than 2 times of Previous character.
#{} can be use after (condition_) and will be set for all the operators used in ().
#[a-zA-Z]Means all the letters. This is user defined hence can be varied.
#[^.?]$  Means the string should NOT end in . or ?. Here ^ has a different meaning altogether.
#[Gg]eorge([Ww\\.])?[Bb]ush This will match George w. Bush or simpely George Bush too. the? is an optional conditional setting operator.
#We need to use \\ special character_ to use special character.
#We can use \1,\2 and so on to say that we want to match the first or second or so occurance again when I use /1.
grepl(".", "")
##[1] FALSE
#This checks if there are any characters in the second parameter.
grepl("a.b", c("aaa","aab", "abb", "acadb"))
##[1] FALSE  TRUE  TRUE  TRUE
#Only in the first example a_...b is not true
grepl("a+", "Maryland")
##[1] TRUE
#Does it include one or more of "a".
grepl("^a", c("bab", "aab"))
##[1] FALSE TRUE
#Checks if the string starts with a.
grepl("b$", c("bab", "aab"))
##[1] TRUE TRUE
#Checks id the string ends with b.
grepl("\\.", "http://www.jhsph.edu/")
##[1] TRUE
#This checks if the string has a character ".".
grepl("a|b", c("abc", "bcd", "cde"))
##[1]  TRUE  TRUE FALSE
#Checks if the string has a character "a" or a character "b".
start_end_vowel <- "^[AEIOU].+[aeiou]$"
grepl(start_end_vowel, "String_")
#Checks is the String_ starts and ends witha a volwel.
grep("[Ii]",c("Hawaii", "Illinois", "Kentucky"))
##[1] 1 2
#Same as grepl but gives the indices which is the elements location.
#We can set the value = T to get the value of the outcome instead of the count.
sub("[Ii]", "1", c("Hawaii", "Illinois", "Kentucky"))
##[1] "Hawa1i"   "1llinois" "Kentucky"
#The sub() function takes as arguments a regex, a “replacement,” and a vector of strings. This function will replace the first instance of that regex found in each string. 
gsub("[Ii]", "1", c("Hawaii", "Illinois", "Kentucky"))
##[1] "Hawa11"   "1ll1no1s" "Kentucky"
#Same as sub() but instead replaces all the matched characters.
#If we use [Bb][Uu][Ss][Hh] it will batch Bush,BuSH,BuSh and every single bush. As we can create a patern this wll work.
two_s <- state.name[grep("ss", state.name)]
a<-strsplit(two_s, "ss")
##[[1]]
##[1] "Ma"        "achusetts"
##[[2]]
##[1] "Mi"   "i"    "ippi"
##[[3]]
##[1] "Mi"   "ouri"
##[[4]]
##[1] "Tenne" "ee"   
#*a[[1]]
##[1] "Ma"        "achusetts"
#*a[[1]][1]
##[1] "Ma"
a<-strsplit("hello.mate",'\\.')
#*a[1]
##[[1]]
##[1] "hello" "mate" 
#*a[[1]]
##[1] "hello" "mate" 
#*a[[1]][1]
##[1] "hello"
#*a[[1]][2]
##[1] "mate"
#This will split the string in 2 or parts with the conjenction being te second parameter(here ".").
#Splits them and allots them indivisual elements possisions in a list where each list element is a character array containing each seperation. If you exeed the array then you will get NA. Remember all the character arrays in each list element is not of the same length.
substr("helo",1,3)
##[1] "hel"

#stringr Package.
library(stringr)
str_extract("Camaro Z28", "[0-9]")
##[1] "2"
str_extract("Camaro Z28", "[0-9]+")
##[1] "28"
#This extracts the characters which match the regular expression(or simpely regex).
str_order(c("p", "e", "n", "g"))
##[1] 2 4 3 1
#The str_order() function returns a numeric vector that corresponds to the alphabetical order of the strings in the provided vector.
str_pad("Thai", width = 8, side = "left", pad = "-")
##[1] "----Thai"
#Provide padding of your choice and length and direction.
str_to_title(c("CAPS lock", "low", "Title"))
##[1] "Caps Lock" "Low"       "Title"    
#Makes those string in the title format. First letter of the word capital rest of the letters small.
str_trim(" trim me ")
##[1] "trim me"
#This removes the excess blank spaces in the front an dback of the string.
word("See Spot run.", 2)
##[1] "Spot"
#This is how we can inder words.

#Reshape2 Package.
library(reshape2)
a<-cbind(carnames<-rownames(mtcars),mtcars)
colnames(a)[1]<-"carname"
melt<-melt(a,id=c("carname","gear","cyl"),measure.vars = c("mpg","hp"))
#This adds an extra variable, doubling the length.
#We can remove id attribute to select all except vars it will work fine.
###sp<-split(melt,melt$variable)
###rownames(sp[[2]])<-1:32
###This will make thwo dfferent data frames, extra.
cyldata<-dcast(melt,cyl~variable)
merge(dcast(a,cyl~"mpg"),dcast(a,cyl~"hp"))#Same as above.
#Aggregation function missing: defaulting to length(count).
#*cyldata
##  cyl mpg hp
##1   4  11 11
##2   6   7  7
##3   8  14 14
#Helps us comare 2 variables.
cyldata<-acast(melt,cyl~variable)
#Aggregation function missing: defaulting to length.
#*cyldata
##  mpg hp
##4  11 11
##6   7  7
##8  14 14
#Same as dcast but returns an array. It is a little different.
cyldata<-dcast(melt,cyl~variable, mean)#var.variable is defaulted to the last column.
merge(dcast(a,cyl~"mpg",mean,value.var = "mpg"),dcast(a,cyl~"hp",mean,value.var = "hp"))#Same as above.
##  cyl      mpg        hp
##1   4 26.66364  82.63636
##2   6 19.74286 122.28571
##3   8 15.10000 209.21429
#This will take the mean instead of the count.

#Hmisc Package.
library(Hmisc)
#We need this package to use cut2.

#Plyr,dplyr and tidyr Package.
library(plyr)
restdat<-read.csv(file("Restaurants.csv",'r'))
newdata<-mutate(restdat,zipGroups=cut2(zipCode,g=4))
#What this does is that it levels the data in a quantile way in a new column and adds that to the old data frame and makes a new data frame.
library(dplyr)
example<-ddply(InsectSprays,.(spray),summarise,sum=sum(count))
##  spray sum
##1     A 174
##2     B 184
##3     C  25
##4     D  59
##5     E  42
##6     F 200
#This takes a data frame a variable(colname) and a column name runs it on the same values of the variable correposponding column which is the one we say and makes a new data frame.
#If you want to maintain the length then we use sum=ave(count,FUN=sum).
#The above is just an rudimental example.
sel<-select(chicago,city:dptp)
sel<-cbind(chicago[1:3])#Same as above.
#Will return a data frame with colums from city to dptp(Both included).
sel<-select(chicago,-(city:dptp))
sel<-cbind(chicago[-(1:3)])#Same as above.
#This will return all the colums except fot city and dptp.
#Here the ordre is what we say.
fil<-filter(chicago,pm25tmean2>30)
#This will get you the rows where its pm25tmean2 value is greater than 30.
fil<-filter(chicago,pm25tmean2>30&tmpd>80)
#We can have multiple conditions too. This code is the same a sthe above but here we even compare the tmpd and condition it to be greater than 80.
chicago<-arrange(chicago,date)
#This is a very handy function used to arrange the data accorting to a particular variable(here date).
chicago<-arrange(chicago,desc(date))
#Does the same as above but in reverse order.
#These will not oly arrange the data in the date wise it will even do it with the first,second,and so on column of there is a tie. 
chicago<-rename(chicago,pm25=pm25tmean2,dewpoint=dptp)
chicago<-mutate(chicago,pm25dtrend=pm25-mean(pm25,na.rm = T))
#This will add another column named pm25dtrend and will store the value of the pm25 minus the mean of all the pm25's.
chicago<-mutate(chicago,tempcat=factor(tmpd>80,labels=c("cold","hot")))
chicago<-mutate(chicago,tempcat=factor(tmpd<=80,labels=c("hot","cold")))#Same as above.
hotcold<-group_by(chicago,tempcat)
#This will group and sort according to the factor variable tempcat.
summarize(hotcold,pm25=mean(pm25,na.rm = T),o3=max(o3tmean2),no2=median(no2tmean2))
##`summarise()` ungrouping output (override with `.groups` argument)
## # A tibble: 3 x 4
##   tempcat  pm25    o3   no2
##   <fct>   <dbl> <dbl> <dbl>
## 1 cold     16.0 66.6   24.5
## 2 hot      26.5 63.0   24.9
## 3 NA       47.7  9.42  37.4
#This give us a summary of all the values in a simple way.
#Remember the summarize worked as the data frame was grouped by months.
chicago%>%mutate(month=as.POSIXlt(date)$mon+1)%>%group_by(month)%>%summarize(pm25=mean(pm25,na.rm = T),o3=max(o3tmean2),no2=median(no2tmean2))
{#Same as above.
    chicago<-mutate_(chicago,month=as.POSIXlt(date)$mon+1)
    chicago<-group_by(chicago,month)
    summarize(chicago,pm25=mean(pm25,na.rm = T),o3=max(o3tmean2),no2=median(no2tmean2))
}
##`summarise()` ungrouping output (override with `.groups` argument)
##  # A tibble: 12 x 4
##      month  pm25    o3   no2
##      <dbl> <dbl> <dbl> <dbl>
##    1     1  17.8  28.2  25.4
##    2     2  20.4  37.4  26.8
##    3     3  17.4  39.0  26.8
##    4     4  13.9  47.9  25.0
##    5     5  14.1  52.8  24.2
##    6     6  15.9  66.6  25.0
##    7     7  16.6  59.5  22.4
##    8     8  16.9  54.0  23.0
##    9     9  15.9  57.5  24.5
##   10    10  14.2  47.1  24.2
##   11    11  15.2  29.5  23.6
##   12    12  17.5  27.7  24.5
#This is how we can use the pipeline operator.
#The first argument in any ddply function will b ethe data frame you want to apply he function to, followed by the action you would like to take.
#The ddply function always returns a data frame.
n_distinct(x)
#Same as length(unique(x)) just faster.
bind_cols(x,y)#We can use this instead of cbind() which gives you a matrix this will give you that is return a data frame. 
bind_rows(x,y)#We can use this instead of rbind() which gives you a matrix this will give you that is return a data frame.
contains("character_")#This when used in select will only select the columns that ontain the characters characters_.
library(tidyr)
#*students
##  grade male female
##1     A    5      3
##2     B    4      1
##3     C    8      6
##4     D    4      5
##5     E    5      5
gather(students, sex, count, -grade)
##   grade    sex count
##1      A   male     5
##2      B   male     4
##3      C   male     8
##4      D   male     4
##5      E   male     5
##6      A female     3
##7      B female     1
##8      C female     6
##9      D female     5
##10     E female     5
#It's important to understand what each argument to gather() means. The data argument, students, gives the name of the original dataset. The key and value arguments -- sex and count, respectively -- give the column names for our tidy dataset. The final argument, -grade, says that we want to gather all columns EXCEPT the grade column (since grade is already a proper column variable.).
#We can use this to gather 2 variables that are divided and make them one.
#*students2
##  grade male_1 female_1 male_2 female_2
##1     A      7        0      5        8
##2     B      4        0      5        8
##3     C      7        4      5        6
##4     D      8        2      8        1
##5     E      8        4      1        0
res<-gather(students2,sex_class,count,-grade)
#*res
##   grade sex_class count
##1      A    male_1     7
##2      B    male_1     4
##3      C    male_1     7
##4      D    male_1     8
##5      E    male_1     8
##6      A  female_1     0
##7      B  female_1     0
##8      C  female_1     4
##9      D  female_1     2
##10     E  female_1     4
##11     A    male_2     5
##12     B    male_2     5
##13     C    male_2     5
##14     D    male_2     8
##15     E    male_2     1
##16     A  female_2     8
##17     B  female_2     8
##18     C  female_2     6
##19     D  female_2     1
##20     E  female_2     0
separate(res, sex_class, c("sex", "class"))
##   grade    sex class count
##1      A   male     1     7
##2      B   male     1     4
##3      C   male     1     7
##4      D   male     1     8
##5      E   male     1     8
##6      A female     1     0
##7      B female     1     0
##8      C female     1     4
##9      D female     1     2
##10     E female     1     4
##11     A   male     2     5
##12     B   male     2     5
##13     C   male     2     5
##14     D   male     2     8
##15     E   male     2     1
##16     A female     2     8
##17     B female     2     8
##18     C female     2     6
##19     D female     2     1
##20     E female     2     0
#Conveniently, separate() was able to figure out on its own how to separate the sex_class column. Unless you request otherwise with the 'sep' argument, it splits on non-alphanumeric values. In other words, it assumes that the values are separated by something other than a letter or number (in this case, an underscore.)
#This helps us if the 2 vaiables are merged in one variable.
#*students3
##    name    test class1 class2 class3 class4 class5
##1  Sally midterm      A   <NA>      B   <NA>   <NA>
##2  Sally   final      C   <NA>      C   <NA>   <NA>
##3   Jeff midterm   <NA>      D   <NA>      A   <NA>
##4   Jeff   final   <NA>      E   <NA>      C   <NA>
##5  Roger midterm   <NA>      C   <NA>   <NA>      B
##6  Roger   final   <NA>      A   <NA>   <NA>      A
##7  Karen midterm   <NA>   <NA>      C      A   <NA>
##8  Karen   final   <NA>   <NA>      C      A   <NA>
##9  Brian midterm      B   <NA>   <NA>   <NA>      A
##10 Brian   final      B   <NA>   <NA>   <NA>      C
students3<-gather_(students3,class, grade, class1:class5, na.rm = TRUE)
#Instead of class1:class5 I could have -name , -test or something.
#*students3
##    name    test  class grade
##1  Sally midterm class1     A
##2  Sally   final class1     C
##9  Brian midterm class1     B
##10 Brian   final class1     B
##13  Jeff midterm class2     D
##14  Jeff   final class2     E
##15 Roger midterm class2     C
##16 Roger   final class2     A
##21 Sally midterm class3     B
##22 Sally   final class3     C
##27 Karen midterm class3     C
##28 Karen   final class3     C
##33  Jeff midterm class4     A
##34  Jeff   final class4     C
##37 Karen midterm class4     A
##38 Karen   final class4     A
##45 Roger midterm class5     B
##46 Roger   final class5     A
##49 Brian midterm class5     A
##50 Brian   final class5     C
students3<-spread(students3,test, grade)
##    name  class final midterm
##1  Brian class1     B       B
##2  Brian class5     C       A
##3   Jeff class2     E       D
##4   Jeff class4     C       A
##5  Karen class3     C       C
##6  Karen class4     A       A
##7  Roger class2     A       C
##8  Roger class5     A       B
##9  Sally class1     C       A
##10 Sally class3     C       B
#This is used to desolve a column having 2 variables and create 2 new ones.
#*students4
##    id  name sex class midterm final
##1  168 Brian   F     1       B     B
##2  168 Brian   F     5       A     C
##3  588 Sally   M     1       A     C
##4  588 Sally   M     3       B     C
##5  710  Jeff   M     2       D     E
##6  710  Jeff   M     4       A     C
##7  731 Roger   F     2       C     A
##8  731 Roger   F     5       B     A
##9  908 Karen   M     3       C     C
##10 908 Karen   M     4       A     A
#At first glance, there doesn't seem to be much of a problem with students4. All columns are variables and all rows are observations. However, notice that each id, name, and sex is repeated twice, which seems quite redundant. This is a hint that our data contains multiple observational units in a single table.
#The solution will be to break students4 into two separate tables -- one containing basic student information (id, name, and sex) and the other containing grades (id, class, midterm, final).
student_info<-students4%>%select(id, name, sex)%>%unique
#*student_info
##   id  name sex
##1 168 Brian   F
##3 588 Sally   M
##5 710  Jeff   M
##7 731 Roger   F
##9 908 Karen   M
gradebook<-students4%>%select(id, class, midterm, final)
#*gradebook
##    id class midterm final
##1  168     1       B     B
##2  168     5       A     C
##3  588     1       A     C
##4  588     3       B     C
##5  710     2       D     E
##6  710     4       A     C
##7  731     2       C     A
##8  731     5       B     A
##9  908     3       C     C
##10 908     4       A     A
#Hence now in this way I can split one table into 2 tables.
#*passed
##   name class final
##1 Brian     1     B
##2 Roger     2     A
##3 Roger     5     A
##4 Karen     4     A
#*failed
##   name class final
##1 Brian     5     C
##2 Sally     1     C
##3 Sally     3     C
##4  Jeff     2     E
##5  Jeff     4     C
##6 Karen     3     C

#Date Functions.
x<-as.Date('1970-01-01')#We store the date like this.
#*x
##[1] "1970-01-01"
unclass(x)#Gives the number of days from 01/01/1970 to the parameterized date(the output will be possitive is the parameterized date is post 01/01/1970 and will be negetive if the parameterized date is post 01/01/1970).
##[1] 0
x<-Sys.Date()
#Gives us the current date. Unclassing it will give you the number of days since 01/01/1970.
x<-Sys.time()
#Gives us the current date and time. Unclassing it will give you the number of seconds since 01/01/1970.
#We can convert date to POSIXlt get the date folowed by UTC and we can convert date to POSIXct get the date folowed by 5:30:30 IST.
x<-as.POSIXct(x)
x<-as.POSIXlt(x)
#We can use data strings too.
#If we want to use functions like below(x$name_)or(x[,name_]) we need to use x<-as.POSIXlt(x)
#*names(unclass(x))
##[1] "sec"    "min"    "hour"   "mday"   "mon"    "year"  
##[7] "wday"   "yday"   "isdst"  "zone"   "gmtoff"
#sec
#0–61: seconds.
#min
#0–59: minutes.
#hour
#0–23: hours.
#mday
#1–31: day of the month
#mon(+1)
#0–11: months after the first of the year.
#year(+1900)
#years since 1900.
#wday(Sunday is 0 hence it matches)
#0–6 day of the week, starting on Sunday.
#yday
#0–365: day of the year (365 only in leap years).
#isdst
#Daylight Saving Time flag. Positive if in force, zero if not, negative if unknown.
#Daylight Saving Time (DST) is the practice of turning the clock ahead as warmer weather approaches and back as it becomes colder again so that people will have one more hour of daylight in the afternoon and evening during the warmer season of the year.
#zone
#(Optional.) The abbreviation for the time zone in force at that time: "" if unknown (but "" might also be used for UTC).
#gmtoff
#(Optional.) The offset in seconds from GMT: Usually NA if unknown, but 0 could mean unknown.
#If positive then eastwards. If negetive then westwards.
##attr(,"tzone")#(Useless)
##[1] ""      "IST"   "+0630"
#It is +6:30 as 5.5 rounds off to 6 hence this anomaly. 
julian(dp)
#Will give you the number of days since 1970.
d<- c("April 19, 2000 10:22:22 pm")
dp<-strptime(d ,"%B %d, %Y %I:%M:%S %p")
dp<-as.Date(d ,"%B %d, %Y %I:%M:%S %p")#Same as above.
#*dp
##[1] "2000-04-19 22:22:22 IST"
#%a
#Abbreviated weekday name in the current locale on this platform. (Also matches full name on input: in some locales there are no abbreviations of names.)
#%A
#Full weekday name in the current locale. (Also matches abbreviated name on input.)
#%b
#Abbreviated month name in the current locale on this platform. (Also matches full name on input: in some locales there are no abbreviations of names.)
#%B
#Full month name in the current locale. (Also matches abbreviated name on input.)
#%c #(Mon Jun 20 5:22:30 2020)
#Date and time. Locale-specific on output, "%a %b %e %H:%M:%S %Y" on input.%C
#Century (00–99): the integer part of the year divided by 100.
#%d
#Day of the month as decimal number (01–31).
#%D
#Date format such as %m/%d/%y: the C99 standard says it should be that exact format (but not all OSes comply).
#%e
#Day of the month as decimal number (1–31), with a leading space for a single-digit number.
#%F
#%g
#The last two digits of the week-based year (see %V). (Accepted but ignored on input.)
#%G
#The week-based year (see %V) as a decimal number. (Accepted but ignored on input.)
#%h
#Equivalent to %b.
#%H
#Hours as decimal number (00–23). As a special exception strings such as 24:00:00 are accepted for input, since ISO 8601 allows these.
#%I
#Hours as decimal number (01–12).
#%j
#Day of year as decimal number (001–366): For input, 366 is only valid in a leap year.
#%m
#Month as decimal number (01–12).
#%M
#Minute as decimal number (00–59).
#%n
#Newline on output, arbitrary whitespace on input.
#%p
#AM/PM indicator in the locale. Used in conjunction with %I and not with %H. An empty string in some locales (for example on some OSes, non-English European locales including Russia). The behaviour is undefined if used for input in such a locale.
#Some platforms accept %P for output, which uses a lower-case version (%p may also use lower case): others will output P.
#%r
#For output, the 12-hour clock time (using the locale's AM or PM): only defined in some locales, and on some OSes misleading in locales which do not define an AM/PM indicator. For input, equivalent to %I:%M:%S %p.
#%R
#Equivalent to %H:%M.
#%S
#Second as integer (00–61), allowing for up to two leap-seconds (but POSIX-compliant implementations will ignore leap seconds).
#%t
#Tab on output, arbitrary whitespace on input.
#%T
#Equivalent to %H:%M:%S.
#%u
#Weekday as a decimal number (1–7, Monday is 1).
#%U
#Week of the year as decimal number (00–53) using Sunday as the first day 1 of the week (and typically with the first Sunday of the year as day 1 of week 1). The US convention.
#%V
#Week of the year as decimal number (01–53) as defined in ISO 8601. If the week (starting on Monday) containing 1 January has four or more days in the new year, then it is considered week 1. Otherwise, it is the last week of the previous year, and the next week is week 1. (Accepted but ignored on input.)
#%w
#Weekday as decimal number (0–6, Sunday is 0).
#%W
#Week of the year as decimal number (00–53) using Monday as the first day of week (and typically with the first Monday of the year as day 1 of week 1). The UK convention.
#%x
#Date. Locale-specific on output, "%y/%m/%d" on input.
#%X
#Time. Locale-specific on output, "%H:%M:%S" on input.
#%y
#Year without century (00–99). On input, values 00 to 68 are prefixed by 20 and 69 to 99 by 19 – that is the behaviour specified by the 2018 POSIX standard, but it does also say ‘it is expected that in a future version the default century inferred from a 2-digit year will change’.
#%Y
#Year with century. Note that whereas there was no zero in the original Gregorian calendar, ISO 8601:2004 defines it to be valid (interpreted as 1BC): see https://en.wikipedia.org/wiki/0_(year). However, the standards also say that years before 1582 in its calendar should only be used with agreement of the parties involved.
#For input, only years 0:9999 are accepted.
#%z
#Signed offset in hours and minutes from UTC, so -0800 is 8 hours behind UTC. Values up to +1400 are accepted. (Standard only for output. For input R currently supports it on all platforms.)
#%Z
#(Output only.) Time zone abbreviation as a character string (empty if not available). This may not be reliable when a time zone has changed abbreviations over the years.
#Equivalent to %Y-%m-%d (the ISO 8601 date format).
#Where leading zeros are shown they will be used on output but are optional on input.
#Dates are represented by the dates class while time is represented by the POSIXlt and POSIXct class(POXIXt).
#Now we can even do operations on the date and get the output in no. of days and all. They have to be of the same class*.
format(Sys.time(),parameters_)
#We can format date and time to our will like this.
difftime(Sys.time(), t1, units = 'days')
#Helps us in getting teh difference the way we want.
#Change of timezones to your zone is done and then operations are carried out.

#Lubridate function.
library(lubridate)
d1<-ymd("19700101")
d1<-dmy("01/01/1970")
#This will convert thode numbers to a date.
d1<-dmy_hms("01/01/1970 12:30:11")
#This will convert thode numbers to a date and time.
d1<-dmy_hms("01/01/1970 12:30:11",tz="Pacific/Aukland")
#This will first convert thode numbers to a date and time and then give date and time with the respective time zone.
td<-today()
##[1] "2020-06-09"
#This will get you today's date.
day(td)
##[1] 9
#Gives us the day of today.
month(td)
##[1] 6
#Gives us the month of today.
year(td)
##[1] 2020
#Gives us the date of today.
wday(td)
##[1] 3
#Gives us 3 as today is a Tuesday(Sunday = 1).
wday(this_day,label = T)
##[1] Tue
##Levels: Sun < Mon < Tue < Wed < Thu < Fri < Sat
#We can gte the days name tho.
tt<-now()
##"2020-06-09 07:22:39 IST"
#This will give us the time.
hour(tt)
##[1] 7
#Gives you the hour.
minute(tt)
##[1] 25
#Gives you the minute.
second(tt)
##[1] 5.309439
#Gives you the second.
now("America/New_York")
##[1] "2020-06-08 22:03:53 EDT"
#This will give you the current time in new york.
update(tt, hours = 8, minutes = 34, seconds = 55)
##[1] "2020-06-09 08:34:55 IST"
#This will update the time for you. We can use it indivisually too.
tt<-tt+hour(2)
#This will add two hours to tt.
#Hence like this we can perform mathematical operations on time more accurately.
with_tz(tt,"Asia/Hong_Kong")
#Will give you time of hing kong as comapred to the time in tt.
how_long <- interval(tt2,tt2)#How long is stored in class
as.period(how_long)
#This will give you the time difference between tt1 and tt2.

#Control structures.

#if,else,else if.
#*x<-3 
#If x is positive y=1, if x is negetive y=-1 and if x is 0 y=0.
if(x>0)#condition1
{
    #If condition 1 is true.
    y<-1
}else if(x<0)#condition2, else if has to be in the same line as the }(closing bracket) of if or the previous else if.
{
    #If condition 2 is true but condition 1 is false.
    y<-(-1)
}else #Else has to be in the same line as the }(closing bracket) of if or the last else if.
{
    #If condition1 is false. 
    y<-0
}
#We can use it in this way too.
x<-3
y<-if(x>0)#condition1
{
    #If condition 1 is true.
    1
}else if(x<0)#condition2, else if has to be in the same line as the }(closing bracket) of if or the previous else if.
{
    #If condition 2 is true but condition 1 is false.
    -1
}else #Else has to be in the same line as the }(closing bracket) of if or the last else if.
{
    #If condition1 is false. 
    0
}
#Now we can write the entire if, else if and else statements without using {} if they have only one statement but they have to be in one line because of the else, if else issue.
#The above line is valid for both the variations.

#Loops
#Connection between single statement and multiple control structures works too.
#For loops.
for(a in 1:10)
{
    #This loop will iterate 10 times from a having value from 1 to 10.
    print(a)#Will print the value of a in every iteration on a different line. Hence it will print 1 to 10 in different lines.
    #*a 
    #If I use only a instead of print(a) then a will get an value of 10L. Nothing will be printed.
}
#a becomes an integer and not a numeric value.
x <- c('a','b','c','d')
for(a in 1:4)         {print(x[a])}
for(a in seq_along(x)){print(x[a])}
for(a in x)           {print(a)} #a in x[1],x[2] and so on #The iterable variable can be a character too.
#I can remove {} as these loops have only one statement within them.
#In the for loops we can use multiple lines as there is no issue.
#While loops.
#*a<-1
while(a<=10)
{
    #This loop will iterate 10 times from a having value from 1 to 10.
    print(a)#Will print the value of a in every iteration on a different line. Hence it will print 1 to 10 in different lines.
    #*a 
    #If I use only a instead of print(a) then a will get an value of 10L. Nothing will be printed.
    a<-a+1;#Incrementing the value.
}
#a is a numeric value here as they are numbers.
#We can have multiple conditions using && or ||.
#It will read conditions from left to right.
#repeat loops
repeat{}
#This similar to while(TRUE).
#Loop attributes.
#break
break
#As soon as the program reads this it will exit the loop(inner if multiple)instantaneously.
#next
next
#As soon as the program reads this it will move to the next iteration of the loop(inner if multiple)instantaneously skipping the code below it.

#Functions
#Syntax,
functionname_ <- function(x,y)#We can have non parameterized function too.
{
    return (x+y) #It will return the last expression. If you want to return by using a command or expression return (expression).
}  
#As the function has only one command we can,
#*functionname_ <- function(x,y)
#*x+y  
#When you print something in a function it will return what you have printed.
functionname_ <- function(x,y = 100)
    #*x+y
    #*functioname_(3)  
    ##[1] 103
    #This will set the default value of y to 100 so when we call the function with only one paramter it will work as it will accept the value of x and add it to the default value of y.
    #You can name the arguments of a function and chnage its order. If you are changing the order and have named the fist argument the second argument will be matched to the remaining actual function argument and if there are many remaning argument it will be matched to the first remaining argument in the list of arguments of the functiion.
    #We can even write the agrument name partially, and if it is unique it will work else it will go for a postion match(first unused*).
    #If we do not want to store anything in the arguments we can use NULL too.
    #If the agrument of a function as say more than one parameters but in the function only one is used. So when you call the function with only one value/variable it wont give an error. 
    #Now lets say you want to change the default value if a pre-defined function without actually changing it. so we can create our own function,
    mysum<-function(x,...)
        sum(x,1,...)
#What this does is that it just adds 1 everytime isntead of us defining it.
#This can be used when a variable set of agruments have to be stored. Like in sum.
#One catch is that all the arguments after ... have to be named explecitly. If you use partial matching it will be included in the ... arguments.
#Now we can create our own operators by naming the function %name_% and then having 2 arguments.
#Now if you create your own function having the name of a pre-defined function how would R know to use which function. Here we use the search() which tell us the order.
search()
##[1] ".GlobalEnv"        "package:devtools"  "package:usethis"  
##[4] "tools:rstudio"     "package:stats"     "package:graphics" 
##[7] "package:grDevices" "package:utils"     "package:datasets" 
##[10] "package:methods"   "Autoloads"         "package:base"  
#If you see here .GlobalEnv is first that is your workspace.
#If we are to load packages then they will be made second.
#We can have a fuction named x and an object named x too as R has kept separate namespaces for them.
#Now if we define a variable in a function in a package then, if will fist look for its value pair in the functio itself, if it is pissing it is called a free variable and will then go to the package it is define in, if it does not match there too then it will go to the environment and then its subsequent parent environments(up the tree) until it reaches the top level environments(like the global environmnts) then it searches all the subsequent top level environments too and do down the tree of each top level environment before going to the next one. If it still can not find the value it will return an error,
#Lexical scoping goes layered while dynamic scoping goes in chain(from the function where it is called to the function to which is called(forming chains)).
#Hence if we call a single function(having no internal functions) and not pass a function, from the global environment(source or console)it will look like dynamic scoping and lexical scoping are the same.
#The parent frame of a function evaluation is the environment in which the function was called.
make.pow <- function(n)
    pow <- function(x)
        n^x
cube <- make.pow(3)
cube(2)
##[1] 8
#Now we can have a function inside another function(here scoping is used).
#We can create a function of the type, of the parent function.
#Then with the newly created function make a call and use the functions. 
#Hence we can create functions from other parent functions.
ls(environment(cube))
##[1] "n"   "pow"
#Gets the objects. here one object is a numeric and the other is a function hence we can store a function in an object and hence return ir pass it.
get('pow',environment(cube))
##function(x)
##  n^x
##<environment: 0x0000022cfd072978>
get('n',environment(cube))
##[1] 3
#Gets the value of the object. If you see n is numeric and pow actually gets us the entire function.
invisible(x)
#What this does is that if you put this at the end of a function auto-printing will not occur in the console.
#Like when you use load then all the values are loaded but do not get printed on the screen.
with(x,tapply(Ozone,Month,mean,na.rm=T))
#Like this we can use the with function and avoid using $.
head(x)
#This gives back the first six elements or rows(if 2 dimentional).

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

#Getting, cleaning, arranging, understanding and sharing data.

#In this course we will be taught how to collect data from a variety of sources, from Excel files to databases like MySQL. We will also cover a variety of formats including JSON, XML, and flat files (.csv, .txt).
#1)Now what raw data us can vary it can be binary files or counts or even charts. In simple terms raw data is the data provided to you, 
#On which,
#No software is run.
#No manupilation of numbers has taken place.
#No removal of any data has taken place(useful or not).
#No summary has taken place.
#2)Now there are rules to follow during the creation of tidy data,
#Which are,
#Each variable we measure should be on a different column.
#Each observation of that variable should be in a different row.
#Different 'kinds' of variables should have different tables.
#If there are multiple tables then each table should have an column that allow them to be linked.
#If possible add a row at the top having the variable names.
#If possible make the names of the rows and columns more human readable.
#If possible make various excel spreadsheets and not have all the spreadsheets in one excel file.
#3)Now it is a good step to make a code book regarding the variables you have used,
#In this document we have to mention the,
#Information about the variables(like the units).
#Information about the observations in each column.
#Information about how the observations are taken.
#The study -design you used. The way you collected the data.
#This data can be stored in a markdown file. Then in a word or a text file.
#4)Now lastly it is agin a good step to make an instruction list,
#Where,
#The input of the script is the raw data.
#The output of the script is the tidy data.
#The user should not have to make any tweaks.
#If you have to mention steps then you should be very informative. We should go overboad while giving the instructions to allow the user to replicate your steps.
#The best way to perform the above tweak is by stating step1: , step2: and so on and so forth. 

#To calculate the memory required,
#(rows_*columns_*8 bytes)/2^20 mega bytes / 2^10 giga bytes.

#Many a times it is possible to have huge data-sets so its always preferable to have these filters to make the process faster.
# This is a hack to make it faster.
#* initial <- read.table("datatable.txt" , nrows = 100)
#* classes <- sapply(initial , class)
#* tabAll  <- sread.table("datatable.txt" , colClasses = classes)

#Basic Data Read Functions.
read.table(x)
read.csv(x)
#Reading tabular data.
x<-readLines("Whats your name ?")#Prints value in argument and then accepts value.
#Reading lines of a text file.
#For reading html documents too.
source(x)#Same as load but more usefull.Asit gets the file and the variables.
#Reading R code files.(inverse of dump).
dget(x)
#Reading R code files.(inverse of dput).(deparsed into text files).
load(x)#After doing a rm() on variables we can load the save variables.
#Reading in saved workspaces.
unserialize(x)#Un binary.
#Reading single R objects in binary form. 
write.table(x)#More readable.
#Writing tabular data.
writeLines(x)#prints character value.
#Writing lines of a text file.
dump(x)#Takes more than one.
#Writing R code files.(inverse of dump).
dput(x)#Takes only one.
#Writing R code files.(inverse of dput).
save(x)
#Writing in saved workspaces.
serialize(x , NULL)#to binary.
#writing single R objects in binary form. 
#Arguments in reading.
#You can print the contents to be saved my not adding file =.
# file          - name of the file in "".
# header        - does file have some header(first) line in logical.(default in read.csv is true and for others is also true (I tguess)).
# sep           - what is the separator in the file like a ' ' or a ',' in "".(default in a read.csv is a , while in a read.table is a space( )).
# colClasses    - what is the classes of the columns(column-wise) in a character vector.(default is automatic).
# nrow          - what is the numbe rof rows in number.(default is automatic).
# comment.char  - what is te comment character in string.(default is the £ or #).
# skip          - how many lines to skip from the beginning in number.(default is 0(I guess))
#stringAsFactors-  should the interpreter concider the string as factors or no.(default is true).
#For rest see help.
#The readr package.

#Readr Package.
library(readr)
read_csv(filepath_)
#This is like raed.csv but here col.classes acts smartly.
urban <- read_csv(datafile, col_types = "cccdc")
#This allows you to read the col.classes better. That is to your own liking.
urban <- read_csv(datafile, col_types = "cccd-")
#This allows you to skip the last column.
urban <- read_csv(datafile, col_types = "cccd-", n_max = 100)
#This allows you to read the first 100 rows.
parse_number("class5")
##[1] 5
#This will read and return the first occurance of a number.
#It is reeated here as it is a part of this package.
x <- file(description = 'one.txt' , open = 'r')#open =r(read)/w(write)/a(append).We can do these in binary too by suffixing a b.
x <- url("https://www.jhsph.edu" , "r")
#We can even read external gzfile(gzip) , bzfile(bzip2) .
#We can even set up a link to the outside world, ie files, packages,etc.
download.file(url = 'http://link_',destfile = paste(getwd(),'/name_.csv',sep = ''),method = 'curl')
#What this does is that it downloads a file from the link_ and places it in your directory having name name_.csv assuming it is a csv file. Windows users can not mention the method it is fine but in mac or linux to downlaod a file having https we need to mention method = 'curl'.
#This should be used to make reproducibility better in the instruction list.
#Another good advice is to mention the date as the data could change from the time you downloaded to the time someone else does.
#Another good adivce is to check if that file exists so that you do not re-download it.

#Xlsx Package.
library(xlsx)
x<-read.xlsx(file = 'filename_', sheetIndex = 1)
x<-read.xlsx2(file = 'filename_', sheetIndex = 1)
#read.xlsx (file = 'filename_', sheetIndex = 1, sheetName = NULL, rowIndex = NULL,startRow = NULL, endRow = NULL, colIndex = NULL, as.data.frame = TRUE,header = TRUE, colClasses = NA, keepFormulas = FALSE, encoding = "unknown",password = NULL, ...)
#read.xlsx2(file = 'filrname_', sheetIndex = 1, sheetName = NULL, startRow = 1, colIndex = NULL,endRow = NULL, as.data.frame = TRUE, header = TRUE, colClasses = "character",password = NULL, ...) 
#Sheet index is is which sheet is the spreadsheet on.
#colIndex,rowIndex will allow you to select a particular set of rows and columns.
#Hence I can read the excel sheets now.
#write.xlsx()write.xlsx2()
#write.xlsx (b, file = 'filename_', sheetName = "Sheet1", col.names = TRUE, row.names = TRUE, append = FALSE, showNA = TRUE, password = NULL) 
#write.xlsx2(b, file = 'filename_', sheetName = "Sheet1", col.names = TRUE, row.names = TRUE, append = FALSE, password = NULL, ...) 
#Use the parameters.
#Hence I can write xlsx files now.

#Httr and Xml Package.
library(httr)
library(XML)
url <- "http://www.w3schools.com/xml/simple.xml"
filedata<-GET(url)
aa<-GET("http://httpbin.org/basic-auth/user/passwd",authenticate("user","passwd"))
#This GET function is highly useful as it can take values to password protected sites by using authenticate(val(s)_) as its parameter.
dataRead<- xmlTreeParse(filedata, useInternal=TRUE)
data<-xmlRoot(dataRead)
xmlName(data)
##[1] "breakfast_menu"
names(data)
##food   food   food   food   food 
##"food" "food" "food" "food" "food" 
#This gets the elements and tells us that each is wrapped in a food element.
data[1]
##$food
##<food>
##  <name>Belgian Waffles</name>
##  <price>$5.95</price>
##  <description>Two of our famous Belgian Waffles with plenty of real maple syrup</description>
##  <calories>650</calories>
##  </food> 
##attr(,"class")
##[1] "XMLInternalNodeList" "XMLNodeList"        
data[[1]]
##<food>
##  <name>Belgian Waffles</name>
##  <price>$5.95</price>
##  <description>Two of our famous Belgian Waffles with plenty of real maple syrup</description>
##  <calories>650</calories>
##  </food> 
data[1][1]#Same as data[1] but the attr is gone.
##$food
##<food>
##  <name>Belgian Waffles</name>
##  <price>$5.95</price>
##  <description>Two of our famous Belgian Waffles with plenty of real maple syrup</description>
##  <calories>650</calories>
##  </food> 
data[1][[1]]#Same as data[[1]]
##<food>
##  <name>Belgian Waffles</name>
##  <price>$5.95</price>
##  <description>Two of our famous Belgian Waffles with plenty of real maple syrup</description>
##  <calories>650</calories>
##  </food> 
data[[1]][1]
##$name
##<name>Belgian Waffles</name> 
##attr(,"class")
##[1] "XMLInternalNodeList" "XMLNodeList"        
data[[1]][[1]]
##<name>Belgian Waffles</name> 
data[[1]][1][1]#Same as data[1][1] but the attr is gone.
##$name
##<name>Belgian Waffles</name> 
data[[1]][1][[1]]#Same as data[[1]][[1]]
##<name>Belgian Waffles</name> 
data[[1]][[1]][1]
##$text
##Belgian Waffles 
##attr(,"class")
##[1] "XMLInternalNodeList" "XMLNodeList"        
data[[1]][[1]][[1]]#This something ideal.
##Belgian Waffles 
data[[1]][[2]][[1]]
##$5.95
#The classes go from being,"XMLInternalNodeList" "XMLNodeList"for[1], "XMLInternalElementNode" "XMLInternalNode" "XMLAbstractNode" for [[1]] and "XMLInternalTextNode" "XMLInternalNode" "XMLAbstractNode"  for the most internal text.
xmlApply(data,xmlValue)#This applies the function in the second argument to each element of the first agrument like tapply.
##$food
##[1] "Belgian Waffles$5.95Two of our famous Belgian Waffles with plenty of real maple syrup650"
##$food
##[1] "Strawberry Belgian Waffles$7.95Light Belgian waffles covered with strawberries and whipped cream900"
##$food
##[1] "Berry-Berry Belgian Waffles$8.95Light Belgian waffles covered with an assortment of fresh berries and whipped cream900"
##$food
##[1] "French Toast$4.50Thick slices made from our homemade sourdough bread600"
##$food
##[1] "Homestyle Breakfast$6.95Two eggs, bacon or sausage, toast, and our ever-popular hash browns950"
xpathSApply(data,'//name',xmlValue)
##[1] "Belgian Waffles"             "Strawberry Belgian Waffles" 
##[3] "Berry-Berry Belgian Waffles" "French Toast"               
##[5] "Homestyle Breakfast"        
xpathSApply(data,'//price',xmlValue)#We can place conditions too.
##[1] "$5.95" "$7.95" "$8.95" "$4.50" "$6.95"
url<-"https://www.espn.in/nfl/team/schedule/_/name/bal"
filedata<-GET(url)
dataRead<-htmlTreeParse(filedata,useInternalNodes = T)
xpathSApply(dataRead,"//td[@class='Table__TD']",xmlValue)#This checks if the class is score and if it is true it saves its value.
##[1] "tickets"                 "1"                      
##[3] "Sun, 13 Sep"             "vsCleveland "           
##[5] "10:30 PM "               ""                       
##[7] "Tickets as low as $50 "  "2"                      
##[9] "Mon, 21 Sep"             "@Houston "              
##[11] "1:55 AM "                ""                       
##[13] "Tickets as low as $43 "  "3"                      
##[15] "Tue, 29 Sep"             "vsKansas City "         
##[17] "5:45 AM "                ""                       
##[19] "Tickets as low as $104 " "4"                      
##[21] "Sun, 4 Oct"              "@Washington "           
##[23] "10:30 PM "               ""                       
##[25] "Tickets as low as $56 "  "5"                      
##[27] "Sun, 11 Oct"             "vsCincinnati "          
##[29] "10:30 PM "               ""                       
##[31] "Tickets as low as $39 "  "6"                      
##[33] "Sun, 18 Oct"             "@Philadelphia "         
##[35] "10:30 PM "               ""                       
##[37] "Tickets as low as $118 " "7"                      
##[39] "Sun, 25 Oct"             "vsPittsburgh "          
##[41] "10:30 PM "               ""                       
##[43] "Tickets as low as $70 "  "8"                      
##[45] "9"                       "Sun, 8 Nov"             
##[47] "@Indianapolis "          "11:30 PM "              
##[49] ""                        "Tickets as low as $42 " 
##[51] "10"                      "Mon, 16 Nov"            
##[53] "@New England "           "6:50 AM "               
##[55] ""                        "Tickets as low as $138 "
##[57] "11"                      "Sun, 22 Nov"            
##[59] "vsTennessee "            "11:30 PM "              
##[61] ""                        "Tickets as low as $46 " 
##[63] "12"                      "Fri, 27 Nov"            
##[65] "@Pittsburgh "            "6:50 AM "               
##[67] ""                        "Tickets as low as $110 "
##[69] "13"                      "Fri, 4 Dec"             
##[71] "vsDallas "               "6:50 AM "               
##[73] ""                        "Tickets as low as $98 " 
##[75] "14"                      "Tue, 15 Dec"            
##[77] "@Cleveland "             "6:45 AM "               
##[79] ""                        "Tickets as low as $42 " 
##[81] "15"                      "Sun, 20 Dec"            
##[83] "vsJacksonville "         "11:30 PM "              
##[85] ""                        "Tickets as low as $40 " 
##[87] "16"                      "Sun, 27 Dec"            
##[89] "vsNew York "             "11:30 PM "              
##[91] ""                        "Tickets as low as $42 " 
##[93] "17"                      "Sun, 3 Jan"             
##[95] "@Cincinnati "            "11:30 PM "              
##[97] ""                        "Tickets as low as $27 " 
##[99] "tickets"                 "3"                      
##[101] "Mon, 31 Aug"             "vsCarolina "            
##[103] "5:30 AM "                ""                       
##[105] "Tickets as low as $8 "   "4"                      
##[107] "Fri, 4 Sep"              "@Washington "           
##[109] "5:00 AM "                ""                       
##[111] "Tickets as low as $15 " 
#This way we can subset and get the values.
#XML files,
#Extensible markup launguage.
#If you are taking data from the internet then this will a vey handy tool.
#We can do this for HTML files too by changing XML with HTML.
url<-"http://scholar.google.com/citations?user=HI-I6C0AAAAJ"
filedata<-GET(url)
dataRead<-htmlTreeParse(filedata,useInternalNodes = T)
xpathSApply(dataRead,"//td[@class='gsc_a_c']",xmlValue) #Try to get to the data.
##[1] "1461" "1301" "1297" "1094" "646"  "560"  "434"  "364"  "324" 
##[10] "289"  "278"  "263"  "258"  "179"  "167"  "166"  "164"  "156" 
##[19] "156"  "144" 
xpathSApply(dataRead,"//title",xmlValue)
##[1] "Jeff Leek - Google Scholar Citations"
close(a)
#We can now read from the web too.

#Jsonlite Package.
library(jsonlite)
jsondata<-fromJSON("https://api.github.com/users/jtleek/repos")
#JSON file,
#Javascript open notation.
#This will give you everyhing in a neat and formated way.
#Hence I can read JSON files.
data<-toJSON(iris,pretty = T)
#pretty makes it more viewable.
#Hence I can write JSON files from a data frame.

#Combination of the above packages to read API's.
library(httr)
#It allows GET, POST, PUT, DELETE requests if you are authorized.
myapp <- oauth_app("app", key = "consumerKey", secret = "consumerSecret")
#Start authorization process for the app.
sig = sign_oauth1.0(myapp, token = "tokenGenerated", token_secret = "tokenSecret")
#Login using the token information (sets up access so you can use it to get data).
homeTL = get("url", sig)
#Use the established authentication (instead of username/password) to get the data (usually in JSON format).
#Use the url to specify what data you would like to get
#Use the documentation to get information and parameters for the url and data you have access to.
#See OAuth.R.
json1 = content(homeTL)
#Recognizes the data in JSON format and converts it to a structured R object [a bit hard to read].
json2 = jsonlite::fromJSON(jsonlite::toJSON(json1))
#Converts data back into JSON format and then use the fromJSON function from the jsonlite package to read the data into a data frame.
#Each row corresponds to a line of the data you received.
#In this way you can read data from API's like Twitter and all.
#I have not tried this in depth but this is simply how it works.

#Data.table Package.
library(data.table)
x <- data.table(High = c(1 , 2 , 1 , 3 ) , Medium = c(2 , 2 , 1 , 3) , Low = c(0:3) , Check = c(T , T , F , T))
#Data tables are slightly different to data frames. They can be converted to one another.
#data.tables have various user defined functions which we can use.
#When you subset with one index it gives you the rows while data.frame gives you columns.
#If we assign a data table to the other data table and make changes in the first data table then it will show in the second one as well as a coppy has not been generated.
tables()
##   NAME NROW NCOL MB                  COLS KEY
##1:    x    4    4  0 High,Medium,Low,Check    
##Total: 0MB
#Gives all the tables existing in the environment.
x[,avg:=((High+Medium+Low)/3)]
x[,avg:={z=(High+Medium+Low);z/3}]
#Both do the exact same thing. Hence a proof that we can use multiple statements. Works for conditions too.
#This will add another column named avg having the mean of each column.
x[,sum:=sum(High+Medium+Low),by=Check]
##   High Medium Low Check      avg sum
##1:    1      2   0  TRUE 1.000000  12(9+3)
##2:    2      2   1 FALSE 1.666667   9(5+4)
##3:    1      1   2 FALSE 1.333333   9
##4:    3      3   3  TRUE 3.000000  12
x[,mean:=mean(High+Medium+Low),by=Check]
##   High Medium Low Check      avg sum mean
##1:    1      2   0  TRUE 1.000000  12  6.0(12(3+9)/2(rows))
##2:    2      2   1 FALSE 1.666667   9  4.5(09(5+4)/2(rows))
##3:    1      1   2 FALSE 1.333333   9  4.5
##4:    3      3   3  TRUE 3.000000  12  6.0
#What by does is that is separartes the data row-wise as the ',' is prefixed.
x[,.N,by=Check]
##   Check N
##1:  TRUE 2
##2: FALSE 2
#.N counts the the number of occurances hence if divided will get the number of time an variable element value is observed then the .N adds to that individual value element.
xx<-data.table(x=rep(c('a','b','c'),10),y=1:30)
#*xx
##   x  y
##1: a  1
##2: b  2
##3: c  3
##4: a  4
##5: b  5
##6: c  6
##7: a  7
##8: b  8
##9: c  9
##10: a 10
##11: b 11
##12: c 12
##13: a 13
##14: b 14
##15: c 15
##16: a 16
##17: b 17
##18: c 18
##19: a 19
##20: b 20
##21: c 21
##    x  y
setkey(xx,x)
#*xx['a']
##   x  y
##1: a  1
##2: a  4
##3: a  7
##4: a 10
##5: a 13
##6: a 16
##7: a 19
#Like this by setting a key subsetting becomes easy.
#*d1<-data.table(x=c('a','a','b','d1'),y=1:4)
#*d2<-data.table(x=c('a','b','d2'),z=5:7)
#*setkey(d1,x);setkey(d2,x)
x<-merge(d1,d2)
##   x y z
##1: a 1 5
##2: a 2 5
##3: b 3 6
#This is how merge works.
write.ftable(x,file = 'filename_')
#Exactly like write.table() but faster.
read.ftable('filename_')
#Exactly like read.table() but faster.

#Installing data from databases. 

#To do this I had to install MySQL and its package to pass function to MySQL from R.
#Which indirectly installed DBI package which does the same what I am doing with MySQL for other databases too.

#RMySQL Package.
library(RMySQL)
data<-dbConnect(MySQL(),user="genome",host="genome-mysql.cse.ucsc.edu")
#We can use this to import various different packages from different databases.
result<-dbGetQuery(data,"show databases;")
#dbGetQuery takes the database here data, runs the show databases function on it. Now showdatabases is actually an MySQL commant but we can pass it directly from here.
dbDisconnect(data)
##[1] TRUE
#Disconnects the connection.
hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")
#Here the host is the MySQL server. User is the user and db is the particular database. 
colnames<-dbListFields(hg19,"affyU133Plus2")
#What this does is that it returns the name of the fields(ie, the columns).
rowno<-dbGetQuery(hg19,"select count(*) from affyU133Plus2")
#So now as we know what dbGetQuery does, select count(*) from affyU133Plus2 is a MySQL command and it gets the number of records(ie. rows).
#In MySQL each table is a data set where each feild can be considered as a column and each record can be concidered as a row.
query<-dbSendQuery(hg19,"select * from affyU133Plus2 where misMatches between 1 and 3")#We use star 
querydata1<-fetch(query)
#This firstly sends a query and stores it there so we do not need to get the entire table. We can take parts of it.
querydata2<-fetch(query,n=10)
#What this does is that it just takes the first 10 rows.
affyU133PLus2<-dbListFields(hg19,"affyU133Plus2")
#This the most important function. It reads the data table.

#Rhdf5 Package.
library(rhdf5)
#To use this we need to install the rhdf5 package frm bioconductor.
check<-h5createFile("eexample.h5")
#This creates a h5 file. 
check<-h5createGroup("eexample.h5","name")
check<-h5createGroup("eexample.h5","rollno")
check<-h5createGroup("eexample.h5","marks")
#This adds 3 groups in the file.(This function appends groups)
check<-h5createGroup("eexample.h5","marks/pof")
#This adds a sub group to marks group.
h5ls("eexample.h5")
#We can see the objects in this file.
h5write("6","eexample.h5","rollno/1")
h5write("8.72","eexample.h5","marks/1")
h5write("p","eexample.h5","marks/pof")
h5write("Naman","eexample.h5","name/1")
#This wite my info in the datasets.
h5write("NamanDhavalDesai","eexample.h5","name/1",index=list(1,1))
#Hence like this even if its an array or any thing we can change specific values in specific locations. We can change multiple values too but we have to mention equal numbers of indexes.
aa<-h5read("eexample.h5",'rollno')
#*aa
##$`1`
##[1] "6"
aa<-h5read("eexample.h5",'name')
#*aa
##$`1`
##[1] "Naman"
aa<-h5read("eexample.h5",'marks')
aa<-h5read("eexample.h5",'marks',index = list(1,1))
#Hence like this even if its an array or any thing we can see specific values in specific locations.
#*aa
##$`1`
##[1] "8.72"
##$pof
##$pof$`1`
##[1] "p"
aa<-h5read("eexample.h5",'marks/pof')
#*aa
##$`1`
##[1] "p"
#In this way I can read the values stored in the groups/subgroups.
#Heirarchical data format.
#They contain 0 or more data sets along with the metadata.
#We can read packages from other programming languages too like,
#read.arff(Weka)
#read.dta(stata)
#read.mtp(Minitab)
#read.octave(Octave)
#read.spss(SPSS)
#read.xport(SAS)
#There are many other databases and each have a different package.
#We can read image files too. Like jpeg, PNG, etc.
#We can read gis(geographic information systems data) data too.
#We can read mp3 packages too.

#Exploratory Data Analysis with R.

#Exploratory data analysis (EDA) is a key element of data science because it allows you to develop a rough idea of what your data look like and what kinds of questions might be answered by them.
#To decrease the size and losing the actual values we can log10 or more depending on what we need it to be.
#We can store the plots in a variable too.
#To see a subset of data plotted use with and place the subset code there.
#We can label the points by stating x+0.05, y+0.05, labels=...... .
#We can work with different graphic devices at the same time too.
dev.off()
#This closes the graphic device.
dev.cur()
#This gives you the current graphic device.(starts from 2).
dev.set()
#By default will go to the next device using. We can assign a number corresponding to the graphic device we want to go to, too.
dev.next()
#Which brings you to the next graphic device.
dev.copy(type_(png),filrnamewithextension_)
#This will convert the file the way you want it to be in the format you want it to be. Note that this will only show after you dev.off().

#There are 6 principles of analytic graohics,
#Principle 1: While making an hypothesis always compare it so some other hypothesis(like control, etc.).
#Principle 2: Show causality, meaning explain with another plot if you have to, is to why does either of the hyposthesis come true true. There will be a reason or a link.
#Principle 3: Show multivariate data, meaning if the data can be split then split the data and show it then.
#Principle 4: Integration of evidence, meaning if possible always integrate all the data into one plot making it richer.
#Principle 5: Describe and document the evidence withaprropriate labels and scals and sources.
#Principle 6: Content is king, if the content/data is not interesting then no ammount of plots or graphs will maki it unteresting.

#There are 3 types of plotting systems in R,
#One important thing to note is that we can not use functions of one plootting system with another plotting system.
#1)Base Plotting System.(atist's palatte model).
#In this plotting systen we first make the plot using the plot function and then use various annotating functions to label them.
#2)Lattice Plotting System.(also called pannel plots.)
#In this plotting system all the plotting parameters have to be mentioned in one direct function call(xyplot).Great to construct sub plots.
#3)ggplot2 Plotting System.
#This plotting system combines all the good featured from the other two plotting systems. 
#This plotting system has a lot of defaults which are good hence could be frequently used.

#Base Plotting System.

#As we know that there are two different steps in making a plot using the base plotting system namely the creation of the plot an dthen the annotation.
b<-file(description = "avgpm25.csv", 'r')
a<-read.csv(b)

#1)5 number  summary.(= the mean too).
summary(a)
##pm25             fips        region      longitude      
##Min.   : 3.383   Min.   : 1003   east:442   Min.   :-158.04  
##1st Qu.: 8.549   1st Qu.:16038   west:134   1st Qu.: -97.38  
##Median :10.047   Median :28034              Median : -87.37  
##Mean   : 9.836   Mean   :28431              Mean   : -91.65  
##3rd Qu.:11.356   3rd Qu.:41045              3rd Qu.: -80.72  
##Max.   :18.441   Max.   :56039              Max.   : -68.26  
##latitude    
##Min.   :19.68  
##1st Qu.:35.30  
##Median :39.09  
##Mean   :38.56  
##3rd Qu.:41.75  
##Max.   :64.82  
#2)boxplot summary.
boxplot(a$pm25)
#This will give you a blue box where the black line will be the median the upper end of the box will be the 3rd quartile and lower end of the box will be the 1st quartile.
#The "whiskers" of the box (the vertical lines extending above and below the box) relate to the range parameter of boxplot, which we let default to the value 1.5 used by R. The height of the box is the interquartile range, the difference between the 75th and 25th quantiles. In this case that difference is 2.8. The whiskers are drawn to be a length of range*2.8 or 1.5*2.8. This shows us roughly how many, if any, data points are outliers, that is, beyond this range of values.
boxplot(pm25~region,data=a)
#This is same as boxplot above but here there are 2 boxplots one for east and the other for west.
#3)histogram summary.
hist(a$pm25,breaks = 100)
#This will give you a green box graph as to how many values are there in which value as in how many counties have 10, 11 , 12 PM2.5 but here the values will be floored or ceiled or simply rounded off as the graph is flat. 
#This will give you a shape of the data.
#The breaks can be removed but you should place them to get a better and cleaner picture. Try yo make breaks equal to half of the number of rows.
hist(subset(a,region=="west")$pm25,breaks = 100,col = "blue")
hist(subset(a,region=="east")$pm25,breaks = 100,col = "green")
#This way we can represent 2 dimentions in histogram.
#You can use formula in this.
rug(a$pm25)
#This will give you the density by dashes bellow the histogram to give you a better view about the exact number of observations that actually form the shape.
#4)Barplot summary.
barplot(table(a$region))
#This will make a barplot with the number of counties in the east and west sector.
#5)Plot summary.
with(a,plot(latitude,pm25))
#This will give a scatter plot of latitute in x asis and pm25 in the y axis,
with(a,plot(latitude,pm25))
#Here the black circles will be the east and red circles will be west hence w eare now seeing 3 variables. 
with(subset(a,region=="west"),plot(latitude,pm25,main = "west"))
with(subset(a,region=="east"),plot(latitude,pm25,main = "east"))
#We can separate them too like this.
#This should be moreover used to see comparisons 1D data works too tho.
abline(h=12,v=12) #You can set values as functions too. 
#This will set an horizontal and a verical line at 12. The maximum of v will be the nrow() of the parameter.
a<-matrix(1:4,4:1)
lines(a)#line(0,10)--->line from (0,0)to(10,10).
#This allows us to make co-ordinated(x,y) lines.
points(30,30)
#This will mark a point at 30,30.
text(30,30,"p1")
#This will mark "h" a point at 30,30.
title("My PLot")
#This make sthe title to My Plot.
mtext("hell",3,outer = T)
#thenuber is the side the same way as oma and hell is what is printed. Outer means if we have set some outer value(default is 0) it will be printed there in the particular side..
#We can set two types of parameters.
#1)We can set parameters to global graphics parameters using the par function. They will be common to all plots in the global environment unless the parametr are changed.
#las   - sets the orienatation of the axis labels.(default s 0).
#bg    - sets the background colour of the plot.(default transperent).
#mar   - sets the margins of the plot. Bottom and then anti-clock-wise argument notation.(deafult is 5.1 4.1 4.1 2.1).
#oma   - sets the outer margins of the plot.(default is 0). Used mostly when there are multiple graphs on one page.
#mfrow - number of plots per row, column.(plots filled row-wise).(default is 1,1).
#mfcol - number of plots per row, column.(plots filled column-wise).(default is 1,1).
#2)We can set the plot parameters by specifying them during the plot creation or modification functions and they will be only for a specific plot.
#main - places a heading.
##lwd - marks the thicknedd of the line.(default is 1).
#lty  - makes it dash dash. The space is tly but there is a limit.(default is solid).
#col  - gives colour to the plot.(See colours() to see the list of colours you can use colours or names).(default is black).
#col.axis - sets the colour of the values in th axis.
#col.labels - sets the colour of the labels.
#xlab - gives the label in the x axis.
#ylab - gives the label in the y axis.
#pch  - gives shape to the plotting symbol.(default is 1).
#sub-'' will set the subtitle at the bottom. 
#If no columns are mentioned x is the first column and y is the second.
#We can see the default values if these parameters by par("parametername_") and the output will be its default value.
#Examples.
#1)
with(airquality,plot(Wind,Ozone,main="Ozone and Wind in New Tork City",type="n"))
#This will just make the ploy without any data.
with(subset(airquality,Month==5),points(Wind,Ozone,col="blue"))
with(subset(airquality,Month!=5),points(Wind,Ozone,col="red"))
legend("topright",pch=1,col=c("blue","red"),legend=c("May","Other Months"))
#Adding Scale/Legend.
#2)
with(airquality,plot(Wind,Ozone,main="Ozone and Wind in New Tork City",pch=20))
model<-lm(Ozone~Wind,airquality)
abline(model,lwd=2)
#Regression model.
#3)
par(mfrow=c(1,2))
#Setting the value to give 2 plots in one row.
with(airquality,{
    plot(Wind,Ozone,main = "OW")
    plot(Solar.R,Ozone,main = "OS")
})
#Ploting 2 plots in one row. 

#Lattice PLotting System,

#As we know in this plotting system all the parameters have to be mentioned all at once.
#This plotting system is more often used to plot multiple plots or higher dimentional plots.
library(lattice) #To use this plotting system we need to load its package named lattice.

#So some of the main functions in lattice are:- 
#xyplot - This is probably the most important function. It's basically used for making scatter plots.
#bwplot - This is to make boxplots.
#histogram - This is to make histograms. 
#stripplot - This is to make a kind of like a boxplot, but it uses points.
#dotplot - This is to make plots points where, it will look like a violin strings.
#splom -This is to make scatter plot matrix. It's kind of like the pairs function in the base plotting system.
#levelplot , contourplot - They are to make plots for image data. 
xyplot(x~y|f*g,data)
#I want to look at the scatter plot of y and x for every level of f and g.
library(datasets)
airquality$Month<-as.factor(airquality$Month)
xyplot(Ozone~Wind|Month,data = airquality,layout=c(5,1))
#This will split the data accordig to the factor variable , here airquality.
#We can store the plot in an object and then see its namees which can be subsetted like variablename_[["names()_"]].
mynames[myfull]#This will give you the non null values.
#skip parameters will skip the headings of the factor variables.
#Examples.
xyplot(Ozone~Wind|Month,panel=function(x,y,...){
    panel.xyplot(x,y,...)
    panel.lmline(x,y,col="red")
    panel.abline(h=median(y,na.rm = T),lty = 2,col = "blue")
},data = airquality,layout=c(5,1),col="black",pch=20)

#ggplot2 Plotting System.

#This plotting system is the best as it is consists of all the features of the base and lattice plotting system.
library(ggplot2)
#This loads the mpg data set.

#This is how to use qplot.
#This is the way we make scatter plots.
qplot(displ,hwy,data=mpg)
#This how you plot in the simplest sense.
#This is the way we make histograms.
qplot(hwy,data=mpg)
#If you specify only one variable then the qplot will make an histogram.
#This is how we make boxplots.
qplot(hwy,data=mpg,geom="boxplot")

qplot(displ,hwy,data=mpg,color=drv)
#This way drv being a factor variable will give you different color scheme for each and every indivisual level of the factor variable.
#We can have various allocations plotted like this.
qplot(hwy,data=mpg,color=drv)#Only the border will be coloured according to the corresponding level of the factor.
qplot(hwy,data=mpg,fill=drv)#The whole thing will be coloured according to the corresponding level of the factor.
qplot(displ,hwy,data=mpg,geom=c('point'),shape=drv,color=drv)
#This will gve us various shapes with various colors for readings corresponding to the level of the factor variable.
#Another thing is that the legend is created automatically.
qplot(displ,hwy,data=mpg,geom=c('point','smooth'))#We can have a smooth curve and points too.
#This way we can place a loes smoother which smooths the trend. Helps us seeing the overall trend. This can be used inly on 2D data.
#The grey zone is 95% confidence.
#We are placing points an dsmooth as we want both points and a smooth curve.
qplot(hwy,data=mpg,geom='density',color=drv)#Can be used only on 1D data.
#Like the we can get the density line too.
qplot(displ,hwy,data=mpg,geom='point',facets=.~drv)
#What facets does is that it allows you to have multiple graphs in the same page.
#If we place .~ before the variable according to which the plot is going to be sorted then it will be column wise.
#If we place ~. after  the variable according to which the plot is going to be sorted then it will be row    wise.
#This means the . has no variable.
qplot(hwy,data=mpg,facets=drv~.,binwidth=1)
qplot(hwy,data=mpg,facets=drv~.,binwidth=0.5)
#The binwidth is the width of the readings.
qplot(displ,hwy,data=mpg,color=drv)+geom_smooth(method="lm")
#We can have multiple readings too now.

#This is how to use ggplot.
a<-read.table("a.txt",sep = ',',header = T)
g<-ggplot(a,aes(logpm25,NocturnalSympt))
#This will make the background of the graph.
g<-g+geom_point(color="steelblue",alpha=0.5)#This will set the points to have an steel blue colour. You can set the shapes, sizes and all too and also the transperancy using alpha.
g<-g+geom_point(aes(color=bmicat),alpha = 0.5)#This will split acolour according to bmicat.
#This will add points to it.
g+geom_line(color="steelblue")
#This adds a line.
g+geom_smooth(color="black")
#This will add an loes smoother smoother.
g<-g+geom_smooth(method = "lm",se=F,size=1,linetype=2)#These all are its important parameters.
#This will add an linear regression line.
a$bmicat<-as.factor(a$bmicat)
g<-g+facet_grid(.~bmicat)+geom_smooth(method = "lm")
#This will split the plot in levels of the factor variable. The thing to not eis that the regression like dissappears so we have to re add it.
#There are other anotating functions too, Once changed can not undo.
#xlab - to tabel the x axis.
#ylab - to tabel the y axis.
#ggtitle - to place a title in the plot.
#We can chenge the theme too, there are pre defined themes or else we can modify too,
#like this, there are predefined packagd themes too use library(ggthemes).
theme(
    panel.background = element_rect(fill = "lightblue",
                                    colour = "lightblue",
                                    size = 0.5, linetype = "solid"),
    panel.grid.major = element_line(size = 0.5, linetype = 'solid',
                                    colour = "white"), 
    panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                    colour = "white"),
)#We can use the base_family="Times" to change the font to Times.
theme(plot.background = element_rect(fill = "darkblue"))
#Now in ggplot() outliers are handles differently to plot().
#In plot you will see a break but athe top or bottom (if you use geom_line).
#But in ggplot it will enlarged. Hence to get it zoomed,
g<-g+xlim()+ylim()#This will set the vales. 
#This wint work as ggplot will just suset the boint and introduce a break before na d after the point.
g<-g+coord_cartesian(ylim = c(),xlim = c())#This will set the coordinate values of the graph.
#Now if you have to add a variable which not a factor but is a continuous function we use quantile then cut and make them separate in 3 parts then you use facet_wrap.
#facet_wrap(~variable) will return a symmetrical matrix of plots for the number of levels of variable . facet_grid(. ~variable) will return facets equal to the levels of variable distributed horizontally or vercically.
#So in facet_wrap we will have to mention nrow and ncol else it will keep going all in 1 row.
g+geom_hline(yintercept=4, linetype="dashed", color = "red")
#This will get an horizontal line at y=4.
g+geom_segment(aes(x = 4, y = 15, xend = 4, yend = 27))
#This will add segments
g+geom_abline(intercept = 37, slope = -5, color="red",linetype="dashed", size=1.5)
#Lines in polar form.
g+geom_segment(aes(x = 5, y = 30, xend = 3.5, yend = 25),arrow = arrow(length = unit(0.5, "cm")))
#To draw an arrow.

#Pattern analysis

#These dimention reduction and cluster analysis help us identify these patterns.
#These concepts are a part of machine learning.

#Clustering.

#Clustering is finding out groups having similar observations.
#It can help to bring the columns and rows that are related to each other more than others together to it becomes easier for us to percieve.

#Hierarchical Clustering.
x<-1:10
y<-11:20
z<-data.frame(x=x,y=y)
dist<-dist(z)#This gives a lower triangular matrix, with corresponding distances.
#We can measure distances like this. The default distance measuring system is the eucledian.
hc<-hclust(dist)#This converts the dist into cluster.
plot(hc)#This would plot a cluster dendodram.
z<-as.matrix(z)
heatmap(z)
#This gives us an heatmap of the hirarchical cluster.
#Better view,
myplclust <- function( hclust, lab=hclust$labels, lab.col=rep(1,length(hclust$labels)), hang=0.1,...){
    ## modifiction of plclust for plotting hclust objects *in colour*!
    ## Copyright Eva KF Chan 2009
    ## Arguments:
    ##    hclust:    hclust object
    ##    lab:        a character vector of labels of the leaves of the tree
    ##    lab.col:    colour for the labels; NA=default device foreground colour
    ##    hang:     as in hclust & plclust
    ## Side effect:
    ##    A display of hierarchical cluster with coloured leaf labels.
    y <- rep(hclust$height,2)
    x <- as.numeric(hclust$merge)
    y <- y[which(x<0)]
    x <- x[which(x<0)]
    x <- abs(x)
    y <- y[order(x)]
    x <- x[order(x)]
    plot( hclust, labels=FALSE, hang=hang, ... )
    text( x=x, y=y[hclust$order]-(max(hclust$height)*hang), labels=lab[hclust$order], col=lab.col[hclust$order], srt=90, adj=c(1,0.5), xpd=NA, ... )}

#K-means Clusterng.
#This type of clustering uses the centroid trial and error method.
x<-1:10
y<-11:20
z<-data.frame(x=x,y=y)
kmeansobj<-kmeans(z,centers = 5)#This will vary every time.
names(kmeansobj)
##[1] "cluster"      "centers"      "totss"        "withinss"    
##[5] "tot.withinss" "betweenss"    "size"         "iter"        
##[9] "ifault"
kmeansobj$cluster
##[1] 5 5 5 2 2 4 4 3 1 1
kmeansobj$centers
##    x    y
##1 9.5 19.5
##2 4.5 14.5
##3 8.0 18.0
##4 6.5 16.5
##5 2.0 12.0
#So we can get the values of the data like this.
plot(x,y,data=z,col=kmeansobj$cluster)
points(kmeansobj$centers,pch=3,col=1:5)
#This will make the plot to help you visualize.

#Dimention reduction.
#The goal is to find a lower rank matrix that explains the data of the parent matrix.
#This helps us reduce the number of variables too.

y<-1:100+rpois(1:100,10)
x1<-1:10+rpois(1:10,1)
x2<-1:10+rpois(1:10,20)
x<-c(x1,x2)
z<-outer(x,y)
image(1:10,1:10,t(z)[1:10,1:10])
#This will give us a random noisy graph.
heatmap(z)
#This will give us a hierarchical cluster heatmap of the data.
plot(colMeans(z))
#This will give you a positive slope at theta=45 degrees.
plot(rowMeans(z))
#This will give you a positive slope at theta=45 degrees. More noisy but less number of pounts.

#Principle Component Analysis(PCA).
#This helps in the statistical problem by giving a solution.
#In this you need to spit the matrix into 3 parts UDV^T.
svd<-svd(scale(z))#This will give you the PCA or the matrix. It will return a list of the U, V and D.
plot(svd$u[,1])#This will be same as the rowMeans but the dimentions are reduced.
plot(svd$v[,1])#This un outered it and then had a dimention reduction after being averaged. As the matrix was outered the values came out constant. Else they would show the same trend as columns.
plot(svd$d)#Original matrix, 
plot(svd$d^2/sum(svd$d^2))#Dimentions reduced to percentage of variation.
#The above shows the percentage of variation. Here I get 100 percent variation as I have only used outer.

#Singular Value Decomposition(SVD).
#This helps in the data compression problem by giving a solution.
#In this way we need to substract the mean to each column with the elements of the column and then divide it by the standard diviation the that column. What we get in the end should be V.
pca<-prcomp(z,scale. = T)
plot(pca$rotation[,1],svd$v[,1])#This proves that they are same. I get only one value as I have used outer.

#If there are missing values svd wont work.
library(impute)
z<-impute.knn(z)$data
#This checks for any NA/NaN values then if they are missing then and imputes it by the k nearest neighbors to that row.
#Hence the plot and hence the trend will not be too different than the original data.

#So finally, we can set approximations as,
z<-svd$u[,1:5]%*%diag(svd$d[1:5])%*%t(svd$v[,1:5])
#This will give 5/total percent of the data.

#Colours,

#There are many other functions available at colorspace.
#There are many standard colours in R we can see them using colours().
#There are things like topo.colours() which give us topographical colours.
#There are things like heat.colours() which give us essentially heat colours.
#But we can also create our own,

#We can use colorRamp function to create our own colours,
pal<-colorRamp(c("red","blue"))
pal(1)#This takes values from 0 to 1.
##     [,1] [,2] [,3]
##[1,]    0    0  255
pal(0)
##     [,1] [,2] [,3]
##[1,]  255    0    0
pal(0.5)
##      [,1] [,2]  [,3]
##[1,] 127.5    0 127.5
pal(0.75)
##      [,1] [,2]   [,3]
##[1,] 63.75    0 191.25
#We can refer to various colors like this.
#If we use 3 arguments in the colorRamp them 0 refres to red, 1 refers to green and 0.5 refers to blue. Values between 0 and 0.25 give a mixture of red and blue where blue will be dominant and values between 0.5 and 1.0 gives a combination of greena and blue.

#We can use the colorRampPalette to get a better mixture.
pal<-colorRampPalette(c("red","yellow"))
pal(2)#This takes an integer agrument.
##[1] "#FF0000" "#FFFF00"
pal(4)
#[1] "#FF0000" "#FF5500" "#FFAA00" "#FFFF00"
pal<-colorRampPalette(c("red","yellow","black"))
pal(4)
##[1] "#FF0000" "#FFAA00" "#AAAA00" "#000000"
#If I give 3 arguments then 0 will correspont to the first colour 1 will correspond to the last colour and 2 will give you all the 3, more that that the mean of each 2 bits will be taken to get a fade.
#In simple words this gives the fade from one colour to another more the number better the fade.

#While we can make a lot of colour palettes in R some come in pre-made, in packages.
library(RColorBrewer)
#There are three types of palettes,
#1)Sequential. (To show odered data that is in a sequence).
#2)Diverging. (To show deviations in data).
#3)Qualitative. (To show the quantities of data).
pal<-brewer.pal(9,"BuGn")#More thsi better the colour varience (more visibility).
#The first number is the number of shades you would like to have nd the second parameter is the palette from which you would like to take the colours from.
paluse<-colorRampPalette(pal)
image(volcano,col=paluse(20))
#Then you can use it like this.
x<-rnorm(10000)
y<-rnorm(10000)
smoothScatter(x,y)
#If you have manay many points tobe plotted we can use this function which allows us to see the points better.
#The default here is colorRamp=colorRampPalette(c("white",blues90)) and pch='.' which can be changed to preferance.

col<-rgb(1,0,0,alpha=0.5)#Here we can add transperancy too by setting alpha directly here.
#If we dont know the hexadecimal value of the color but know thw decimal value we can use this.

#Develouping Data Products With R.

#A web application framework for R.
#A Shiny server is required to host a shiny app for the world. Otherwise, only those who have have shiny installed and have access to your code could run your web page (really defeating the purpose of making a web page in the first place).
#Can be used on a platform called shinyapps.io.
#Shinyapps.io is free up to a point in that you can only run 5 apps for a certain amount of time per month.

#A shiny project is a directory containing atleast two files.
#1)ui.R - For the user interface to control how you want your app to look.
#2)server.R - To control what your app does.

#To create a shiny application, we go to file -> new file -> shiny web application.
#After this the ui.R file will have a shinyUI function in which we place the interface commands.
#In the server.R package we have a function shinyServer.R in which we enter the function or the backend of the application.

#Not only heading (h) tags we have other tags too like a, div, span, p, etc.
#?builder gives the list. **br() to end line.**

#Example 1
library(shiny)
#ui.R
shinyUI
(
    fluidPage
    ( #Fluid Page that describes the page which helps us to create our user interface.
        titlePanel("My First Web Application"), #This is how you set up the title. We place a , as the next block is just a continuity.
        #Fluid Page has two components the sidebarLayout -> sidebarPanel and the mainPanel and both these blocks of code have a , in between.
        sidebarLayout
        ( #We place the 2 conmponents we discussed about ablove within sidebarLayout.
            sidebarPanel
            ( #h3 is that HTML code.
                h3("Sidebar Panel Text")
            ),
            mainPanel
            (
                h3("Main Panel Text")
            )
        )
    )
)
#server.R
shinyServer #No inputs to no outputs.
(
    function(input, output){}
)
#To run this localy we can just click RunApp or setwd(""); by alt-s,w,enter add the path(file) and then place runApp(); or simply runApp(#Place the path here);

#Example 2
library(shiny)

shinyUI
(
    fluidPage
    ( #Fluid Page that describes the page which helps us to create our user interface.
        titlePanel("My First Web Application"), #This is how you set up the title. We place a , as the next block is just a continuity.
        #Fluid Page has two components the sidebarLayout -> sidebarPanel and the mainPanel and both these blocks of code have a , in between.
        sidebarLayout
        ( #We place the 2 conmponents we discussed about ablove within sidebarLayout.
            sidebarPanel
            ( #h5 is that HTML code.
                h5("Input value"),
                sliderInput("data","integer",0,10,5) #Input taken from slider -> data and this is how to add the sliders. 
            ),
            mainPanel
            (
                h3("Square Program"),
                code("import java.util.*"),
                br(),
                code("class one"),
                br(),
                code("{"),
                br(),
                code("public static void main(String args[])"),
                br(),
                code("{"),
                br(),
                code("Scanner ob=new Scanner(System.in);"),
                br(),
                code('System.out.println("Input Value");'),
                br(),
                code('int data=ob.nextInt();'),
                br(),
                code('System.out.println("Output Value");'),
                br(),
                code('System.out.println(data*data);'),
                br(),
                code('}'),
                br(),
                code('}'),
                br(),
                h5("Output value"), 
                textOutput("data") #Output is printed like this they have to have the same name.
            )
        )
    )
)
library(shiny)
shinyServer #No inputs to no outputs.
(
    function(input, output)
    { # Output data and input data can be called and then in between rendered like this.
        output$data=renderText(input$data*input$data)
    }
)

# Within brackets we put plot commands with input$data
output$data=renderPlot()
plotOutput(data)
#In this same way we can have different things like plots and all too.
sliderInput("data","integer",0,10,c(-5,5))
#We can have double value sliders too but thennin server.io we will have to add input$data[1]

#If we need to re run the code after changing the data in textfields then we need to place them in a reactive statement.
calc_sum<-reactive({
    #input$box1+input$box2 such commands.
})
calc_sum()
#Simply instead of functions we use reactive statements.

#We can use this button to prevent the functions from automatically executing.
submitButton("Submit")

#Now if we want diffrenet tabs in one tab we can use,
mainPanel(
    tabsetPanel(
        type = "tabs",
        tabPanel("Tab 1",br(),textOutput("o_1")),
        tabPanel("Tab 2",br(),textOutput("o_2"))
    )
)
#This way we have different tabs. To show different outputs.

#Example 3
#This is how we use the App instead of using the dual file method.
library(shiny)
Server <- function(input, output) 
{
    model <- reactive({ #We are using brushed points from the trees data set. brush1 is the input variable. It is the brushOpts id. It just chooses the points.
        brushed_data <- brushedPoints(trees, input$brush1, xvar = "Girth", yvar = "Volume") #BrushedPoints selects the data points. Returns a dataset.
        if(nrow(brushed_data) < 2)
            return(NULL)
        lm(Volume ~ Girth, data = brushed_data)
    })
    output$slopeOut <- renderText({
        if(is.null(model()))
            "No Model Found"
        else 
            model()[[1]][2]
    })
    output$intOut <- renderText({
        if(is.null(model()))
            "No Model Found"
        else 
            model()[[1]][1]
    })
    output$plot1 <- renderPlot({
        plot(trees$Girth, trees$Volume, xlab = "Girth", ylab = "Volume", main = "Tree Measurements", cex = 1.5, pch = 16, bty = "n")
        if(!is.null(model()))
            abline(model(), col = "blue", lwd = 2)
    })
}
ui <- fluidPage(
    titlePanel("Visualize Many Models"),
    sidebarLayout(
        sidebarPanel(
            h3("Slope"),
            textOutput("slopeOut"),
            h3("Intercept"),
            textOutput("intOut")
        ),
        mainPanel(
            plotOutput("plot1", brush = brushOpts(
                id = "brush1" #Here brush1 is the input parameter.
            ))
        )
    )
)
#As we see ui is the ui page and server is the Server function.
shinyApp(ui = ui, server = Server)

#Shiny Gadgets
#Explaining with an example:
#Required packages
library(shiny) 
library(miniUI)
myFirstGadget <- function(numbers1,numbers2) 
{ #Mini page only has one title and 2 inpurts I guess.
    ui <- miniPage(
        gadgetTitleBar("My First Gadget"),
        miniContentPanel( #We can pass 1:10,1:10 and so on too. As it accepts a drop down menu.
            selectInput("num1", "First Number", choices=numbers1),
            selectInput("num2", "Second Number", choices=numbers2)
        )
    ) #The server has input, output and server as parameters.
    server <- function(input, output, session) 
    { #Observing an event as we do in actionListener in Java.
        observeEvent(input$done,{ #Converting into numeric and then multiplying.
            num1 <- as.numeric(input$num1)
            num2 <- as.numeric(input$num2)
            stopApp(num1 * num2) #Stopping and multiplying.
        })
    } #Running the Gadget. After telling that the ui is named ui and server is named server.
    runGadget(ui, server)
}

#Google Vis.
#To embed this we need to use results=asis.
#This is how we show dynamic charts.
suppressPackageStartupMessages(library(googleVis))
M <- gvisMotionChart(Fruits, "Fruit", "Year",
                     options=list(width=600, height=400))
plot(M)
print(M,"chart")

#We can have different google visualizations too.
#* Motion charts:  `gvisMotonChart`
#* Interactive maps: `gvisGeoChart`
#* Interactive tables: `gvisTable`
#* Line charts: `gvisLineChart`
#* Bar charts: `gvisColumnChart`
#* Tree maps: `gvisTreeMap`

#We can use maps like,
#See the valiables properly.
G <- gvisGeoChart(Exports, locationvar="Country",
                  colorvar="Profit",options=list(width=600, height=400))
plot(G)
#We can chose the region like,
G2 <- gvisGeoChart(Exports, locationvar="Country",
                   colorvar="Profit",options=list(width=600, height=400,region="150"))
plot(G2)
#There are plenty other options which we can see here.
#https://developers.google.com/chart/interactive/docs/gallery/geochart

#We can make line charts using,
#Here all teh options are set and used.
df <- data.frame(label=c("US", "GB", "BR"), val1=c(1,3,4), val2=c(23,12,32))
Line <- gvisLineChart(df, xvar="label", yvar=c("val1","val2"),
                      options=list(title="Hello World", legend="bottom",
                                   titleTextStyle="{color:'red', fontSize:18}",                         
                                   vAxis="{gridlines:{color:'red', count:3}}",
                                   hAxis="{title:'My Label', titleTextStyle:{color:'blue'}}",
                                   series="[{color:'green', targetAxisIndex: 0}, 
                         {color: 'blue',targetAxisIndex:1}]",
                                   vAxes="[{title:'Value 1 (%)', format:'##,######%'}, 
                                  {title:'Value 2 (\U00A3)'}]",                          
                                   curveType="function", width=500, height=300                         
                      ))
plot(Line)

#We can merge them using,
G <- gvisGeoChart(Exports, "Country", "Profit",options=list(width=200, height=100))
T1 <- gvisTable(Exports,options=list(width=200, height=270))
M <- gvisMotionChart(Fruits, "Fruit", "Year", options=list(width=400, height=370))
GT <- gvisMerge(G,T1, horizontal=FALSE)
GTM <- gvisMerge(GT, M, horizontal=TRUE,tableOptions="bgcolor=\"#CCCCCC\" cellspacing=10")

#Plotly
#Plotly helps in creating, visualizing and sharing data visualizations.
library(plotly)
plot_ly(mtcars, x = ~wt, y = ~mpg, type = "scatter")
#This is how we can use plot_ly.

#We can have 3-D plots too.
temp <- rnorm(100, mean = 30, sd = 5)
pressue <- rnorm(100)
dtime <- 1:100
plot_ly(x = ~temp, y = ~pressue, z = ~dtime, type = "scatter3d", color = ~temp)

#This is how we can make interactive line plots.
ibrary(plotly)
library(tidyr)
library(dplyr)
data("EuStockMarkets")
stocks <- as.data.frame(EuStockMarkets) %>%
    gather(index, price) %>%
    mutate(time = rep(time(EuStockMarkets), 4))
plot_ly(stocks, x = ~time, y = ~price, color = ~index, type = "scatter", mode = "lines")

#We can have histograms too.
plot_ly(x = ~precip, type = "histogram")

#We can have boxplots too.
plot_ly(iris, y = ~Petal.Length, color = ~Species, type = "box")

#We can have heatmaps too.
terrain1 <- matrix(rnorm(100*100), nrow = 100, ncol = 100)
plot_ly(z = ~terrain1, type = "heatmap")

#We can have 3-D surfacing too.
terrain2 <- matrix(sort(rnorm(100*100)), nrow = 100, ncol = 100)
plot_ly(z = ~terrain2, type = "surface")

#Choropleth Maps:
#Choropleth maps illustrate data across geographic areas by shading regions with different colors. Choropleth maps are easy to make with Plotly though they require more setup compared to other Plotly graphics.
# Create data frame
state_pop <- data.frame(State = state.abb, Pop = as.vector(state.x77[,1]))
# Create hover text
state_pop$hover <- with(state_pop, paste(State, '<br>', "Population:", Pop))
# Make state borders white
borders <- list(color = toRGB("red"))
# Set up some mapping options
map_options <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
)
#Code for the plot.
plot_ly(z = ~state_pop$Pop, text = ~state_pop$hover, locations = ~state_pop$State, 
        type = 'choropleth', locationmode = 'USA-states', 
        color = state_pop$Pop, colors = 'Blues', marker = list(line = borders)) %>%
    layout(title = 'US Population in 1975', geo = map_options)

#We can have ggplots and make them plotly.
#We first neef to create the ggplot and store it in a variable.
#Then say that teh variable is named p then gg<-ggplotly(p) will give you the plotly of the ggplot in gg.
gg<-ggplotly(p)

#R Markdown
#We can have slides in markdown tooby opting for slides after chosing markdown.
#All the other things remain the same.
#Double hash for new slide with title and *** for slide with no title.
#To publish and hist your findings for free we place it on NeoCities. 

#Leaflet
#We can use leaflet to create interactive maps.
#This how we display the entire map.
library(leaflet) #Here you are adding tiles.
my_map <- leaflet() %>% addTiles()
my_map
#addTiles just adds the data from Open street map. http://www.openstreetmap.org/
#We can zoom into a particular area too.
my_map <- my_map %>% #This is how we can set the latitute and longitude and the popup text.
    addMarkers(lat=39.2980803, lng=-76.5898801, 
               popup="Jeff Leek's Office")
my_map
#To add multiple markers we can create a table and then pass it as arguments.
df <- data.frame(lat = runif(20, min = 39.2, max = 39.3),
                 lng = runif(20, min = -76.6, max = -76.5))
df %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers()
#We can have popups as icons too.
hopkinsIcon <- makeIcon(
    iconUrl = "http://brand.jhu.edu/content/uploads/2014/06/university.shield.small_.blue_.png",
    iconWidth = 31*215/230, iconHeight = 31,
    iconAnchorX = 31*215/230/2, iconAnchorY = 16
)
hopkinsLatLong <- data.frame(
    lat = c(39.2973166, 39.3288851, 39.2906617, 39.2970681, 39.2824806),
    lng = c(-76.5929798, -76.6206598, -76.5469683, -76.6150537, -76.6016766))
hopkinsLatLong %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(icon = hopkinsIcon)
#We can have both icons and links and even text if we want in a popup too.
hopkinsSites <- c(
    "<a href='http://www.jhsph.edu/'>East Baltimore Campus</a>",
    "<a href='https://apply.jhu.edu/visit/homewood/'>Homewood Campus</a>",
    "<a href='http://www.hopkinsmedicine.org/johns_hopkins_bayview/'>Bayview Medical Center</a>",
    "<a href='http://www.peabody.jhu.edu/'>Peabody Institute</a>",
    "<a href='http://carey.jhu.edu/'>Carey Business School</a>"
)
hopkinsLatLong %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(icon = hopkinsIcon, popup = hopkinsSites)
#Now if we have many points it is better to have clusters of sor=me sort.
#We can have amazing clustering techniques or simple circles.
#This is for amazing technique.
df <- data.frame(lat = runif(500, min = 39.25, max = 39.35),
                 lng = runif(500, min = -76.65, max = -76.55))
df %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(clusterOptions = markerClusterOptions())
#This is for circles.
df <- data.frame(lat = runif(20, min = 39.25, max = 39.35),
                 lng = runif(20, min = -76.65, max = -76.55))
df %>% 
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers()
#We can use the circles better than just simple markers that is in a more usefull way like this.
md_cities <- data.frame(name = c("Baltimore", "Frederick", "Rockville", "Gaithersburg", 
                                 "Bowie", "Hagerstown", "Annapolis", "College Park", "Salisbury", "Laurel"),
                        pop = c(619493, 66169, 62334, 61045, 55232,
                                39890, 38880, 30587, 30484, 25346),
                        lat = c(39.2920592, 39.4143921, 39.0840, 39.1434, 39.0068, 39.6418, 38.9784, 38.9897, 38.3607, 39.0993),
                        lng = c(-76.6077852, -77.4204875, -77.1528, -77.2014, -76.7791, -77.7200, -76.4922, -76.9378, -75.5994, -76.8483))
md_cities %>%
    leaflet() %>%
    addTiles() %>%
    addCircles(weight = 1, radius = sqrt(md_cities$pop) * 30)

#R Packages - Creation
#It has a structured format. It has documentation.
#We write the code in the .R file and then incorporate it into a R package structure.
#Then we generate its documentation and package it up !
#An R package is started by 
#0) Creating a directory with the name of the R package.
#1) A DESCRIPTION file which has info about the package.
#2) R code! (in the R/ sub-directory).
#3) Documentation (in the man/ sub-directory).
#4) NAMESPACE (optional, but do it).
#5) Full requirements in Writing R Extensions.

#DESCRIPTION File Contents:
#1) Package: Name of package (e.g. library(name)).
#2) Title: Full name of package.
#3) Description: Longer description of package in one sentence (usually).
#4) Version: Version number (usually M.m-p format).
#5) Author, Authors@R: Name of the original author(s).
#6) Maintainer: Name + email of person who fixes problems.
#7) License: License for the source code.
#O8)Depends: R packages that your package depends on.
#O9)Suggests: Optional R packages that users may want to have installed.
#O10)Date: Release date in YYYY-MM-DD format.
#O11)URL: Package home page.
#O12)Other fields can be added.

#Code file:
#Copy R code into the R/ sub-directory.
#There can be any number of files in this directory.
#Usually separate out files into logical groups.
#Code for all functions should be included here and not anywhere else in the package.

#Namespace file:
#1) Used to indicate which functions are exported.
#2) Exported functions can be called by the user and are considered the public API.
#3) Non-exported functions cannot be called directly by the user (but the code can be viewed).
#4) Hides implementation details from users and makes a cleaner package interface.
#5) You can also indicate what functions you import from other packages.
#6) This allows for your package to use other packages without making other packages visible to the user.
#7) Importing a function loads the package but does not attach it to the search list.
#Example:
#Key directives
#export("<function>")
#import("<package>")
#importFrom("<package>", "<function>")
#Also important
#exportClasses("<class>")
#exportMethods("<generic>")

#Documentation File:
#1) Documentation files (.Rd) placed in man/ sub-directory.
#2) Written in a specific markup language.
#3) Required for every exported function.
#Another reason to limit exported functions.
#4) You can document other things like concepts, package overview.

#The Help file has its own syntax.

#Building and Checking.
#1) R CMD build is a command-line program that creates a package archive file (.tar.gz).
#2) R CMD check runs a battery of tests on the package.
#3) You can run R CMD build or R CMD check from the command-line using a terminal or command-shell application.
#4) You can also run them from R using the system() function.
#system("R CMD build newpackage")
#system("R CMD check newpackage")
#The checking is done in this way,
#1) R CMD check runs a battery tests.
#2) Documentation exists.
#3) Code can be loaded, no major coding problems or errors.
#4) Run examples in documentation.
#5) Check docs match code.
#All tests must pass to put package on CRAN.

#We can get a background explaination or structure to the package.
#The package.skeleton() function in the utils package creates a "skeleton" R package.
#Directory structure (R/, man/), DESCRIPTION file, NAMESPACE file, documentation files.
#If there are functions visible in your workspace, it writes R code files to the R/ directory.
#Documentation stubs are created in man/.
#You need to fill in the rest!

#Example:
#' Building a Model with Top Ten Features
#' 
#' This function develops a prediction algorithm based on the top 10 features
#' in 'x' that are most predictive of 'y'.
#' 
#' @param x a n x p matrix of n observations and p predictors
#' @param y a vector of length n representing the response
#' @return a 'lm' object representing the linear model with the top 10 predictors
#' @author Roger Peng
#' @details
#' This function runs a univariate regression of y on each predictor in x and
#' calculates the p-value indicating the significance of the association. The
#' final set of 10 predictors is the taken from the 10 smallest p-values.
#' @seealso \code{lm}
#' @import stats
#' @export

topten <- function(x, y) {
    p <- ncol(x)
    if(p < 10)
        stop("there are less than 10 predictors")
    pvalues <- numeric(p)
    for(i in seq_len(p)) {
        fit <- lm(y ~ x[, i])
        summ <- summary(fit)
        pvalues[i] <- summ$coefficients[2, 4]
    }
    ord <- order(pvalues)
    x10 <- x[, ord]
    fit <- lm(y ~ x10)
    coef(fit)
}

#' Prediction with Top Ten Features
#' 
#' This function takes a set coefficients produced by the \code{topten}
#' function and makes a prediction for each of the values provided in the
#' input 'X' matrix.
#' 
#' @param X a n x 10 matrix containing n observations
#' @param b a vector of coefficients obtained from the \code{topten} function
#' @return a numeric vector containing the predicted values

predict10 <- function(X, b) {
    X <- cbind(1, X)
    drop(X %*% b)
}

#Roxygen will make the documentation and all for you if you code it in this way with the code.
#Go to build configure build tools generate with roxygen.
#Click on Rd and Namespace files and then build and reload then OK.

#Classes and Methods
#They are located in the methods package. It is a pre defined package and is loaded automaically.
#We can create classes by using setClass() function.
#We can create methods by using setMethod() function.
#We can create generic classes by using setGeneric() function.
#We can create objects by using the new() function.
#We can see the methods
methods(mean)#mean or anything else.
#mean and print are from the S3 generic package
show
#show is the S4 equivalent of the function print.
#show on the other hand is from the S4 generic package.
showMethods("show")
methods(show)
#ShowMethods show more I guess but both must eb used in their own way.
#To look at the generic methods,
#In S3 we use, getS3method(<generic>,<class>).
#In S4 we use, getMethod(<generic>,<signature>).

#In S3 we can call some of the underlaying method directly.
#In S4 we can not do such a thing.
#It is adviced to not do sucha a thing tho.

#We can create the class like this,
library(methods)
setClass("polygon",
         representation(x = "numeric",
                        y = "numeric"))
#The slots for this class are xand y.
#The slots for an S4 object can be accessed with the @ operator.
#Thats how to create a function.
setMethod("plot", "polygon",
          function(x, ...) {
              plot(x@x, x@y, type = "n", ...)
              xp <- c(x@x, x@x[1])
              yp <- c(x@y, x@y[1])
              lines(xp, yp)
          })
setMethod("print", "polygon",
          function(x,...) {
              print(x@x)
              print(x@y)
          })
#This is how to create the object and call its function.
p <- new("polygon", x = c(1, 2, 3, 4), y = c(1, 2, 3, 1))
plot(p)

#Swirl creations:
library(swirlify)
#We then use the setwd to set the working directory.
#Then we create a lesson by,
new_lesson("Lesson 1", "My first course")
#This will open multiple files.
#Anything we write any package we mention in dependson will be checked if the user has it and if not it will ask and then install it.
#Anything we write any command we mention in the InitLesson.R will be executed before we start the lesson.
#customTests.R is used for checking of some sorts.
#To add questions we can use,
wq_message()
#To add a simple message that prints.
wq_command()
#To add a slightly more complex question that prompts the used to type some code which is then checked.
#After creating the questions and all we run the command below.
add_to_manifest()
#This creates a MANIFEST file next to the lesson inside the course directory.
#Then to check if the lesson is made correctly we test it,
test_lesson()
#If no warnings or anythings are shown then the lesson is good to go.
#Then to finally run the lesson we write,
demo_lesson()
#This will start the lesson.
get_current_lesson()
#This will give us the current lesson and course we are working on.
#We can create multiple choice questions like, 
wq_multiple()
#We can add figure questions too.
wq_figure()
#We need to mention the file containing the figure inside figure and set the type to new if you want to over right or add if you want to just add something on top.
