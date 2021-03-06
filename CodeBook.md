# CodeBook

This file contains the results of processing the datasets from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The columns corresponding to the mean and standard deviation from the experimental measurements files
(./test/X_test.txt and ./train/X_train.txt) were binded in only one data-frame, containing all the experimental data. Doing this the 561 original measurements (columns) were reduced to 66.

Then columns containing Subject_Id and Activity_Label were included as first and second columns in the dataframe.

Finnaly the results were grouped by Subject_Id and Activity_Label and the measurements were summarized by mean. So the results in this file are the means of the mean and standard deviation from the original measurements.

Data description:

1) "Subject_Id"

Identification number of the subject (person) being measured (1 to 30)

2) "Activity_Label"

        WALKING
        
        WALKING_UPSTAIRS
        
        WALKING_DOWNSTAIRS
        
        SITTING
        
        STANDING
        
        LAYING

The following 66 columns (3-68) should be interpreted as a generalization of:

tBodyAcc-mean()-XYZ is the mean of original measurements (X_test, X_train) for tBodyAcc-mean()-XYZ, for Subject_Id and Activity_Label.
                
tBodyAcc-std()-XYZ is the mean of original measurements (X_test, X_train) for tBodyAcc-std()-XYZ, for Subject_Id and Activity_Label.

You should refer to the documentation in the original datasets in order to understand the meaning of each measurement.

3) "tBodyAcc-mean()-X"           
4) "tBodyAcc-mean()-Y"          
5) "tBodyAcc-mean()-Z"          
6) "tBodyAcc-std()-X"           
7) "tBodyAcc-std()-Y"            
8) "tBodyAcc-std()-Z"           
9) "tGravityAcc-mean()-X"        
10) "tGravityAcc-mean()-Y"       
11) "tGravityAcc-mean()-Z"        
12) "tGravityAcc-std()-X"        
13) "tGravityAcc-std()-Y"         
14) "tGravityAcc-std()-Z"        
15) "tBodyAccJerk-mean()-X"       
16) "tBodyAccJerk-mean()-Y"      
17) "tBodyAccJerk-mean()-Z"       
18) "tBodyAccJerk-std()-X"       
19) "tBodyAccJerk-std()-Y"        
20) "tBodyAccJerk-std()-Z"       
21) "tBodyGyro-mean()-X"          
22) "tBodyGyro-mean()-Y"         
23) "tBodyGyro-mean()-Z"          
24) "tBodyGyro-std()-X"          
25) "tBodyGyro-std()-Y"           
26) "tBodyGyro-std()-Z"          
27) "tBodyGyroJerk-mean()-X"      
28) "tBodyGyroJerk-mean()-Y"     
29) "tBodyGyroJerk-mean()-Z"      
30) "tBodyGyroJerk-std()-X"      
31) "tBodyGyroJerk-std()-Y"       
32) "tBodyGyroJerk-std()-Z"      
33) "tBodyAccMag-mean()"          
34) "tBodyAccMag-std()"          
35) "tGravityAccMag-mean()"       
36) "tGravityAccMag-std()"       
37) "tBodyAccJerkMag-mean()"      
38) "tBodyAccJerkMag-std()"      
39) "tBodyGyroMag-mean()"         
40) "tBodyGyroMag-std()"         
41) "tBodyGyroJerkMag-mean()"     
42) "tBodyGyroJerkMag-std()"     
43) "fBodyAcc-mean()-X"           
44) "fBodyAcc-mean()-Y"          
45) "fBodyAcc-mean()-Z"           
46) "fBodyAcc-std()-X"           
47) "fBodyAcc-std()-Y"            
48) "fBodyAcc-std()-Z"           
49) "fBodyAccJerk-mean()-X"       
50) "fBodyAccJerk-mean()-Y"      
51) "fBodyAccJerk-mean()-Z"       
52) "fBodyAccJerk-std()-X"       
53) "fBodyAccJerk-std()-Y"        
54) "fBodyAccJerk-std()-Z"       
55) "fBodyGyro-mean()-X"          
56) "fBodyGyro-mean()-Y"         
57) "fBodyGyro-mean()-Z"          
58) "fBodyGyro-std()-X"          
59) "fBodyGyro-std()-Y"           
60) "fBodyGyro-std()-Z"          
61) "fBodyAccMag-mean()"          
62) "fBodyAccMag-std()"          
63) "fBodyBodyAccJerkMag-mean()"  
64) "fBodyBodyAccJerkMag-std()"  
65) "fBodyBodyGyroMag-mean()"     
66) "fBodyBodyGyroMag-std()"     
67) "fBodyBodyGyroJerkMag-mean()"
68) "fBodyBodyGyroJerkMag-std()" 


