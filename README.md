## Getting and cleaning data course project files
This repo contains  coursera getting and cleaning data course project files

There are three files in this repo including this readme.md files. The other two are run_analysis.R and codebook.md files
####run_analysis.R
run_analysis.R contains the r-script to merge and clean the data files from this url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* step 1. Download the zip file and unzip it 
* step 2.Copy features.txt(dim : 561x2), activity_labels.txt (dim : 6x2)  from UCI HAR Dataset folder, subject_test.txt(dim : 2947 x 1) , X_test.txt(dim : 2947 x 561) , y_test.txt(dim : 2947 x 1) from test folder and subject_train.txt( dim :7352 x 1), X_train.txt(dim : 7352 x 561), y_train.txt(dim :7352 x 1 ) from train folders into your working directory
* step3: Run the run_analysis.R 
  * The run_analysis will perform following actions on the fileset
    * Read features.txt, activity_labels.txt,  subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt
    * Merge subject_test.txt, X_test.txt, y_test.txt using column binding and do the same operations on train files
    * Then combine the merged file from above step into a single large data set consists of 10299 rows and 563 columns
    * 



