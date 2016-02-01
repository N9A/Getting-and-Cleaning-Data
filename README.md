# Getting-and-Cleaning-Data

This is the Final Project of the Data Science Series of the class "Getting and Cleaning Data".
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

This Repository “Getting-and-Cleaning-Data” contains 4 files.

-	README.md, this file explains information regarding the project.
-	CodeBook.md, file describes the variables, data, and transformations or work that was performed to clean up the data
-	run_analysis.R is the R scripts which extract the subset of the tidy data set 
-	TidyDataSet.txt is the text file which contains the extracted data

# Overall project information

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I should also give the credit to one of the classmates whose notes helped me a lot in this project.  More information about the notes/clarification can be found following link:

https://drive.google.com/file/d/0B1r70tGT37UxYzhNQWdXS19CN1U/view?pref=2&pli=1

R script called run_analysis.R does the following.

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.







