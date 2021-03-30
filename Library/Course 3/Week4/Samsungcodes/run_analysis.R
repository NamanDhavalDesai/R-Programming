#I have made this document most readable with all the explainations stated clearly, hope you like it. 
#Reading the data in the train folder for x, y and subject.
#Storing the data after reading in variables xtrain, ytrain and strain respectively.
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./UCI HAR Dataset/train/Y_train.txt")
strain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
#Reading the data in the test folder for x, y and subject.
#Storing the data after reading in variables xtest, ytest and stest respectively.
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
stest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
#Reading the variable names which stored in file features.txt.
#Storing the data after reading in varable varnames.
varnames<-read.table("./UCI HAR Dataset/features.txt")
#Reading the activity names which stored in file activity_labels.txt.
#Storing the data after reading in varable actnames.
actnames<-read.table("./UCI HAR Dataset/activity_labels.txt")
#Merging the test and train data for x, y and subject.
#Storing the data after merging in xbound, ybound and sbound repectively.
xbound<-rbind(xtrain,xtest)
ybound<-rbind(ytrain,ytest)
sbound<-rbind(strain,stest)
#Subsetting the columns of xbound which have corresponding names either including mean() or std()(standard deviation). 
#Storing the subsetted data in a variable named xsubset.
meanandstd<-"mean\\(\\)|std\\(\\)" #Creating the regular expression and storing it in a variable called meanandstd.
varnamesextracted<-grep(meanandstd,varnames[,2]) #Creating a logical vector as to where as to "mean()" or "std()" are present in the varnames second column and storing it in a variable called varnamesextracted.
varnamesupdated<-varnames[varnamesextracted,] #Subsetting those rows where the values of that rows second column has either "mean()" or "std()" present and storing it in a variable named varnamesupdated.
#The variablenames have ids in their first column which match to the column numbers of xbound.
#After subseting the rows we want to work with in variablenames, the ids get subsetted too which can be matched when the column numbers of xbound and hence allow us to subset the columns of xbound via variablenamesupdated.
varnamesupdatedcolumn1<-varnamesupdated[,1] #Subsetting the first rows having the ids from variablenamesupdated and storing it in a variable named variablenamesupdatedcolumn1.
xsubset<-xbound[,varnamesupdatedcolumn1] #Subsetting the columns of xbound by matching them to the ids present in variablenamescolumn1.
#Labeling ybound. Meaning giving variable names. Matching the activity names to the activity numbers in ybound and storing it in another variable(column named ativitynames) in ybound.
colnames(ybound)<-"ActivityNumber" #Setting the first column of ybound to activity as that is what it is. It represents the activity number.
actnamescolumn2<-actnames[,2] #Taking the names of the activities actnames and preserving their order as they have to be matched with the activity numbers in ybound as factors and storing it in variable actnamescolumn2.
ybound$ActivityNames<-factor(ybound[,1],labels=actnamescolumn2) #Matching activity names with their activity number in ybound as factors and storing it in a new column named activitynames in ybound.
#Naming the columns of xsubset with variablenamesupdates
colnames(xsubset)<-varnamesupdated[,2]
#Labeling sbound. Meaning giving variable names.
colnames(sbound)<-"Subject"
#Merging the 3 data frames into one as all the names of the variable and observations have been given in a variable called data.
data<-cbind(sbound,ybound,xsubset)
library(dplyr)
#Arranging the data firstly Subject wise and then activity wise withing each subject.
TidyData<-arrange(data,Subject,ActivityNumber)
#Renaming the headings of TidyData appropriately.
names(TidyData)<-gsub("Acc","Accelerometer",names(TidyData))
names(TidyData)<-gsub("Gyro","Gyroscope",names(TidyData))
names(TidyData)<-gsub("BodyBody","Body",names(TidyData))
names(TidyData)<-gsub("Mag","Magnitude",names(TidyData))
names(TidyData)<-gsub("^t","Time",names(TidyData))
names(TidyData)<-gsub("^f","Frequency",names(TidyData))
names(TidyData)<-gsub("tBody","TimeBody",names(TidyData))
names(TidyData)<-gsub("-mean()","Mean",names(TidyData),ignore.case=TRUE)
names(TidyData)<-gsub("-std()","STD",names(TidyData),ignore.case=TRUE)
names(TidyData)<-gsub("-freq()","Frequency",names(TidyData),ignore.case=TRUE)
names(TidyData)<-gsub("angle","Angle",names(TidyData))
names(TidyData)<-gsub("gravity","Gravity",names(TidyData))
#Summarizing all the activities Subject wise and then Activity wise by taking the mean.
Data<-TidyData%>%group_by(Subject,ActivityNames)%>%summarise_all(funs(mean))
#Removing the objects we do not need.
rm(stest,strain,xtest,xtrain,ytest,ytrain,xbound,varnames,varnamesextracted,varnamesupdatedcolumn1,meanandstd,actnamescolumn2,varnamesupdated,actnames,ybound,sbound,xsubset,data,TidyData)
write.table(Data, "Data.txt", row.name=FALSE)
