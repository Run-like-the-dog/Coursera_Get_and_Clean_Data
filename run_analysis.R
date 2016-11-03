#######################################################################
# 1. call the libraries used in this code                             #
#######################################################################
library(dplyr)
library(data.table)
library(tidyr)

#######################################################################
# 2. set names of directories for overall, training and test data     #
#######################################################################

originalwd<-getwd()
overall<-paste0(originalwd,"/UCI HAR Dataset")
train<-paste0(originalwd,"/UCI HAR Dataset/train")
test<-paste0(originalwd,"/UCI HAR Dataset/test")

######################################
# 3. get the original data           #
######################################

#check if the data already exists then skip download otherwise get the data        #
#note - it is assumed that if the directory /UCI HAR Dataset exists in your        #
#working directory you have already downloaded and unzipped the files.             #
#If this is not the case, delete or rename the existing UCI HAR Dataset and re-run #

if(!file.exists(overall)){
  data_url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  temp <- tempfile()
  download.file(data_url,temp)
  unzip(temp)
  unlink(temp)
  }

#####################################################################
# 4. read in the labels for features and activities                 #
#####################################################################

setwd(overall)

#read in the features#
features<-read.table("features.txt",col.names = c("row","variable")) %>%
  # from this we want mean and std but we don't want the meanFreq which is the mean of the frequency #
  mutate(meanorstd=grepl("mean[^Freq]|std",variable)) %>%
  filter(meanorstd==TRUE)
include<-features$row
names_orig<-as.character(features$variable)

#this next bit makes the names more informative#
names<-tolower(names_orig)
names<-gsub("-","_",names)
names<-gsub("^t","time_",names)
names<-gsub("^f","frequency_",names)
names<-gsub("acc","_linear_acceleration",names)
names<-gsub("gyro","_angular_velocity",names)
names<-gsub("jerk","_derivative",names)
names<-gsub("mag","_magnitude",names)
names<-gsub("x$","x_axis",names)
names<-gsub("y$","y_axis",names)
names<-gsub("z$","z_axis",names)

#I used the two lines below to output list of names to be used in code book, not needed for running code#
#name_list<-cbind(names_orig,names)
#write.csv(name_list,"name_list.csv")

#read in activity labels#
activity<-read.table("activity_labels.txt",col.names=c("class","activity"),colClasses = c("integer","character")) 

########################################################################
# 5. Read in the data from the test directory                          #
########################################################################

setwd(test)

testwho<-read.table("subject_test.txt",col.names = "subject",colClasses = "integer")
testwhat<-read.table("y_test.txt",col.names = "class")
testresult<-fread("x_test.txt",select=(include),col.names = c(names) )
testdata<-cbind(testwho,testwhat,testresult)

########################################################################
# 6. Read in the data from the training directory                      #
########################################################################

setwd(train)

trainwho<-read.table("subject_train.txt",col.names = "subject",colClasses = "integer")
trainwhat<-read.table("y_train.txt",col.names = "class")
trainresult<-fread("x_train.txt",select=(include),col.names = c(names) )
traindata<-cbind(trainwho,trainwhat,trainresult)

#######################################################################
# 7. Now combine the two datasets                                     #
#######################################################################

setwd(originalwd)
totaldata<-rbind(testdata,traindata)
tidydata<-merge(activity,totaldata,by.x="class",by.y="class") %>%
  select(-class) %>%
  arrange(subject,activity)
if(!file.exists("tidydata.txt")) {
  write.table(totaldata,file="tidydata.txt")
}

#######################################################################
# 8. Get the average of each measurement                              #
#######################################################################

long_tidydata<-gather(tidydata,key=variable,value=measurement,-subject,-activity) 
averages<-aggregate(measurement~subject+activity+variable,long_tidydata,FUN=mean)%>%
  rename(average_measurement=measurement) %>%
  spread(key=variable,value=average_measurement) %>%
  arrange(subject,activity)
if(!file.exists("tidyaverages.txt")) {
  write.table(averages,file="tidyaverages.txt")
}

#######################################################################
# 9. Clean up the workspace by removing all the working objects       #
#######################################################################

rm(list=ls())





