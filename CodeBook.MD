# Code Book

## Variables

The file tidy_data_set.txt contains the mean of the measurements for each Activity (Walking, WalkingUpstairs, WalkingDownstairs, Sitting, Standing, Laying) and each Subject (numbered 1 to 30).

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Each measurements had its mean and standard deviation calculated. "Mean" is used to denote the mean of the measurement, and "Std" its standard deviation.

The measurements are:

Time and Frequency of the Body Acceleration in the X, Y and Z directions:
"MeanOfTimeBodyAccelerationMeanX"
"MeanOfTimeBodyAccelerationMeanY"
"MeanOfTimeBodyAccelerationMeanZ"
"MeanOfTimeBodyAccelerationStdX"
"MeanOfTimeBodyAccelerationStdY"
"MeanOfTimeBodyAccelerationStdZ"
"MeanOfFrequencyBodyAccelerationMeanX"
"MeanOfFrequencyBodyAccelerationMeanY"
"MeanOfFrequencyBodyAccelerationMeanZ"
"MeanOfFrequencyBodyAccelerationStdX"
"MeanOfFrequencyBodyAccelerationStdY"
"MeanOfFrequencyBodyAccelerationStdZ"

Time of the Gravity Acceleration in the X, Y and Z directions:
"MeanOfTimeGravityAccelerationMeanX"
"MeanOfTimeGravityAccelerationMeanY"
"MeanOfTimeGravityAccelerationMeanZ"
"MeanOfTimeGravityAccelerationStdX"
"MeanOfTimeGravityAccelerationStdY"
"MeanOfTimeGravityAccelerationStdZ"

Time and Frequency of the Body Acceleration Jerk in the X, Y and Z directions:
"MeanOfTimeBodyAccelerationJerkMeanX"
"MeanOfTimeBodyAccelerationJerkMeanY"
"MeanOfTimeBodyAccelerationJerkMeanZ"
"MeanOfTimeBodyAccelerationJerkStdX"
"MeanOfTimeBodyAccelerationJerkStdY"
"MeanOfTimeBodyAccelerationJerkStdZ"
"MeanOfFrequencyBodyAccelerationJerkMeanX"
"MeanOfFrequencyBodyAccelerationJerkMeanY"
"MeanOfFrequencyBodyAccelerationJerkMeanZ"
"MeanOfFrequencyBodyAccelerationJerkStdX"
"MeanOfFrequencyBodyAccelerationJerkStdY"
"MeanOfFrequencyBodyAccelerationJerkStdZ"

Time and Frequency of the Body Gyro in the X, Y and Z directions:
"MeanOfTimeBodyGyroMeanX"
"MeanOfTimeBodyGyroMeanY"
"MeanOfTimeBodyGyroMeanZ"
"MeanOfTimeBodyGyroStdX"
"MeanOfTimeBodyGyroStdY"
"MeanOfTimeBodyGyroStdZ"
"MeanOfFrequencyBodyGyroMeanX"
"MeanOfFrequencyBodyGyroMeanY"
"MeanOfFrequencyBodyGyroMeanZ"
"MeanOfFrequencyBodyGyroStdX"
"MeanOfFrequencyBodyGyroStdY"
"MeanOfFrequencyBodyGyroStdZ"

Time of the Body Gyro Jeark in the X, Y and Z directions:
"MeanOfTimeBodyGyroJerkMeanX"
"MeanOfTimeBodyGyroJerkMeanY"
"MeanOfTimeBodyGyroJerkMeanZ"
"MeanOfTimeBodyGyroJerkStdX"
"MeanOfTimeBodyGyroJerkStdY"
"MeanOfTimeBodyGyroJerkStdZ"

Time and Frequency of the Body Acceleration Magnitude:
"MeanOfTimeBodyAccelerationMagnitudeMean"
"MeanOfTimeBodyAccelerationMagnitudeStd"
"MeanOfFrequencyBodyAccelerationMagnitudeMean"
"MeanOfFrequencyBodyAccelerationMagnitudeStd"

Time of the Gravity Acceleration Magnitude:
"MeanOfTimeGravityAccelerationMagnitudeMean"
"MeanOfTimeGravityAccelerationMagnitudeStd"

Time and Frequency of the Body Acceleration Jerk Magnitude:
"MeanOfTimeBodyAccelerationJerkMagnitudeMean"
"MeanOfTimeBodyAccelerationJerkMagnitudeStd"
"MeanOfFrequencyBodyAccelerationJerkMagnitudeMean"
"MeanOfFrequencyBodyAccelerationJerkMagnitudeStd"

Time and Frequency of the Body Gyro Magnitude:
"MeanOfTimeBodyGyroMagnitudeMean"
"MeanOfTimeBodyGyroMagnitudeStd"
"MeanOfFrequencyBodyGyroMagnitudeMean"
"MeanOfFrequencyBodyGyroMagnitudeStd"

Time and Frequency of the Body Gyro Jerk Magnitude:
"MeanOfTimeBodyGyroJerkMagnitudeMean"
"MeanOfTimeBodyGyroJerkMagnitudeStd"
"MeanOfFrequencyBodyGyroJerkMagnitudeMean"
"MeanOfFrequencyBodyGyroJerkMagnitudeStd"

## Data

After having merged the Training and Test data set by taking only the mean and standard deviation values, renamed the variables and activities to be more descriptive and assigned the relevant subject to number to each observation, the data was grouped by Activity and Subject, and the values for each measurement calculated as the average of the mean and standard deviation for each Activity and each Subject.
