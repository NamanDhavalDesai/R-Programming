#My code notes 2.
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
