
## Course Project: Human Activity Recognition Dataset ##

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
Review criteria

 1. The submitted data set is tidy. 
 2. The Github repo contains the required scripts. 
 3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information. 
 4. The README that explains the analysis files is clear and understandable. 
 5. The work submitted for this project is the work of the student who submitted it.

Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

 1. Merges the training and the test sets to create one data set. 
 2. Extracts only the measurements on the mean and standard deviation for each measurement.
 3. Uses descriptive activity names to name the activities in the data set.
 4. Appropriately labels the data set with descriptive variable names.
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps taken to obtain the tidy data ##

1. The original data contains 23 variables of each of the signals obtained from the raw data. Since we were required to extract only the measurements on the mean and standard deviation, the rest are filtered out, including the meanFreq() variable which contains the weighted average of the frequency components, since this itself is a variable like the means and standard deviations themselves
2. The activity id variable for each of the train and test datasets is given descriptive labels from the activity_labels.txt file.
3. The activity id and subject id is merged with each of the datasets to create new columns.
4. Both the train and test datasets are combined to create one dataset.
5. The feature names are edited to be more descriptive, and an underscore(_) is added between each variable name to make separating the variables easier if need in future.

## Instructions ##

 1. Save the R script run_analysis.R in the same directory as the folder "UCI HAR Dataset" folder containing the Samsung data.
 2. Run the R script. It will output a txt file named TidyData.txt.

