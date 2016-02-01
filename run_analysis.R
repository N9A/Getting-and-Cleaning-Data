## R class #3 Final Project. Load "plyr" before "dplyr".  
library(plyr)
library(dplyr)

## Question 1: Merges the training and the test sets to create one data set.
## Download the files
if(!file.exists("./finalproject")){dir.create("./finalproject")}
dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataurl, destfile="./finalproject/samsung.zip")

## Assign the zip file to extract.
samsungfile <- "samsung.zip"

## Unzip the files and there are "Test", "Train", and "Features" tables.  
## For this project,  all of the files under "Internal Signals" folders
## of test and train data files are not used.
unzip(samsungfile, list = FALSE, overwrite = TRUE)

## read subject files from "test" and "train" text files
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

## read files from "train" text file.  
## 'train/X_train.txt'= Training set.
## 'train/y_train.txt'= Training labels.
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")

## read files from "test" text file
## 'test/X_test.txt'= Test set.
## 'test/y_test.txt'= Test labels.
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")

## read "features" text file to know what the variables are
feature <- read.table("UCI HAR Dataset/features.txt")

## read activity lables "test" file to know what the activities are 
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

## assign Variables names to test data
colnames(subjecttest) <-  "subjectID"
colnames(ytest) <- "activityID"
colnames(xtest) <- feature[,2]

## Combine all test data
testdata <- cbind(xtest,ytest, subjecttest)

## assign variables names to train data
colnames(subjecttrain) <-  "subjectID"
colnames(ytrain) <- "activityID"
colnames(xtrain) <- feature[,2]

## Combine all train data
traindata <- cbind(xtrain,ytrain, subjecttrain)

## Get all data -- append/combines all the rows from test and train
traintestdata <- rbind(traindata,testdata)

## Question #2 extract std and mean columns
stdmeancolumns <- c(grep("std",colnames(traintestdata), value = TRUE), grep("mean",colnames(traintestdata), value = TRUE))
stdmeandata <- traintestdata[stdmeancolumns]

## Question #3: Uses descriptive activity names to name the activities in the data set
colnames(activity) <- c("activityID", "activityDescription")
finalData <- merge(traintestdata,activity,by="activityID")

## Question #4: Appropriately labels the data set with descriptive variable names
## Remove "()", "-", ","
colnames(finalData) <- gsub("-","",colnames(finalData))
colnames(finalData) <- gsub(",","",colnames(finalData))
colnames(finalData) <- gsub("\\()","",colnames(finalData))
colnames(finalData) <- gsub("^(t)","time",colnames(finalData))
colnames(finalData) <- gsub("^(f)","frequency",colnames(finalData))
colnames(finalData) <- gsub(pattern="\\(", replacement="", colnames(finalData))
colnames(finalData) <- gsub(")","",colnames(finalData))

## Question #5: From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable for each activity and each subject.
TidyDataSet <- ddply(finalData, c("subjectID","activityDescription"), numcolwise(mean))
write.table(TidyDataSet, file = "TidyDataSet.txt")
