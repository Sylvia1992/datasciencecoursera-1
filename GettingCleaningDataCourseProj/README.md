## Coursera Data Science Getting and Cleaning Data : Course Project 2
This repository has been created as a part of the course project 2 work of the "Getting and Cleaning data" course being offered by Coursera.The purpose of this project is to demonstrate the process of collection, processing, and cleaning of a data set. The script prepares a tidy data set to be used for later analysis. 

Following files can be found in this directory:
1. tidy data sets named tidylabled.txt and tidyaverage.txt
2. a code book titled CodeBook.md which describes the variables and the data
3. following link is referred for the data source 
	* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
4. a script to generate the tidy data set from the raw data. This file is named as run_analysis.R. A brief description of the script is given below:
	* Merges the training and the test sets to create one data set tidy.txt. 
	* Extracts only the measurements on the mean and standard deviation for each measurement.
	* Uses descriptive activity names to name the activities in the data set
	* Appropriately labels the data set with descriptive variable names. 
	* From the data set in above step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Description of Data Set 
###The dataset includes the following files:
=========================================
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 