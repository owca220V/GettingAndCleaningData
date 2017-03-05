library(dplyr)

# set working directory to where the "UCI HAR Dataset" directory resides
setwd("~/Coursera/R programming/GettingAndCleaningData/")

# read the Test & Train data files
Test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Train <- read.table("./UCI HAR Dataset/train/X_train.txt")

# merge Train & Test (X) data
X <- rbind(Test,Train)

# read description of feature labels
Features <- read.table("./UCI HAR Dataset/features.txt")

# rename variables to match feature names
names(X) <- Features[,2]

# Extract only the measurements on the mean and standard deviation for each measurement.
# find only those columns/features which contain "mean" or "std"
selectedColumns <- grep("mean|std", Features[,2], value = TRUE)

# select only selected columns from Test
X <- X[,selectedColumns]

# get data on activity 
Test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
Train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")

# merge Traning & Test label (y) data
y <- rbind(Test_labels,Train_labels)

# change variable name to "activity"
names(y) <- "activity"

# change labels to factor variables
y$activity <- as.factor(y$activity)

# read description of activity labels
Activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# change labels to descriptive activity names to name the activities in the data set
levels(y$activity) <- Activities[,2]

# merge data (X) with labels (y)
data <- cbind(X,y)

# get data on subjects
Test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# merge subject data
subjects <- rbind(Test_subjects,Train_subjects)

# change variable name to "subject"
names(subjects) <- "subject"

# merge subjects with X&y
# while this may not have been explicitly required, I believe it is useful 
data <- cbind(data,subjects)
