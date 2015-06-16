---
title: "code_book.md"
author: "Marat Badretdinov"
date: "Friday, June 12, 2015"
output: html_document
---

# TIDY DATASET CODE BOOK

## Groping variables

**subjectid**  - Id of subjects from 1 to 30

**activity**  - Activity each subject was doing

 + WALKING
 + WALKING_UPSTAIRS
 + WALKING_DOWNSTAIRS
 + SITTING
 + STANDING
 + LAYING

## Features description

The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.XYZ and tGravityAcc.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk.XYZ and tBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Then, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc.XYZ, fBodyAccJerk.XYZ, fBodyGyro.XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The following functions were applied for each of the features:

 + mean(): Mean value
 + std(): Standard deviation

Finally, the average value of specific feature/function for each subject/activity was calculated.

 + tBodyAcc.mean.X
 + tBodyAcc.mean.Y	
 + tBodyAcc.mean.Z	
 + tBodyAcc.std.X	
 + tBodyAcc.std.Y	
 + tBodyAcc.std.Z	
 + tGravityAcc.mean.X	
 + tGravityAcc.mean.Y	
 + tGravityAcc.mean.Z	
 + tGravityAcc.std.X	
 + tGravityAcc.std.Y	
 + tGravityAcc.std.Z	
 + tBodyAccJerk.mean.X	
 + tBodyAccJerk.mean.Y	
 + tBodyAccJerk.mean.Z	
 + tBodyAccJerk.std.X	
 + tBodyAccJerk.std.Y	
 + tBodyAccJerk.std.Z	
 + tBodyGyro.mean.X	
 + tBodyGyro.mean.Y	
 + tBodyGyro.mean.Z	
 + tBodyGyro.std.X	
 + tBodyGyro.std.Y	
 + tBodyGyro.std.Z	
 + tBodyGyroJerk.mean.X	
 + tBodyGyroJerk.mean.Y	
 + tBodyGyroJerk.mean.Z	
 + tBodyGyroJerk.std.X	
 + tBodyGyroJerk.std.Y	
 + tBodyGyroJerk.std.Z	
 + tBodyAccMag.mean	
 + tBodyAccMag.std	
 + tGravityAccMag.mean	
 + tGravityAccMag.std	
 + tBodyAccJerkMag.mean	
 + tBodyAccJerkMag.std	
 + tBodyGyroMag.mean	
 + tBodyGyroMag.std	
 + tBodyGyroJerkMag.mean	
 + tBodyGyroJerkMag.std	
 + fBodyAcc.mean.X	
 + fBodyAcc.mean.Y	
 + fBodyAcc.mean.Z	
 + fBodyAcc.std.X	
 + fBodyAcc.std.Y	
 + fBodyAcc.std.Z	
 + fBodyAccJerk.mean.X	
 + fBodyAccJerk.mean.Y	
 + fBodyAccJerk.mean.Z	
 + fBodyAccJerk.std.X	
 + fBodyAccJerk.std.Y	
 + fBodyAccJerk.std.Z	
 + fBodyGyro.mean.X	
 + fBodyGyro.mean.Y	
 + fBodyGyro.mean.Z	
 + fBodyGyro.std.X	
 + fBodyGyro.std.Y	
 + fBodyGyro.std.Z	
 + fBodyAccMag.mean	
 + fBodyAccMag.std	
 + fBodyBodyAccJerkMag.mean	
 + fBodyBodyAccJerkMag.std	
 + fBodyBodyGyroMag.mean	
 + fBodyBodyGyroMag.std	
 + fBodyBodyGyroJerkMag.mean	
 + fBodyBodyGyroJerkMag.std
 
