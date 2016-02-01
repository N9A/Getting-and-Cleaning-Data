# Code Book for Getting and Cleaning Data Final project

After the data files are downloaded and extracted, one should use following text files to complete the task:

NOTE: for this task, all the data files which are under “Inertial Signals” folders from both test and train were omitted.  

-	Test, this is the folder which contains the information regarding the test subjects.  The test subjects are in ID number and they are from 1:30.  

-	Train, this is the folder which contains the information regarding the trainings which were performed.

-	Activity, this is the text file which contains the information regarding the Activities which the test subjects performed.  There are six activities:
	1. WALKING
	2. WALKING_UPSTAIRS
 	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING

-	Features, this is the file which contains the set of variables (561) which were provided to us.  The detail of the Features can be found in the data file called “features_info.txt” after one had downloaded the data files.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:


For 1st task, the test data train data were combined using rbind function.
For 2nd task, the measurements which the variables contain either std, or mean were extracted.
For 3rd task, the original data set was merged with Activity text file to see the subjects’ activities.
For 4th task, the labels were cleaned.
For 5th task, each subject and each activity were grouped and calculated mean value to get the tidy data set.  

# Variables in Tidy data set in step 5

subjectID
 
activityDescription
 
activityID
 
timeBodyAccmeanX
 
timeBodyAccmeanY
 
timeBodyAccmeanZ
 
timeBodyAccstdX
 
timeBodyAccstdY
 
timeBodyAccstdZ
 
timeBodyAccmadX
 
timeBodyAccmadY
 
timeBodyAccmadZ
 
timeBodyAccmaxX
 
timeBodyAccmaxY
 
timeBodyAccmaxZ
 
timeBodyAccminX
 
timeBodyAccminY
 
timeBodyAccminZ
 
timeBodyAccsma
 
timeBodyAccenergyX
 
timeBodyAccenergyY
 
timeBodyAccenergyZ
 
timeBodyAcciqrX
 
timeBodyAcciqrY
 
timeBodyAcciqrZ
 
timeBodyAccentropyX
 
timeBodyAccentropyY
 
timeBodyAccentropyZ
 
timeBodyAccarCoeffX1
 
timeBodyAccarCoeffX2
 
timeBodyAccarCoeffX3
 
timeBodyAccarCoeffX4
 
timeBodyAccarCoeffY1
 
timeBodyAccarCoeffY2
 
timeBodyAccarCoeffY3
 
timeBodyAccarCoeffY4
 
timeBodyAccarCoeffZ1
 
timeBodyAccarCoeffZ2
 
timeBodyAccarCoeffZ3
 
timeBodyAccarCoeffZ4
 
timeBodyAcccorrelationXY
 
timeBodyAcccorrelationXZ
 
timeBodyAcccorrelationYZ
 
timeGravityAccmeanX
 
timeGravityAccmeanY
 
timeGravityAccmeanZ
 
timeGravityAccstdX
 
timeGravityAccstdY
 
timeGravityAccstdZ
 
timeGravityAccmadX
 
timeGravityAccmadY
 
timeGravityAccmadZ
 
timeGravityAccmaxX
 
timeGravityAccmaxY
 
timeGravityAccmaxZ
 
timeGravityAccminX
 
timeGravityAccminY
 
timeGravityAccminZ
 
timeGravityAccsma
 
timeGravityAccenergyX
 
timeGravityAccenergyY
 
timeGravityAccenergyZ
 
timeGravityAcciqrX
 
timeGravityAcciqrY
 
timeGravityAcciqrZ
 
timeGravityAccentropyX
 
timeGravityAccentropyY
 
timeGravityAccentropyZ
 
timeGravityAccarCoeffX1
 
timeGravityAccarCoeffX2
 
timeGravityAccarCoeffX3
 
timeGravityAccarCoeffX4
 
timeGravityAccarCoeffY1
 
timeGravityAccarCoeffY2
 
timeGravityAccarCoeffY3
 
timeGravityAccarCoeffY4
 
timeGravityAccarCoeffZ1
 
timeGravityAccarCoeffZ2
 
timeGravityAccarCoeffZ3
 
timeGravityAccarCoeffZ4
 
timeGravityAcccorrelationXY
 
timeGravityAcccorrelationXZ
 
timeGravityAcccorrelationYZ
 
timeBodyAccJerkmeanX
 
timeBodyAccJerkmeanY
 
timeBodyAccJerkmeanZ
 
timeBodyAccJerkstdX
 
timeBodyAccJerkstdY
 
timeBodyAccJerkstdZ
 
timeBodyAccJerkmadX
 
timeBodyAccJerkmadY
 
timeBodyAccJerkmadZ
 
timeBodyAccJerkmaxX
 
timeBodyAccJerkmaxY
 
timeBodyAccJerkmaxZ
 
timeBodyAccJerkminX
 
timeBodyAccJerkminY
 
timeBodyAccJerkminZ
 
timeBodyAccJerksma
 
timeBodyAccJerkenergyX
 
timeBodyAccJerkenergyY
 
timeBodyAccJerkenergyZ
 
timeBodyAccJerkiqrX
 
timeBodyAccJerkiqrY
 
timeBodyAccJerkiqrZ
 
timeBodyAccJerkentropyX
 
timeBodyAccJerkentropyY
 
timeBodyAccJerkentropyZ
 
timeBodyAccJerkarCoeffX1
 
timeBodyAccJerkarCoeffX2
 
timeBodyAccJerkarCoeffX3
 
timeBodyAccJerkarCoeffX4
 
timeBodyAccJerkarCoeffY1
 
timeBodyAccJerkarCoeffY2
 
timeBodyAccJerkarCoeffY3
 
timeBodyAccJerkarCoeffY4
 
timeBodyAccJerkarCoeffZ1
 
timeBodyAccJerkarCoeffZ2
 
timeBodyAccJerkarCoeffZ3
 
timeBodyAccJerkarCoeffZ4
 
timeBodyAccJerkcorrelationXY
 
timeBodyAccJerkcorrelationXZ
 
timeBodyAccJerkcorrelationYZ
 
timeBodyGyromeanX
 
timeBodyGyromeanY
 
timeBodyGyromeanZ
 
timeBodyGyrostdX
 
timeBodyGyrostdY
 
timeBodyGyrostdZ
 
timeBodyGyromadX
 
timeBodyGyromadY
 
timeBodyGyromadZ
 
timeBodyGyromaxX
 
timeBodyGyromaxY
 
timeBodyGyromaxZ
 
timeBodyGyrominX
 
timeBodyGyrominY
 
timeBodyGyrominZ
 
timeBodyGyrosma
 
timeBodyGyroenergyX
 
timeBodyGyroenergyY
 
timeBodyGyroenergyZ
 
timeBodyGyroiqrX
 
timeBodyGyroiqrY
 
timeBodyGyroiqrZ
 
timeBodyGyroentropyX
 
timeBodyGyroentropyY
 
timeBodyGyroentropyZ
 
timeBodyGyroarCoeffX1
 
timeBodyGyroarCoeffX2
 
timeBodyGyroarCoeffX3
 
timeBodyGyroarCoeffX4
 
timeBodyGyroarCoeffY1
 
timeBodyGyroarCoeffY2
 
timeBodyGyroarCoeffY3
 
timeBodyGyroarCoeffY4
 
timeBodyGyroarCoeffZ1
 
timeBodyGyroarCoeffZ2
 
timeBodyGyroarCoeffZ3
 
timeBodyGyroarCoeffZ4
 
timeBodyGyrocorrelationXY
 
timeBodyGyrocorrelationXZ
 
timeBodyGyrocorrelationYZ
 
timeBodyGyroJerkmeanX
 
timeBodyGyroJerkmeanY
 
timeBodyGyroJerkmeanZ
 
timeBodyGyroJerkstdX
 
timeBodyGyroJerkstdY
 
timeBodyGyroJerkstdZ
 
timeBodyGyroJerkmadX
 
timeBodyGyroJerkmadY
 
timeBodyGyroJerkmadZ
 
timeBodyGyroJerkmaxX
 
timeBodyGyroJerkmaxY
 
timeBodyGyroJerkmaxZ
 
timeBodyGyroJerkminX
 
timeBodyGyroJerkminY
 
timeBodyGyroJerkminZ
 
timeBodyGyroJerksma
 
timeBodyGyroJerkenergyX
 
timeBodyGyroJerkenergyY
 
timeBodyGyroJerkenergyZ
 
timeBodyGyroJerkiqrX
 
timeBodyGyroJerkiqrY
 
timeBodyGyroJerkiqrZ
 
timeBodyGyroJerkentropyX
 
timeBodyGyroJerkentropyY
 
timeBodyGyroJerkentropyZ
 
timeBodyGyroJerkarCoeffX1
 
timeBodyGyroJerkarCoeffX2
 
timeBodyGyroJerkarCoeffX3
 
timeBodyGyroJerkarCoeffX4
 
timeBodyGyroJerkarCoeffY1
 
timeBodyGyroJerkarCoeffY2
 
timeBodyGyroJerkarCoeffY3
 
timeBodyGyroJerkarCoeffY4
 
timeBodyGyroJerkarCoeffZ1
 
timeBodyGyroJerkarCoeffZ2
 
timeBodyGyroJerkarCoeffZ3
 
timeBodyGyroJerkarCoeffZ4
 
timeBodyGyroJerkcorrelationXY
 
timeBodyGyroJerkcorrelationXZ
 
timeBodyGyroJerkcorrelationYZ
 
timeBodyAccMagmean
 
timeBodyAccMagstd
 
timeBodyAccMagmad
 
timeBodyAccMagmax
 
timeBodyAccMagmin
 
timeBodyAccMagsma
 
timeBodyAccMagenergy
 
timeBodyAccMagiqr
 
timeBodyAccMagentropy
 
timeBodyAccMagarCoeff1
 
timeBodyAccMagarCoeff2
 
timeBodyAccMagarCoeff3
 
timeBodyAccMagarCoeff4
 
timeGravityAccMagmean
 
timeGravityAccMagstd
 
timeGravityAccMagmad
 
timeGravityAccMagmax
 
timeGravityAccMagmin
 
timeGravityAccMagsma
 
timeGravityAccMagenergy
 
timeGravityAccMagiqr
 
timeGravityAccMagentropy
 
timeGravityAccMagarCoeff1
 
timeGravityAccMagarCoeff2
 
timeGravityAccMagarCoeff3
 
timeGravityAccMagarCoeff4
 
timeBodyAccJerkMagmean
 
timeBodyAccJerkMagstd
 
timeBodyAccJerkMagmad
 
timeBodyAccJerkMagmax
 
timeBodyAccJerkMagmin
 
timeBodyAccJerkMagsma
 
timeBodyAccJerkMagenergy
 
timeBodyAccJerkMagiqr
 
timeBodyAccJerkMagentropy
 
timeBodyAccJerkMagarCoeff1
 
timeBodyAccJerkMagarCoeff2
 
timeBodyAccJerkMagarCoeff3
 
timeBodyAccJerkMagarCoeff4
 
timeBodyGyroMagmean
 
timeBodyGyroMagstd
 
timeBodyGyroMagmad
 
timeBodyGyroMagmax
 
timeBodyGyroMagmin
 
timeBodyGyroMagsma
 
timeBodyGyroMagenergy
 
timeBodyGyroMagiqr
 
timeBodyGyroMagentropy
 
timeBodyGyroMagarCoeff1
 
timeBodyGyroMagarCoeff2
 
timeBodyGyroMagarCoeff3
 
timeBodyGyroMagarCoeff4
 
timeBodyGyroJerkMagmean
 
timeBodyGyroJerkMagstd
 
timeBodyGyroJerkMagmad
 
timeBodyGyroJerkMagmax
 
timeBodyGyroJerkMagmin
 
timeBodyGyroJerkMagsma
 
timeBodyGyroJerkMagenergy
 
timeBodyGyroJerkMagiqr
 
timeBodyGyroJerkMagentropy
 
timeBodyGyroJerkMagarCoeff1
 
timeBodyGyroJerkMagarCoeff2
 
timeBodyGyroJerkMagarCoeff3
 
timeBodyGyroJerkMagarCoeff4
 
frequencyBodyAccmeanX
 
frequencyBodyAccmeanY
 
frequencyBodyAccmeanZ
 
frequencyBodyAccstdX
 
frequencyBodyAccstdY
 
frequencyBodyAccstdZ
 
frequencyBodyAccmadX
 
frequencyBodyAccmadY
 
frequencyBodyAccmadZ
 
frequencyBodyAccmaxX
 
frequencyBodyAccmaxY
 
frequencyBodyAccmaxZ
 
frequencyBodyAccminX
 
frequencyBodyAccminY
 
frequencyBodyAccminZ
 
frequencyBodyAccsma
 
frequencyBodyAccenergyX
 
frequencyBodyAccenergyY
 
frequencyBodyAccenergyZ
 
frequencyBodyAcciqrX
 
frequencyBodyAcciqrY
 
frequencyBodyAcciqrZ
 
frequencyBodyAccentropyX
 
frequencyBodyAccentropyY
 
frequencyBodyAccentropyZ
 
frequencyBodyAccmaxIndsX
 
frequencyBodyAccmaxIndsY
 
frequencyBodyAccmaxIndsZ
 
frequencyBodyAccmeanFreqX
 
frequencyBodyAccmeanFreqY
 
frequencyBodyAccmeanFreqZ
 
frequencyBodyAccskewnessX
 
frequencyBodyAcckurtosisX
 
frequencyBodyAccskewnessY
 
frequencyBodyAcckurtosisY
 
frequencyBodyAccskewnessZ
 
frequencyBodyAcckurtosisZ
 
frequencyBodyAccbandsEnergy18
 
frequencyBodyAccbandsEnergy916
 
frequencyBodyAccbandsEnergy1724
 
frequencyBodyAccbandsEnergy2532
 
frequencyBodyAccbandsEnergy3340
 
frequencyBodyAccbandsEnergy4148
 
frequencyBodyAccbandsEnergy4956
 
frequencyBodyAccbandsEnergy5764
 
frequencyBodyAccbandsEnergy116
 
frequencyBodyAccbandsEnergy1732
 
frequencyBodyAccbandsEnergy3348
 
frequencyBodyAccbandsEnergy4964
 
frequencyBodyAccbandsEnergy124
 
frequencyBodyAccbandsEnergy2548
 
frequencyBodyAccJerkmeanX
 
frequencyBodyAccJerkmeanY
 
frequencyBodyAccJerkmeanZ
 
frequencyBodyAccJerkstdX
 
frequencyBodyAccJerkstdY
 
frequencyBodyAccJerkstdZ
 
frequencyBodyAccJerkmadX
 
frequencyBodyAccJerkmadY
 
frequencyBodyAccJerkmadZ
 
frequencyBodyAccJerkmaxX
 
frequencyBodyAccJerkmaxY
 
frequencyBodyAccJerkmaxZ
 
frequencyBodyAccJerkminX
 
frequencyBodyAccJerkminY
 
frequencyBodyAccJerkminZ
 
frequencyBodyAccJerksma
 
frequencyBodyAccJerkenergyX
 
frequencyBodyAccJerkenergyY
 
frequencyBodyAccJerkenergyZ
 
frequencyBodyAccJerkiqrX
 
frequencyBodyAccJerkiqrY
 
frequencyBodyAccJerkiqrZ
 
frequencyBodyAccJerkentropyX
 
frequencyBodyAccJerkentropyY
 
frequencyBodyAccJerkentropyZ
 
frequencyBodyAccJerkmaxIndsX
 
frequencyBodyAccJerkmaxIndsY
 
frequencyBodyAccJerkmaxIndsZ
 
frequencyBodyAccJerkmeanFreqX
 
frequencyBodyAccJerkmeanFreqY
 
frequencyBodyAccJerkmeanFreqZ
 
frequencyBodyAccJerkskewnessX
 
frequencyBodyAccJerkkurtosisX
 
frequencyBodyAccJerkskewnessY
 
frequencyBodyAccJerkkurtosisY
 
frequencyBodyAccJerkskewnessZ
 
frequencyBodyAccJerkkurtosisZ
 
frequencyBodyAccJerkbandsEnergy18
 
frequencyBodyAccJerkbandsEnergy916
 
frequencyBodyAccJerkbandsEnergy1724
 
frequencyBodyAccJerkbandsEnergy2532
 
frequencyBodyAccJerkbandsEnergy3340
 
frequencyBodyAccJerkbandsEnergy4148
 
frequencyBodyAccJerkbandsEnergy4956
 
frequencyBodyAccJerkbandsEnergy5764
 
frequencyBodyAccJerkbandsEnergy116
 
frequencyBodyAccJerkbandsEnergy1732
 
frequencyBodyAccJerkbandsEnergy3348
 
frequencyBodyAccJerkbandsEnergy4964
 
frequencyBodyAccJerkbandsEnergy124
 
frequencyBodyAccJerkbandsEnergy2548
 
frequencyBodyGyromeanX
 
frequencyBodyGyromeanY
 
frequencyBodyGyromeanZ
 
frequencyBodyGyrostdX
 
frequencyBodyGyrostdY
 
frequencyBodyGyrostdZ
 
frequencyBodyGyromadX
 
frequencyBodyGyromadY
 
frequencyBodyGyromadZ
 
frequencyBodyGyromaxX
 
frequencyBodyGyromaxY
 
frequencyBodyGyromaxZ
 
frequencyBodyGyrominX
 
frequencyBodyGyrominY
 
frequencyBodyGyrominZ
 
frequencyBodyGyrosma
 
frequencyBodyGyroenergyX
 
frequencyBodyGyroenergyY
 
frequencyBodyGyroenergyZ
 
frequencyBodyGyroiqrX
 
frequencyBodyGyroiqrY
 
frequencyBodyGyroiqrZ
 
frequencyBodyGyroentropyX
 
frequencyBodyGyroentropyY
 
frequencyBodyGyroentropyZ
 
frequencyBodyGyromaxIndsX
 
frequencyBodyGyromaxIndsY
 
frequencyBodyGyromaxIndsZ
 
frequencyBodyGyromeanFreqX
 
frequencyBodyGyromeanFreqY
 
frequencyBodyGyromeanFreqZ
 
frequencyBodyGyroskewnessX
 
frequencyBodyGyrokurtosisX
 
frequencyBodyGyroskewnessY
 
frequencyBodyGyrokurtosisY
 
frequencyBodyGyroskewnessZ
 
frequencyBodyGyrokurtosisZ
 
frequencyBodyGyrobandsEnergy18
 
frequencyBodyGyrobandsEnergy916
 
frequencyBodyGyrobandsEnergy1724
 
frequencyBodyGyrobandsEnergy2532
 
frequencyBodyGyrobandsEnergy3340
 
frequencyBodyGyrobandsEnergy4148
 
frequencyBodyGyrobandsEnergy4956
 
frequencyBodyGyrobandsEnergy5764
 
frequencyBodyGyrobandsEnergy116
 
frequencyBodyGyrobandsEnergy1732
 
frequencyBodyGyrobandsEnergy3348
 
frequencyBodyGyrobandsEnergy4964
 
frequencyBodyGyrobandsEnergy124
 
frequencyBodyGyrobandsEnergy2548
 
frequencyBodyAccMagmean
 
frequencyBodyAccMagstd
 
frequencyBodyAccMagmad
 
frequencyBodyAccMagmax
 
frequencyBodyAccMagmin
 
frequencyBodyAccMagsma
 
frequencyBodyAccMagenergy
 
frequencyBodyAccMagiqr
 
frequencyBodyAccMagentropy
 
frequencyBodyAccMagmaxInds
 
frequencyBodyAccMagmeanFreq
 
frequencyBodyAccMagskewness
 
frequencyBodyAccMagkurtosis
 
frequencyBodyBodyAccJerkMagmean
 
frequencyBodyBodyAccJerkMagstd
 
frequencyBodyBodyAccJerkMagmad
 
frequencyBodyBodyAccJerkMagmax
 
frequencyBodyBodyAccJerkMagmin
 
frequencyBodyBodyAccJerkMagsma
 
frequencyBodyBodyAccJerkMagenergy
 
frequencyBodyBodyAccJerkMagiqr
 
frequencyBodyBodyAccJerkMagentropy
 
frequencyBodyBodyAccJerkMagmaxInds
 
frequencyBodyBodyAccJerkMagmeanFreq
 
frequencyBodyBodyAccJerkMagskewness
 
frequencyBodyBodyAccJerkMagkurtosis
 
frequencyBodyBodyGyroMagmean
 
frequencyBodyBodyGyroMagstd
 
frequencyBodyBodyGyroMagmad
 
frequencyBodyBodyGyroMagmax
 
frequencyBodyBodyGyroMagmin
 
frequencyBodyBodyGyroMagsma
 
frequencyBodyBodyGyroMagenergy
 
frequencyBodyBodyGyroMagiqr
 
frequencyBodyBodyGyroMagentropy
 
frequencyBodyBodyGyroMagmaxInds
 
frequencyBodyBodyGyroMagmeanFreq
 
frequencyBodyBodyGyroMagskewness
 
frequencyBodyBodyGyroMagkurtosis
 
frequencyBodyBodyGyroJerkMagmean
 
frequencyBodyBodyGyroJerkMagstd
 
frequencyBodyBodyGyroJerkMagmad
 
frequencyBodyBodyGyroJerkMagmax
 
frequencyBodyBodyGyroJerkMagmin
 
frequencyBodyBodyGyroJerkMagsma
 
frequencyBodyBodyGyroJerkMagenergy
 
frequencyBodyBodyGyroJerkMagiqr
 
frequencyBodyBodyGyroJerkMagentropy
 
frequencyBodyBodyGyroJerkMagmaxInds
 
frequencyBodyBodyGyroJerkMagmeanFreq
 
frequencyBodyBodyGyroJerkMagskewness
 
frequencyBodyBodyGyroJerkMagkurtosis
 
angletBodyAccMeangravity
 
angletBodyAccJerkMeangravityMean
 
angletBodyGyroMeangravityMean
 
angletBodyGyroJerkMeangravityMean
 
angleXgravityMean
 
angleYgravityMean
 
angleZgravityMean

