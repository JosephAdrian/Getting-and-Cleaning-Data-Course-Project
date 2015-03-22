I)Steps Followed to Obtain the tidy dataset within the script:

1)Merging the data sets to create a single data set: 
Test and training datasets for X,Y and Z are appended before merging the columns to form one complete dataset. 

2)Creating a complete list of Column Labels:
"Subject" and "Activity_Id" are added to the existing set of column labels from the "features.txt" file. The complete set of column labels are then passed as column names to the complete dataset from the previous step.

3)Extracting measurements containing mean and standard deviation:
With the help of the column names, we are able to extract only those variables which contain mean("mean") and standard deviation("std"). Along with these column names the "Subject" and "Activity_Id" columns are extracted.

4)Getting the descriptive activity names to name the activities in the data set:
A new column is added to data set with the activity description from the "activity_labels.txt" by joining the two datasets on "Activity_Id column.

5)Labelling the data with descriptive variable names:
The abbreviations in the variable names are picked and replaced with more explanatory terms.

6)Getting the average of each variable for each activity and each subject:
The dataset is aggregated at a subject and activity level

II)Description of Variables:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 'Time.' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time.BodyAcceleration.XYZ and Time.GravityAcceleration.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time.BodyAccelerationJerk.XYZ and Time.BodyAngularVelocityJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time.BodyAccelerationMagnitude., Time.GravityAccelerationMagnitude., Time.BodyAccelerationJerkMagnitude., Time.BodyAngularVelocityMagnitude., Time.BodyAngularVelocityJerkMagnitude.). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency.BodyAcceleration.XYZ, Frequency.BodyAccelerationJerk.XYZ, Frequency.BodyAngularVelocity., Frequency.BodyBodyAccelerationJerkMagnitude. , Frequency.BodyBodyAngularVelocityMagnitude., Frequency.BodyBodyAngularVelocityJerkMagnitude. . 
(Note the 'Frequency.' indicates frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean.: Mean value
StandardDeviation.: Standard deviation
meanFrequency.: Weighted average of the frequency components to obtain a mean frequency

Column description:
Subject - ID of the subject in the experiment  

Activity - Label of the activity performed  

Activity_Id - ID of the activity performed  

Variables pertaining to the Time domain -
Time.BodyAcceleration.mean.X
Time.BodyAcceleration.mean.Y
Time.BodyAcceleration.mean.Z - Mean of Body Acceleration

Time.BodyAcceleration.StandardDeviation.X
Time.BodyAcceleration.StandardDeviation.Y
Time.BodyAcceleration.StandardDeviation.Z - Standard Deviation of Body Acceleration

Time.GravityAcceleration.mean.X
Time.GravityAcceleration.mean.Y
Time.GravityAcceleration.mean.Z - Mean of Gravity Acceleration

Time.GravityAcceleration.StandardDeviation.X
Time.GravityAcceleration.StandardDeviation.Y
Time.GravityAcceleration.StandardDeviation.Z - Standard Deviation of Gravity Acceleration

Time.BodyAccelerationJerk.mean.X
Time.BodyAccelerationJerk.mean.Y
Time.BodyAccelerationJerk.mean.Z - Mean of Body Acceleration for Jerk Signals

Time.BodyAccelerationJerk.StandardDeviation.X
Time.BodyAccelerationJerk.StandardDeviation.Y
Time.BodyAccelerationJerk.StandardDeviation.Z - Standard Deviation of Body Acceleration for Jerk Signals

Time.BodyAngularVelocity.mean.X
Time.BodyAngularVelocity.mean.Y
Time.BodyAngularVelocity.mean.Z - Mean of Angular Velocity

Time.BodyAngularVelocity.StandardDeviation.X
Time.BodyAngularVelocity.StandardDeviation.Y
Time.BodyAngularVelocity.StandardDeviation.Z - Standard Deviation of Angular Velocity

Time.BodyAngularVelocityJerk.mean.X
Time.BodyAngularVelocityJerk.mean.Y
Time.BodyAngularVelocityJerk.mean.Z - Mean of Angular Velocity for Jerk Signals

Time.BodyAngularVelocityJerk.StandardDeviation.X
Time.BodyAngularVelocityJerk.StandardDeviation.Y
Time.BodyAngularVelocityJerk.StandardDeviation.Z - Standard Deviation of Angular Velocity for Jerk Signals

Time.BodyAccelerationMagnitude.mean - Mean of Magnitude of Body Acceleration
Time.BodyAccelerationMagnitude.StandardDeviation - Standard Deviation of Magnitude of Body Acceleration

Time.GravityAccelerationMagnitude.mean - Mean of Magnitude of Gravity Acceleration
Time.GravityAccelerationMagnitude.StandardDeviation - Standard Deviation of Magnitude of Gravity Acceleration

Time.BodyAccelerationJerkMagnitude.mean - Mean of Magnitude of Body Acceleration for Jerk Signals
Time.BodyAccelerationJerkMagnitude.StandardDeviation - Standard Deviation of Magnitude of Body Acceleration for Jerk Signals

Time.BodyAngularVelocityMagnitude.mean - Mean of Magnitude of Angular Velocity
Time.BodyAngularVelocityMagnitude.StandardDeviation - Standard Deviation of Magnitude of Angular Velocity

Time.BodyAngularVelocityJerkMagnitude.mean - Mean of Magnitude of Angular Velocity for Jerk Signals
Time.BodyAngularVelocityJerkMagnitude.StandardDeviation - Standard Deviation of Magnitude of Angular Velocity for Jerk Signals

Variables pertaining to the Frequency domain -
Frequency.BodyAcceleration.mean.X
Frequency.BodyAcceleration.mean.Y
Frequency.BodyAcceleration.mean.Z - Mean of Body Acceleration

Frequency.BodyAcceleration.StandardDeviation.X
Frequency.BodyAcceleration.StandardDeviation.Y
Frequency.BodyAcceleration.StandardDeviation.Z - Standard Deviation of Body Acceleration

Frequency.BodyAcceleration.meanFrequency.X
Frequency.BodyAcceleration.meanFrequency.Y
Frequency.BodyAcceleration.meanFrequency.Z - Weighted Average of Body Acceleration

Frequency.BodyAccelerationJerk.mean.X
Frequency.BodyAccelerationJerk.mean.Y
Frequency.BodyAccelerationJerk.mean.Z - Mean of Body Acceleration for Jerk Signals

Frequency.BodyAccelerationJerk.StandardDeviation.X
Frequency.BodyAccelerationJerk.StandardDeviation.Y
Frequency.BodyAccelerationJerk.StandardDeviation.Z - Standard Deviation of Body Acceleration for Jerk Signals

Frequency.BodyAccelerationJerk.meanFrequency.X
Frequency.BodyAccelerationJerk.meanFrequency.Y
Frequency.BodyAccelerationJerk.meanFrequency.Z - Weighted Average of Body Acceleration for Jerk Signals

Frequency.BodyAngularVelocity.mean.X
Frequency.BodyAngularVelocity.mean.Y
Frequency.BodyAngularVelocity.mean.Z - Mean of Angular Velocity

Frequency.BodyAngularVelocity.StandardDeviation.X
Frequency.BodyAngularVelocity.StandardDeviation.Y
Frequency.BodyAngularVelocity.StandardDeviation.Z - Standard Deviation of Angular Velocity

Frequency.BodyAngularVelocity.meanFrequency.X
Frequency.BodyAngularVelocity.meanFrequency.Y
Frequency.BodyAngularVelocity.meanFrequency.Z - Weighted Average of Angular Velocity

Frequency.BodyAccelerationMagnitude.mean - Mean of Magnitude of Body Acceleration
Frequency.BodyAccelerationMagnitude.StandardDeviation - Standard Deviation of Magnitude of Body Acceleration
Frequency.BodyAccelerationMagnitude.meanFrequency - Weighted Average of Magnitude of Body Acceleration

Frequency.BodyBodyAccelerationJerkMagnitude.mean - Mean of Magnitude of Body Acceleration for Jerk Signals
Frequency.BodyBodyAccelerationJerkMagnitude.StandardDeviation - Standard Deviation of Magnitude of Body Acceleration for Jerk Signals
Frequency.BodyBodyAccelerationJerkMagnitude.meanFrequency - Weighted Average of Magnitude of Body Acceleration for Jerk Signals

Frequency.BodyBodyAngularVelocityMagnitude.mean - Mean of Magnitude of Angular Velocity
Frequency.BodyBodyAngularVelocityMagnitude.StandardDeviation - Standard Deviation of Magnitude of Angular Velocity
Frequency.BodyBodyAngularVelocityMagnitude.meanFrequency - Weighted Average of Magnitude of Angular Velocity

Frequency.BodyBodyAngularVelocityJerkMagnitude.mean - Mean of Magnitude of Angular Velocity for Jerk Signals
Frequency.BodyBodyAngularVelocityJerkMagnitude.StandardDeviation - Standard Deviation of Magnitude of Angular Velocity for Jerk Signals
Frequency.BodyBodyAngularVelocityJerkMagnitude.meanFrequency - Weighted Average of Magnitude of Angular Velocity for Jerk Signals
