#My code notes 5.
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
