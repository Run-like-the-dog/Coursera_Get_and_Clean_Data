CODEBOOK Coursera Getting and Cleaning Data Course Project
=========================================================================================================

=========================================================================================================
THE DATA
=========================================================================================================

ORIGINAL DATA
The original data came from the project:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, ref[1]

The experiments in the project were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


TIDY DATA
The tidy data is produced in a file averages.txt in wide format.
The tidy data contains the average of each variable for each subject and activity.
Variables are only included for those measurements in the project which are mean() or std() in the original data.

=====================================================================================================================
THE VARIABLES
=====================================================================================================================

The columns in the tidy data are as follows:

subject		(Which subject performed the activity)
		Integer	Value from 1 to 30
	

activity	(which of 6 activities was performed)
		Character
		WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

66 x variables	(the variable names describe which measurement the column pertains to and the value is the average for that variable)
		Numeric, normalised and bounded within [-1,1]
		(The list of variables is shown below)

The variable names indicate:
	Whether the measurement is a time or frequency measurement 				
	Whether the movement is caused by gravity or body	
	Whether the movement was linear acceleration (from the accelerometer) or angular velocity (from the gyroscope)
	Whether the variable measures the mean (mean) or standard deviation (std) of the movements
	If applicable, which axis the movement was on (X,Y or Z)
	If applicable, derivatives are identified by “derivative”	

list of variables:
ORIGINAL MEASUREMENT		VARIABLE NAME IN TIDY FILE		
tBodyAcc-mean()-X		time_body_linear_acceleration_mean()_x_axis
tBodyAcc-mean()-Y		time_body_linear_acceleration_mean()_y_axis
tBodyAcc-mean()-Z		time_body_linear_acceleration_mean()_z_axis
tBodyAcc-std()-X		time_body_linear_acceleration_std()_x_axis
tBodyAcc-std()-Y		time_body_linear_acceleration_std()_y_axis
tBodyAcc-std()-Z		time_body_linear_acceleration_std()_z_axis
tGravityAcc-mean()-X		time_gravity_linear_acceleration_mean()_x_axis
tGravityAcc-mean()-Y		time_gravity_linear_acceleration_mean()_y_axis
tGravityAcc-mean()-Z		time_gravity_linear_acceleration_mean()_z_axis
tGravityAcc-std()-X		time_gravity_linear_acceleration_std()_x_axis
tGravityAcc-std()-Y		time_gravity_linear_acceleration_std()_y_axis
tGravityAcc-std()-Z		time_gravity_linear_acceleration_std()_z_axis
tBodyAccJerk-mean()-X		time_body_linear_acceleration_derivative_mean()_x_axis
tBodyAccJerk-mean()-Y		time_body_linear_acceleration_derivative_mean()_y_axis
tBodyAccJerk-mean()-Z		time_body_linear_acceleration_derivative_mean()_z_axis
tBodyAccJerk-std()-X		time_body_linear_acceleration_derivative_std()_x_axis
tBodyAccJerk-std()-Y		time_body_linear_acceleration_derivative_std()_y_axis
tBodyAccJerk-std()-Z		time_body_linear_acceleration_derivative_std()_z_axis
tBodyGyro-mean()-X		time_body_angular_velocity_mean()_x_axis
tBodyGyro-mean()-Y		time_body_angular_velocity_mean()_y_axis
tBodyGyro-mean()-Z		time_body_angular_velocity_mean()_z_axis
tBodyGyro-std()-X		time_body_angular_velocity_std()_x_axis
tBodyGyro-std()-Y		time_body_angular_velocity_std()_y_axis
tBodyGyro-std()-Z		time_body_angular_velocity_std()_z_axis
tBodyGyroJerk-mean()-X		time_body_angular_velocity_derivative_mean()_x_axis
tBodyGyroJerk-mean()-Y		time_body_angular_velocity_derivative_mean()_y_axis
tBodyGyroJerk-mean()-Z		time_body_angular_velocity_derivative_mean()_z_axis
tBodyGyroJerk-std()-X		time_body_angular_velocity_derivative_std()_x_axis
tBodyGyroJerk-std()-Y		time_body_angular_velocity_derivative_std()_y_axis
tBodyGyroJerk-std()-Z		time_body_angular_velocity_derivative_std()_z_axis
tBodyAccMag-mean()		time_body_linear_acceleration_magnitude_mean()
tBodyAccMag-std()		time_body_linear_acceleration_magnitude_std()
tGravityAccMag-mean()		time_gravity_linear_acceleration_magnitude_mean()
tGravityAccMag-std()		time_gravity_linear_acceleration_magnitude_std()
tBodyAccJerkMag-mean()		time_body_linear_acceleration_derivative_magnitude_mean()
tBodyAccJerkMag-std()		time_body_linear_acceleration_derivative_magnitude_std()
tBodyGyroMag-mean()		time_body_angular_velocity_magnitude_mean()
tBodyGyroMag-std()		time_body_angular_velocity_magnitude_std()
tBodyGyroJerkMag-mean()		time_body_angular_velocity_derivative_magnitude_mean()
tBodyGyroJerkMag-std()		time_body_angular_velocity_derivative_magnitude_std()
fBodyAcc-mean()-X		frequency_body_linear_acceleration_mean()_x_axis
fBodyAcc-mean()-Y		frequency_body_linear_acceleration_mean()_y_axis
fBodyAcc-mean()-Z		frequency_body_linear_acceleration_mean()_z_axis
fBodyAcc-std()-X		frequency_body_linear_acceleration_std()_x_axis
fBodyAcc-std()-Y		frequency_body_linear_acceleration_std()_y_axis
fBodyAcc-std()-Z		frequency_body_linear_acceleration_std()_z_axis
fBodyAccJerk-mean()-X		frequency_body_linear_acceleration_derivative_mean()_x_axis
fBodyAccJerk-mean()-Y		frequency_body_linear_acceleration_derivative_mean()_y_axis
fBodyAccJerk-mean()-Z		frequency_body_linear_acceleration_derivative_mean()_z_axis
fBodyAccJerk-std()-X		frequency_body_linear_acceleration_derivative_std()_x_axis
fBodyAccJerk-std()-Y		frequency_body_linear_acceleration_derivative_std()_y_axis
fBodyAccJerk-std()-Z		frequency_body_linear_acceleration_derivative_std()_z_axis
fBodyGyro-mean()-X		frequency_body_angular_velocity_mean()_x_axis
fBodyGyro-mean()-Y		frequency_body_angular_velocity_mean()_y_axis
fBodyGyro-mean()-Z		frequency_body_angular_velocity_mean()_z_axis
fBodyGyro-std()-X		frequency_body_angular_velocity_std()_x_axis
fBodyGyro-std()-Y		frequency_body_angular_velocity_std()_y_axis
fBodyGyro-std()-Z		frequency_body_angular_velocity_std()_z_axis
fBodyAccMag-mean()		frequency_body_linear_acceleration_magnitude_mean()
fBodyAccMag-std()		frequency_body_linear_acceleration_magnitude_std()
fBodyBodyAccJerkMag-mean()	frequency_bodybody_linear_acceleration_derivative_magnitude_mean()
fBodyBodyAccJerkMag-std()	frequency_bodybody_linear_acceleration_derivative_magnitude_std()
fBodyBodyGyroMag-mean()		frequency_bodybody_angular_velocity_magnitude_mean()
fBodyBodyGyroMag-std()		frequency_bodybody_angular_velocity_magnitude_std()
fBodyBodyGyroJerkMag-mean()	frequency_bodybody_angular_velocity_derivative_magnitude_mean()
fBodyBodyGyroJerkMag-std()	frequency_bodybody_angular_velocity_derivative_magnitude_std()

=========================================================================================================
THE CODE
=========================================================================================================

The code in R does the following steps:
1.	Calls the R libraries needed for the code
2.	Sets the names of the directories based upon the current working directory
3.	Checks whether the data has already been downloaded in the working directory and if not, it downloads and unzips to/UCI HAR DATASET
4.	Reads in the labels for measurements, works out which measurements are mean or std and creates a vector of which columns of data to include (include), creates updated variable names that are easier to understand (names).  Reads in the names of the activities (activity).
5.	Reads in the required columns of data from the test directory (testdata)
6.	Reads in the required columns of data from the train directory (traindata)
7.	Combines the test and training data (tidydata) and writes “tidydata.txt” if it doesn’t exist
8.	Calculates the average for each variable (averages) and writes “tidyaverages.txt” if it does not exist
9.	Cleans up the workspace by removing all working objects.

