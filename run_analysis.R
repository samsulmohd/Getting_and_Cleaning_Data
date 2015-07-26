setwd("E:/R/Getting and Cleaning Data/data/UCI HAR Dataset")

# Getting and Cleaning Data Course Project

# 1.Merges the training and the test sets to create one data set.

train <- read.table("train/X_train.txt")
test <- read.table("test/X_test.txt")
X <- rbind(train, test)

train <- read.table("train/subject_train.txt")
test <- read.table("test/subject_test.txt")
subject <- rbind(train, test)

train <- read.table("train/y_train.txt")
test <- read.table("test/y_test.txt")
y <- rbind(train, test)

#Merges all data by combining column
alldata <- cbind(X, subject, y)
