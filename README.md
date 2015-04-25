## Getting and cleaning data course project files
This repo contains  coursera getting and cleaning data course project files

There are three files in this repo including this readme.md files. The other two are run_analysis.R and codebook.md files
####run_analysis.R
run_analysis.R contains the r-script to merge and clean the data files from this url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* Step 1. Download the zip file and unzip it 
* Step 2.Copy features.txt(dim : 561x2), activity_labels.txt (dim : 6x2)  from UCI HAR Dataset folder, subject_test.txt(dim : 2947 x 1) , X_test.txt(dim : 2947 x 561) , y_test.txt(dim : 2947 x 1) from test folder and subject_train.txt( dim :7352 x 1), X_train.txt(dim : 7352 x 561), y_train.txt(dim :7352 x 1 ) from train folders **into your working directory**
* Step3: Run the run_analysis.R 
  * The run_analysis will perform following actions on the file set
    * Read features.txt, activity_labels.txt,  subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt
    * Merge subject_test.txt, X_test.txt, y_test.txt using column binding and do the same operations on train files
    * Then combine the two merged files from above step into a single large data set consists of 10299 rows and 563   columns
    *  Assign column names to the combined data set using the variable names from feature.txt
    * Select only mean and standard deviation readings from the large combined data set. (Used the mean() and std() to select the variables). There are 79 variables containing mean and standard deviation data. So the dimension of this data set is 10299 x 81 (including the subject and activity columns).
    * Replace the activity label with descriptive names using the data from activity_labels.txt
    * Arrange in ascending order of suject id
    * Find mean of each variable for each activity and each subject and make a tidy data set. The tidy data set has a dimension of 180 x 80. Each variable is in one column and each observation is in different row
    * Clean and re-arrange column names of final tidy data set and make it descriptive and lower case. Abbreviations like "t", "f", "std", "Acc", "Gyro" are replaced with "time", "freequency", "standarddeviation", "acceleration", "gyroscope" respectively. Remove the "()", ",", "-" from column names.
    * Write the obtained tidy data set using write.table function with file name "tidy_data.txt"



