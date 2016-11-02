# Coursera_Get_and_Clean_Data
Assignment for the Coursera Get and Clean Data Course

Description
======================================
These files capture and summarise the means and standard deviations of various measurements from the project:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, ref[1]

The experiments in the project were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

I have interpreted “mean” and “standard deviation” measurements to include only the following types of measurements:
mean(): Mean value
std(): Standard deviation

I have specifically excluded
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

I have output the data in wide format as a txt file averages.txt.  The guide to the assignment, ref[2] states that either wide or narrow form of output is acceptable.

To read the tidy data file, you can use the following code:
temp<-read.table(“tidyaverages.txt”)
View(temp)

Variables:
======================================
In each row, the following is recorded:
- The subject identifier.
- The activity being carried out.
- The average for each of the mean and standard deviation variables measured.

The dataset includes the following files:
=========================================
- 'README.txt’
- ‘CODEBOOK.txt': Information about the data, variables and code
- ‘averages.txt': Contains the data output.
- ‘run_analysis.R’: The code used to download the data from the project, select and summarise it, and output averages.txt.

References:
===========
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] David Hood.
Getting and Cleaning the Assignment

