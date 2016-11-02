CODEBOOK 
=========
Coursera Getting and Cleaning Data Course Project

THE DATA
==========

#Original Data
The original data came from the project:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, ref[1]

The experiments in the project were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

#Tidy Data
The tidy data is produced in a file averages.txt in wide format.
The tidy data contains the average of each variable for each subject and activity.
Variables are only included for those measurements in the project which are mean() or std() in the original data.

THE VARIABLES
==============
The columns in the tidy data are as follows:

- subject (Which subject performed the activity), Integer	Value from 1 to 30
- activity (which of 6 activities was performed), Character, (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- 66 x variables (the variable names describe which measurement the column pertains to and the value is the average for that variable), Numeric (normalised and bounded within [-1,1])

The variable names indicate:
- Whether the measurement is a time or frequency measurement 				
- Whether the movement is caused by gravity or body	
- Whether the movement was linear acceleration (from the accelerometer) or angular velocity (from the gyroscope)
- Whether the variable measures the mean (mean) or standard deviation (std) of the movements
- If applicable, which axis the movement was on (X,Y or Z)
- If applicable, derivatives are identified by “derivative”	

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

