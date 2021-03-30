#My code notes 1.
#Basics.

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
x[a$a,a$b,]
#This will sort x in the order of a and then in x$a if there are similar values then it will check the values of x$b.
x[order(x),]<-sort(x)
#Another way or explainatory notation.
library(plyr)
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
#To decrease the greedyness we can use ^s(.*?)s .
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
#Same as sub() but instead replaces all the matched characters.
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
ddply(InsectSprays,.(spray),summarise,sum=sum(count))
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
