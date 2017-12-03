## Code Book for Final Dataset created from Samsung Human Activity Recognition data ##

The Features included in the final dataset come from the training and test datasets of the Samsung Human Activity Recognition datasets. A large set of variables were estimated from the raw signals read from each of the sensors. This dataset includes  only the averages of the mean and standard deviation variables from among 15 others for each activity and each subject. The details of the original data, along with all of the variables, are mentioned after the table below which the meanings of the terms used in the column names:

| Term in column name | Description                                                                                     |
|---------------------|-------------------------------------------------------------------------------------------------|
| Time                | Signals in the time domain                                                                      |
| Freq                | Signals in the frequency domain                                                                 |
| Body                | Body acceleration or gyroscope signals. Contrasts to gravity acceleration or gyroscope signals  |
| Gravity             | Gravity acceleration or gyroscope signals                                                       |
| Acc                 | Readings from the accelerometer                                                                 |
| Gyro                | Readings from the gyroscope                                                                     |
| Jerk                | Jerk signals obtained from deriving angular velocity and body linear acceleration               |
| Mag                 | Magnitude of the 3-dimensional signals calculated using the Eucliean norm                       |
| X/Y/Z               | Axis of measurement                                                                             |

## Names of all the variables in the dataset: ##

 [1] "subject"  # ID of subject the reading was taken from (1 - 30).                   
 [2] "activity"  # Descriptive label of the activity the subject was carrying out when the measurement was taken.                  
 [3] "Time_Body_Acc_mean_X"        
 [4] "Time_Body_Acc_mean_Y"        
 [5] "Time_Body_Acc_mean_Z"        
 [6] "Time_Body_Acc_std_X"         
 [7] "Time_Body_Acc_std_Y"         
 [8] "Time_Body_Acc_std_Z"         
 [9] "Time_Gravity_Acc_mean_X"     
[10] "Time_Gravity_Acc_mean_Y"     
[11] "Time_Gravity_Acc_mean_Z"     
[12] "Time_Gravity_Acc_std_X"      
[13] "Time_Gravity_Acc_std_Y"      
[14] "Time_Gravity_Acc_std_Z"      
[15] "Time_Body_Acc_Jerk_mean_X"   
[16] "Time_Body_Acc_Jerk_mean_Y"   
[17] "Time_Body_Acc_Jerk_mean_Z"   
[18] "Time_Body_Acc_Jerk_std_X"    
[19] "Time_Body_Acc_Jerk_std_Y"    
[20] "Time_Body_Acc_Jerk_std_Z"    
[21] "Time_Body_Gyro_mean_X"       
[22] "Time_Body_Gyro_mean_Y"       
[23] "Time_Body_Gyro_mean_Z"       
[24] "Time_Body_Gyro_std_X"        
[25] "Time_Body_Gyro_std_Y"        
[26] "Time_Body_Gyro_std_Z"        
[27] "Time_Body_Gyro_Jerk_mean_X"  
[28] "Time_Body_Gyro_Jerk_mean_Y"  
[29] "Time_Body_Gyro_Jerk_mean_Z"  
[30] "Time_Body_Gyro_Jerk_std_X"   
[31] "Time_Body_Gyro_Jerk_std_Y"   
[32] "Time_Body_Gyro_Jerk_std_Z"   
[33] "Time_Body_Acc_Mag_mean"      
[34] "Time_Body_Acc_Mag_std"       
[35] "Time_Gravity_Acc_Mag_mean"   
[36] "Time_Gravity_Acc_Mag_std"    
[37] "Time_Body_Acc_Jerk_Mag_mean" 
[38] "Time_Body_Acc_Jerk_Mag_std"  
[39] "Time_Body_Gyro_Mag_mean"     
[40] "Time_Body_Gyro_Mag_std"      
[41] "Time_Body_Gyro_Jerk_Mag_mean"
[42] "Time_Body_Gyro_Jerk_Mag_std" 
[43] "Freq_Body_Acc_mean_X"        
[44] "Freq_Body_Acc_mean_Y"        
[45] "Freq_Body_Acc_mean_Z"        
[46] "Freq_Body_Acc_std_X"         
[47] "Freq_Body_Acc_std_Y"         
[48] "Freq_Body_Acc_std_Z"         
[49] "Freq_Body_Acc_Jerk_mean_X"   
[50] "Freq_Body_Acc_Jerk_mean_Y"   
[51] "Freq_Body_Acc_Jerk_mean_Z"   
[52] "Freq_Body_Acc_Jerk_std_X"    
[53] "Freq_Body_Acc_Jerk_std_Y"    
[54] "Freq_Body_Acc_Jerk_std_Z"    
[55] "Freq_Body_Gyro_mean_X"       
[56] "Freq_Body_Gyro_mean_Y"       
[57] "Freq_Body_Gyro_mean_Z"       
[58] "Freq_Body_Gyro_std_X"        
[59] "Freq_Body_Gyro_std_Y"        
[60] "Freq_Body_Gyro_std_Z"        
[61] "Freq_Body_Acc_Mag_mean"      
[62] "Freq_Body_Acc_Mag_std"       
[63] "Freq_Body_Acc_Jerk_Mag_mean" 
[64] "Freq_Body_Acc_Jerk_Mag_std"  
[65] "Freq_Body_Gyro_Mag_mean"     
[66] "Freq_Body_Gyro_Mag_std"      
[67] "Freq_Body_Gyro_Jerk_Mag_mean"
[68] "Freq_Body_Gyro_Jerk_Mag_std" 

Details of the original Samsung Human Activity Recognition Dataset
-------
These details were taken from the ReadMe.txt and features_info.txt files that came with the dataset.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

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

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
