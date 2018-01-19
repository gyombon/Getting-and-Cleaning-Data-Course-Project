# Getting and Cleaning Data Course Project

# Load the training and test data sets, assuming 'UCI HAR Dataset' directory is saved in working directory.
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Merge the training and test data sets to create one data set.
data_set <- rbind(train_data, test_data)
rm(train_data, test_data)

# Assign the variable names used on the feature vector as column names.
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(data_set) <- features[, 2]

# Select only measurements that are on the mean or standard deviation.
mean_stddev <- grepl('-(mean|std)\\(', features[, 2])
data_set <- subset(data_set, select = mean_stddev)

# Add the descriptive activy names.
train_activities <- read.table("./UCI HAR Dataset/train/y_train.txt")
test_activities <- read.table("./UCI HAR Dataset/test/y_test.txt")
data_activities <- rbind(train_activities, test_activities)[, 1]
activities <- c("Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", "Laying")
data_activities <- activities[data_activities]
data_set <- cbind(Activity = data_activities, data_set)

# Rename the variable names to be more descriptive.
colnames(data_set) <- gsub("^t", "Time", colnames(data_set))
colnames(data_set) <- gsub("^f", "Frequency", colnames(data_set))
colnames(data_set) <- gsub("\\(\\)", "", colnames(data_set))
colnames(data_set) <- gsub("-", "", colnames(data_set))
colnames(data_set) <- gsub("BodyBody", "Body", colnames(data_set))
colnames(data_set) <- gsub("mean", "Mean", colnames(data_set))
colnames(data_set) <- gsub("std", "Std", colnames(data_set))
colnames(data_set) <- gsub("Acc", "Acceleration", colnames(data_set))
colnames(data_set) <- gsub("Mag", "Magnitude", colnames(data_set))

# Add the subject names.
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
data_subjects <- rbind(train_subjects, test_subjects)[, 1]
data_set <- cbind(Subject = data_subjects, data_set)

# Create a second independent tidy data set with the average of each variable for each activity
# and each subject, using dplyr package.
library("dplyr")
tidy_data_set <- data_set %>%
          group_by(Activity, Subject) %>%
          summarise_all(mean)

# Rename the variable names to describe that the values are now the average of each variable.
colnames(tidy_data_set)[3:68] <- gsub("^", "MeanOf", colnames(tidy_data_set)[3:68])

# Create a txt file for upload.
write.table(tidy_data_set, row.names = FALSE, file = "tidy_data_set.txt")
