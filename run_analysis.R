# This is the script that will output a tidy dataset from
# the samsung data if the 'UCI HAR Dataset' folder is in the
# same directory as the script.

# set the working directory to the current directory in
# which the script resides

currdir <- dirname(parent.frame(2)$ofile)
setwd(currdir)

# check to see if the required packages are installed

if ('tidyverse' %in% rownames(installed.packages()) == FALSE)
  {install.packages('tidyverse')}
if ('stringr' %in% rownames(installed.packages()) == FALSE)
{install.packages('stringr')}

# load the required packages

library(tidyverse)
library(stringr)

# load the data
trainset <- read.table('UCI HAR Dataset/train/X_train.txt')
testset <- read.table('UCI HAR Dataset/test/X_test.txt')
activityLabels <- read.table('UCI HAR Dataset/activity_labels.txt')
varnames <- read.table('UCI HAR Dataset/features.txt')
subj_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
subj_test <- read.table('UCI HAR Dataset/test/subject_test.txt')

# set the column names of the dataset to descriptive names
# loaded from the features.txt file.
names(trainset) <- as.character(varnames$V2)
names(testset) <- as.character(varnames$V2)

# load activity ID's for each record of the training and test
# datesets

acts_train <- read.table('UCI HAR Dataset/train/y_train.txt')
acts_test <- read.table('UCI HAR Dataset/test/y_test.txt')

# add column for descriptive activity names beside the number
# ID's, taking help from the table loaded from activity_labels.txt file

acts_train$labels <- activityLabels[acts_train[,1],2]
acts_test$labels <- activityLabels[acts_test[,1],2]

# subset the training and test data datasets to include only the
# variables containing the mean and standard deviation of each measurement

trainset <- trainset[,str_detect(names(trainset), 'mean') | str_detect(names(trainset), 'std')]
testset <- testset[,str_detect(names(testset), 'mean') | str_detect(names(testset), 'std')]

# binding together the subject ID's, activity labels, and
# the measurement tables to form one dataset each for training
# and test data

trainset <- cbind(subj_train$V1, acts_train$labels, trainset)
testset <- cbind(subj_test$V1, acts_test$labels, testset)

# label the first two columns

names(trainset)[c(1, 2)] <- c('subject', 'activity')
names(testset)[c(1, 2)] <- c('subject', 'activity')

# merge the training and test datasets to form one dataset

mergedset <- rbind(trainset, testset)
mergedset <- select(mergedset, -contains("meanFreq"))

rm(trainset, testset, subj_test, subj_train, acts_test, acts_train, activityLabels, varnames)

# change variable names to be more descriptive

names(mergedset) <- names(mergedset)  %>% gsub(pattern = 'BodyBody', replacement = 'Body') %>%
  gsub(pattern = "Body", replacement = "_Body") %>%
  gsub(pattern = "Acc", replacement = "_Acc") %>%
  gsub(pattern = 'Gravity', replacement = '_Gravity') %>%
  gsub(pattern = 'Gyro', replacement = '_Gyro') %>%
  gsub(pattern = 'Jerk', replacement = '_Jerk') %>%
  gsub(pattern = 'Mag', replacement = '_Mag') %>%
  gsub(pattern = 't_', replacement = 'Time_') %>%
  gsub(pattern = 'Freq', replacement = '_Freq') %>%
  gsub(pattern = 'f_', replacement = 'Freq_') %>%
  gsub(pattern = '-', replacement = '_') %>%
  gsub(pattern = '[()]', replacement = '')

# mean of each variable grouped by subject and activity. Chose
# to put subject before activity as it seemed more intuitive

finalset <- mergedset %>% group_by(subject, activity) %>% summarise_all(mean)

# output final dataset to file

write.table(finalset, 'TidyData.txt', row.names = FALSE)