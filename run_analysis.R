##  
## run_analysis.R - R script to perform the following actions:
##
## Requires dplyr
library(dplyr)
##
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
#################################################################
## Steps 1 to 4
################################################################
##
## From "features.txt" a new data-frame will be created containing 
## only the mean() and std() measurements as stated in (2)
##
## features[,1] - contains the column number in the test file
##                corresponding to ...
## features[,2] - name of the feature (mean and std)
##
        features<-read.table("./features.txt")
        idxs<-grep("mean[(,)]|std[(,)]", features[,2])
        features<-features[idxs,]
##
## read-in activity_labels
        activity_labels<-read.table("./activity_labels.txt")
################################################################
## 
## Process "test" directory
##
## Read test results
        X_test<-read.table("./test/X_test.txt")
## Consider only mean and std columns
        X_test<-X_test[features[,1]]
## Get subjects that have been tested
        subjects<-read.table("./test/subject_test.txt")
## Define activities
        activities<-read.table("./test/y_test.txt")
## Redefine activities using activity_labels
## activities[,2] will contain activity_labels
        activities<-merge(activities,activity_labels)
##
## Bind everything together in the first partial data-frame
        X_test<-cbind(subjects, activities[,2], X_test)
###############################################################
##
## Do the same operations for "train" directory
        X_train<-read.table("./train/X_train.txt")
        X_train<-X_train[features[,1]]
        subjects<-read.table("./train/subject_train.txt")
        activities<-read.table("./train/y_train.txt")
        activities<-merge(activities,activity_labels)
        X_train<-cbind(subjects, activities[,2], X_train)
##############################################################
## Bind test and train data-frames and assign column names
        df<-rbind(X_test,X_train)
        names(df)<-c("Subject_Id","Activity_Label", as.vector(features[,2]))
##
## This ends Steps 1 to 4
###############################################################
##
## Step 5
## From the data set in step 4, create a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
###############################################################
## First the initial dataframe (df) will be grouped by Subject_Id and Activity_Label
## then all variables, except those in the groups, will be summarized by 
## mean
        newDF<- df %>% group_by(Subject_Id,Activity_Label) %>%
                       summarise_each(funs(mean),everything())
        write.table(newDF,file="./tidydataset.txt",row.names=FALSE)