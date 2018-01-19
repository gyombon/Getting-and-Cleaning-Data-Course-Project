# Getting and Cleaning Data Course Project

## Introduction:

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

The data used for this project has been collected from the accelerometers from the Samsung Galaxy S smartphone, and can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## run_analysis.R

### Load the data sets and merge them into one data set.

The script loads the X_train.txt and X_test.txt files, assuming they have not been moved or renamed from the original directory 'UCI HAR Dataset', and that that directory was saved is the working directory. The two data sets are then merged into one, and removed from the Global Environment.

### Assign the variable names

The script loads the features.txt file which contains the variable names, and assigns them as names to the relevant columns.

### Select only the mean and standard deviation measurements

The script identifies the column names which contain "mean(" or "std(", and subset the data set to only contain those columns.

### Add the activity names

The script loads the y_train.txt and y_test.txt files, which contain the code for the six different activities undertaken by the subjects, and binds them into one data set. The codes, which are numbers from 1 to 6, are then replaced by more descriptive names for each activity, and added as an extra column, named Activity, to the data set. It adds that new column as the first one to the data set.

### Rename the variable names

The script renames the variable names so that they are more descriptive, and all special characters are removed.

### Add the subject names

The script loads the subject_train.txt and subject_test.txt files, which contain the number from 1 to 30 assigned to each subject, and binds them into one data set. The numbers are added as the first column onto the data set and the column is named Subject.

### Create a tidy data set

Using the dplyr package, the script group the data set by Activity and then Subject, and then summarise the variables by calculating their mean. It renames the measurements' column names to describe the fact the values are now the mean of the variables for each activity and each subject.

### Create a txt file

The script creates a txt file from the tidy data set, saved in the working directory and ready for upload to github.





