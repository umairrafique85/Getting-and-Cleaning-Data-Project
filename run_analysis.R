currdir <- dirname(parent.frame(2)$ofile)
setwd(currdir)

library(tidyverse)
library(stringr)
library(gsubfn)

trainset <- read.table('UCI HAR Dataset/train/X_train.txt')
testset <- read.table('UCI HAR Dataset/test/X_test.txt')
activityLabels <- read.table('UCI HAR Dataset/activity_labels.txt')
varnames <- read.table('UCI HAR Dataset/features.txt')
subj_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
subj_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
names(trainset) <- as.character(varnames$V2)
names(testset) <- as.character(varnames$V2)
acts_train <- read.table('UCI HAR Dataset/train/y_train.txt')
acts_test <- read.table('UCI HAR Dataset/test/y_test.txt')
acts_train$labels <- activityLabels[acts_train[,1],2]
acts_test$labels <- activityLabels[acts_test[,1],2]
trainset <- trainset[,str_detect(names(trainset), 'mean') | str_detect(names(trainset), 'std')]
testset <- testset[,str_detect(names(testset), 'mean') | str_detect(names(testset), 'std')]

trainset <- cbind(subj_train$V1, acts_train$labels, trainset)
testset <- cbind(subj_test$V1, acts_test$labels, testset)

names(trainset)[c(1, 2)] <- c('subject', 'activity')
names(testset)[c(1, 2)] <- c('subject', 'activity')

mergedset <- rbind(trainset, testset)

rm(trainset, testset, subj_test, subj_train, acts_test, acts_train, activityLabels, varnames)



