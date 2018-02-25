# Getting-and-Cleaning-Data-Course-Project CodeBook
This codebook will define the transformations that occur during
the running of this analysis and the definition of the data coming 
out.

## original data set
The original data set contains data collected from Samsung phones from
subjects doing a series of activities.  This data is provided broken down 
between the test group and training group, with the activity code and subject
provided in separate files.

## Data sets created

###full_set 
full_set is all the original measurements combined with the subject and
activity identifiers for both the test group and the training group

###sub_set 
sub_set is original measurements for mean or standard deviation combined 
with the subject and activity identifiers for both the test group and the 
training group

###sum_set 
sum_set is the sum of the original measure for mean and standard deviation
by each subject and each activity for both the training and test groups

## Methodology
The file "features.txt" was used to identify each measurement in the original
data.  Names were cleaned of special characters.  The file "activitylabels.txt"
was used to look up the activity id from the recorded data to get the 
descriptive activity name.  Only features identified as the mean or std for
a measurement at the end of its name (or for X,Y, or Z axis) was included in 
the sub set and sum set.



## Feature Selection (From original data definition)


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMag
timeGravityAccMag
timeBodyAccJerkMag
timeBodyGyroMag
timeBodyGyroJerkMag
freqBodyAcc-XYZ
freqBodyAccJerk-XYZ
freqBodyGyro-XYZ
freqBodyAccMag
freqBodyAccJerkMag
freqBodyGyroMag
freqBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
timeBodyAccMean
timeBodyAccJerkMean
timeBodyGyroMean
timeBodyGyroJerkMean


## data columns of sum set
"subject"
"source"
"activity"
"meanoftimeBodyAccmeanX"
"meanoftimeBodyAccmeanY"
"meanoftimeBodyAccmeanZ"
"meanoftimeBodyAccstdX"
"meanoftimeBodyAccstdY"
"meanoftimeBodyAccstdZ"
"meanoftimeGravityAccmeanX"
"meanoftimeGravityAccmeanY"
"meanoftimeGravityAccmeanZ"
"meanoftimeGravityAccstdX"
"meanoftimeGravityAccstdY"
"meanoftimeGravityAccstdZ"
"meanoftimeBodyAccJerkmeanX"
"meanoftimeBodyAccJerkmeanY"
"meanoftimeBodyAccJerkmeanZ"
"meanoftimeBodyAccJerkstdX"
"meanoftimeBodyAccJerkstdY"
"meanoftimeBodyAccJerkstdZ"
"meanoftimeBodyGyromeanX"
"meanoftimeBodyGyromeanY"
"meanoftimeBodyGyromeanZ"
"meanoftimeBodyGyrostdX"
"meanoftimeBodyGyrostdY"
"meanoftimeBodyGyrostdZ"
"meanoftimeBodyGyroJerkmeanX"
"meanoftimeBodyGyroJerkmeanY"
"meanoftimeBodyGyroJerkmeanZ"
"meanoftimeBodyGyroJerkstdX"
"meanoftimeBodyGyroJerkstdY"
"meanoftimeBodyGyroJerkstdZ"
"meanoftimeBodyAccMagmean"
"meanoftimeBodyAccMagstd"
"meanoftimeGravityAccMagmean"
"meanoftimeGravityAccMagstd"
"meanoftimeBodyAccJerkMagmean"
"meanoftimeBodyAccJerkMagstd"
"meanoftimeBodyGyroMagmean"
"meanoftimeBodyGyroMagstd"
"meanoftimeBodyGyroJerkMagmean"
"meanoftimeBodyGyroJerkMagstd"
"meanoffreqBodyAccmeanX"
"meanoffreqBodyAccmeanY"
"meanoffreqBodyAccmeanZ"
"meanoffreqBodyAccstdX"
"meanoffreqBodyAccstdY"
"meanoffreqBodyAccstdZ"
"meanoffreqBodyAccJerkmeanX"
"meanoffreqBodyAccJerkmeanY"
"meanoffreqBodyAccJerkmeanZ"
"meanoffreqBodyAccJerkstdX"
"meanoffreqBodyAccJerkstdY"
"meanoffreqBodyAccJerkstdZ"
"meanoffreqBodyGyromeanX"
"meanoffreqBodyGyromeanY"
"meanoffreqBodyGyromeanZ"
"meanoffreqBodyGyrostdX"
"meanoffreqBodyGyrostdY"
"meanoffreqBodyGyrostdZ"
"meanoffreqBodyAccMagmean"
"meanoffreqBodyAccMagstd"
"meanoffreqBodyBodyAccJerkMagmean"
"meanoffreqBodyBodyAccJerkMagstd"
"meanoffreqBodyBodyGyroMagmean"
"meanoffreqBodyBodyGyroMagstd"
"meanoffreqBodyBodyGyroJerkMagmean"
"meanoffreqBodyBodyGyroJerkMagstd"
