# run_analysis.R 

#1. Merges the training and the test sets to create one data set.
bind by row train and test data for X
train <- read.table("train/X_train.txt")
test <- read.table("test/X_test.txt")
X <- rbind(train, test)

bind by row train and test data for subject
train <- read.table("train/subject_train.txt")
test <- read.table("test/subject_test.txt")
subject <- rbind(train, test)

bind by row train and test data for y
train <- read.table("train/y_train.txt")
test <- read.table("test/y_test.txt")
y <- rbind(train, test)

Merges all data by combining column
alldata <- cbind(X, subject, y)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
