#My code notes 6.
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
