---
title: "CodeBook"
author: "Naman Desai"
date: "09/06/2020"
---
This codebook will step-wise explaination of how to get the tidydata while giving a description about the data set.

# Introduction.
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Step 1:
Download the data from the link provided bellow,
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
,or from file getdata_projectfiles_UCI HAR Dataset.zip provided in the parent folder.
Unzip the file locally in the folder where this project/file exists.

## Step 2:
Run the run_analysis.R script,

### Working of the run_analysis.R,
+ Reads the data in the train folder for x, y and subject.
+ Stores the data after reading in variables xtrain, ytrain and strain respectively.
+ Reads the data in the test folder for x, y and subject.
+ Stores the data after reading in variables xtest, ytest and stest respectively.
+ Reads the variable names which stored in file features.txt.
+ Stores the data after reading in varable varnames.
+ Reads the activity names which stored in file activity_labels.txt.
+ Stores the data after reading in varable actnames.
+ Merges the test and train data for x, y and subject.
+ Stores the data after merging in xbound, ybound and sbound repectively.
+ Subsettes the columns of xbound which have corresponding names either including mean() or std()(standard deviation). 
+ Stores the subsetted data in a variable named xsubset.
+ Creates the regular expression and storing it in a variable called meanandstd.
+ Creates a logical vector as to where as to "mean()" or "std()" are present in the varnames second column and storing it in a variable called varnamesextracted.
+ Subseting those rows where the values of that rows second column has either "mean()" or "std()" present and storing it in a variable named varnamesupdated.
+ The variablenames have ids in their first column which match to the column numbers of xbound.
+ After subseting the rows we want to work with in variablenames, the ids get subsetted too which can be matched when the column numbers of xbound and hence allow us to subset the columns of xbound via variablenamesupdated.
+ Subsetes the first rows having the ids from variablenamesupdated and storing it in a variable named variablenamesupdatedcolumn1.
+ Subsets the columns of xbound by matching them to the ids present in variablenamescolumn1.
+ Labels ybound. Meaning giving variable names. Matching the activity names to the activity numbers in ybound and storing it in another variable(column named ativitynames) in ybound.
+ Sets the first column of ybound to activity as that is what it is. It represents the activity number.
+ Takes the names of the activities actnames and preserving their order as they have to be matched with the activity numbers in ybound as factors and storing it in variable actnamescolumn2.
+ Matches activity names with their activity number in ybound as factors and storing it in a new column named activitynames in ybound.
+ Names the columns of xsubset with variablenamesupdates.
+ Labels sbound. Meaning giving variable names.
+ Merges the 3 data frames into one as all the names of the variable and observations have been given in a variable called data.
+ Arranges the data firstly Subject wise and then activity wise withing each subject.
+ Renames the headings of TidyData appropriately.
+ Summarizes all the activities Subject wise and then Activity wise by taking the mean.
+ Removes the objects we do not need.

### Variable information in run_analysis.R,
+ stest  - To store the data read from Subject_test.txt.
+ strain - To store the data read from Subject_train.txt.
+ xtest  - To store the data read from X_test.txt.
+ xtrain - To store the data read from X_train.txt.
+ ytest  - To store the data read from Y_test.txt.
+ ytrain - To store the data read from Y_train.txt.
+ varnames - To store the data read from features.txt.
+ actnames - To store the data read from activity_labels.txt
+ sbound - To store the merged data of stest and strain.
+ xbound - To store the merged data of xtest and xtrain.
+ ybound - To store the merged data of ytest and ytrain.
+ meanandstd - To store the regular expression to be used in varnamesextracted.
+ varnamesextracted - To store a logical vector of the subset of varnames where the elements that include mean() or std() are set to True and rest are set to false. This is going to be used to subset varnames.
+ varnamesupdated - To store the subset of varnames from varnamesextracted.
+ varnamesupdatedcolumn1 - To store the second column of varnamesupdated which would be used to subset xbound.
+ xsubset - To store the subset of xbound from varnamesupdatedcolumn1.
+ actcolumn2 - To store the second column of actcolumn which is then used as a label to modify ybound.
+ data - To store the merged data of xsubset, ybound and sbound.
+ TidyData - To store data after it is arranged by the Subjects and then by Activities.
+ Data - To store the final data after replacing the column names of TidyData with better understandable names.
    - All Acc in column’s name replaced by Accelerometer.
    - All Gyro in column’s name replaced by Gyroscope.
    - All BodyBody in column’s name replaced by Body.
    - All Mag in column’s name replaced by Magnitude.
    - All start with character f in column’s name replaced by. Frequency.
    - All start with character t in column’s name replaced by Time.

### Understanding what the variables mean.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcceleration-XYZ and TimeGyroscope-XYZ. These time domain signalswere captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMag, TimeGravityAccelerationMagnitude, TimeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcceleration-XYZ, FrequencyBodyAccelerationJerk-XYZ, FrequenctBodyGyroscope-XYZ, FrequenctBodyAcceleratonJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

+ mean(): Mean value
+ std(): Standard deviation
+ mad(): Median absolute deviation 
+ max(): Largest value in array
+ min(): Smallest value in array
+ sma(): Signal magnitude area
+ energy(): Energy measure. Sum of the squares divided by the number of values. 
+ iqr(): Interquartile range 
+ entropy(): Signal entropy
+ arCoeff(): Autorregresion coefficients with Burg order equal to 4
+ correlation(): correlation coefficient between two signals
+ maxInds(): index of the frequency component with largest magnitude
+ meanFreq(): Weighted average of the frequency components to obtain a mean frequency
+ skewness(): skewness of the frequency domain signal 
+ kurtosis(): kurtosis of the frequency domain signal 
+ bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
+ angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean,
TimeBodyAccelerationMean,
TimeBodyAccelerationJerkMean,
TimeBodyGyroMean,
TimeBodyGyroJerkMean.

### Understanding the rows and columns of Data,

(All the obseravtions are in ineger format except for ActivityNames which is a factor variable.)

#### Columns,
+ There are 69 columns (1 Subject label, 2 activity labels, 66 variables).
    - [1] "Subject"                                      
    - [2] "ActivityNames"                                
    - [3] "ActivityNumber"                               
    - [4] "TimeBodyAccelerometerMean()-X"                
    - [5] "TimeBodyAccelerometerMean()-Y"                
    - [6] "TimeBodyAccelerometerMean()-Z"                
    - [7] "TimeBodyAccelerometerSTD()-X"                 
    - [8] "TimeBodyAccelerometerSTD()-Y"                 
    - [9] "TimeBodyAccelerometerSTD()-Z"                 
    - [10] "TimeGravityAccelerometerMean()-X"             
    - [11] "TimeGravityAccelerometerMean()-Y"             
    - [12] "TimeGravityAccelerometerMean()-Z"             
    - [13] "TimeGravityAccelerometerSTD()-X"              
    - [14] "TimeGravityAccelerometerSTD()-Y"              
    - [15] "TimeGravityAccelerometerSTD()-Z"              
    - [16] "TimeBodyAccelerometerJerkMean()-X"            
    - [17] "TimeBodyAccelerometerJerkMean()-Y"            
    - [18] "TimeBodyAccelerometerJerkMean()-Z"            
    - [19] "TimeBodyAccelerometerJerkSTD()-X"             
    - [20] "TimeBodyAccelerometerJerkSTD()-Y"             
    - [21] "TimeBodyAccelerometerJerkSTD()-Z"             
    - [22] "TimeBodyGyroscopeMean()-X"                    
    - [23] "TimeBodyGyroscopeMean()-Y"                    
    - [24] "TimeBodyGyroscopeMean()-Z"                    
    - [25] "TimeBodyGyroscopeSTD()-X"                     
    - [26] "TimeBodyGyroscopeSTD()-Y"                     
    - [27] "TimeBodyGyroscopeSTD()-Z"                     
    - [28] "TimeBodyGyroscopeJerkMean()-X"                
    - [29] "TimeBodyGyroscopeJerkMean()-Y"                
    - [30] "TimeBodyGyroscopeJerkMean()-Z"                
    - [31] "TimeBodyGyroscopeJerkSTD()-X"                 
    - [32] "TimeBodyGyroscopeJerkSTD()-Y"                 
    - [33] "TimeBodyGyroscopeJerkSTD()-Z"                 
    - [34] "TimeBodyAccelerometerMagnitudeMean()"         
    - [35] "TimeBodyAccelerometerMagnitudeSTD()"          
    - [36] "TimeGravityAccelerometerMagnitudeMean()"      
    - [37] "TimeGravityAccelerometerMagnitudeSTD()"       
    - [38] "TimeBodyAccelerometerJerkMagnitudeMean()"     
    - [39] "TimeBodyAccelerometerJerkMagnitudeSTD()"      
    - [40] "TimeBodyGyroscopeMagnitudeMean()"             
    - [41] "TimeBodyGyroscopeMagnitudeSTD()"              
    - [42] "TimeBodyGyroscopeJerkMagnitudeMean()"         
    - [43] "TimeBodyGyroscopeJerkMagnitudeSTD()"          
    - [44] "FrequencyBodyAccelerometerMean()-X"           
    - [45] "FrequencyBodyAccelerometerMean()-Y"           
    - [46] "FrequencyBodyAccelerometerMean()-Z"           
    - [47] "FrequencyBodyAccelerometerSTD()-X"            
    - [48] "FrequencyBodyAccelerometerSTD()-Y"            
    - [49] "FrequencyBodyAccelerometerSTD()-Z"            
    - [50] "FrequencyBodyAccelerometerJerkMean()-X"       
    - [51] "FrequencyBodyAccelerometerJerkMean()-Y"       
    - [52] "FrequencyBodyAccelerometerJerkMean()-Z"       
    - [53] "FrequencyBodyAccelerometerJerkSTD()-X"        
    - [54] "FrequencyBodyAccelerometerJerkSTD()-Y"        
    - [55] "FrequencyBodyAccelerometerJerkSTD()-Z"        
    - [56] "FrequencyBodyGyroscopeMean()-X"               
    - [57] "FrequencyBodyGyroscopeMean()-Y"               
    - [58] "FrequencyBodyGyroscopeMean()-Z"               
    - [59] "FrequencyBodyGyroscopeSTD()-X"                
    - [60] "FrequencyBodyGyroscopeSTD()-Y"                
    - [61] "FrequencyBodyGyroscopeSTD()-Z"                
    - [62] "FrequencyBodyAccelerometerMagnitudeMean()"    
    - [63] "FrequencyBodyAccelerometerMagnitudeSTD()"     
    - [64] "FrequencyBodyAccelerometerJerkMagnitudeMean()"
    - [65] "FrequencyBodyAccelerometerJerkMagnitudeSTD()" 
    - [66] "FrequencyBodyGyroscopeMagnitudeMean()"        
    - [67] "FrequencyBodyGyroscopeMagnitudeSTD()"         
    - [68] "FrequencyBodyGyroscopeJerkMagnitudeMean()"    
    - [69] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"  

#### Rows,
+ Subject column is numbered sequentially from 1 to 30 and each  subject has 6 types of activity columns as listed below. Hence there will be 180 observations(6x30=180).
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

## Step 3:
The data will be ready once the run_analysis.R completes its execution. It will be a .txt and its name will be Data and it will be stored in the parent folder as your Rproject(Rprj file).