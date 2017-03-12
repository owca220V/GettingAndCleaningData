This script prepares two tidy data sets based on the "Human Activity Recognition Using Smartphones Dataset" (Version 1.0) which comprises data collected from the accelerometers from the Samsung Galaxy S smartphone. 


The original data set can be obtained at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The run_analysis.R script transforms the original data set into two tidy data sets called "data" and "data_avgs" which remain as objects in the enviroment.

The run_analysis.R script assumes the orginal data set has been downloaded, extracted and resides in the working directory (in a directory called "UCI HAR Dataset"). If "UCI HAR Dataset" is not present, the script will download and extract the data into the current working directory. 

# HAR_data
contains the mean and standard deviation for each measurement (each record corresponds to one observation window of one subject performing one activity)

# HAR_data_avgs
contains the average mean and standard deviation accross all windows for a given activity performed by a given subject (each record corresponds to one one subject performing one activity)

CodeBook.md provides further information about "HAR_data" and "HAR_data_avgs"
