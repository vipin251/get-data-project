#Require dplyr and data.table packages
# Set UCI HAR Dataset folder as your working directory and run the script
library(dplyr)
library(data.table)

#read  features and labels 
features <- read.table("features.txt", header = F, stringsAsFactors = F, sep = " ")
labels <- read.table("activity_labels.txt", header = F, stringsAsFactors = F, sep = " ")
#read test files 
x_subject_test <- read.table("./test/subject_test.txt", header = F, stringsAsFactors = F, sep = " ")
x_test <- read.table("./test/X_test.txt", header = F, stringsAsFactors = F)
y_test <- read.table("./test/y_test.txt", header = F, stringsAsFactors = F)
#read train files
x_subject_train <- read.table("./train/subject_train.txt", header = F, stringsAsFactors = F, sep = " ")
x_train <- read.table("./train/X_train.txt", header = F, stringsAsFactors = F)
y_train <- read.table("./train/y_train.txt", header = F, stringsAsFactors = F)

#Col bind activity id and subject id test files
test_with_activity_id <- cbind(y_test, x_test)
test_with_suject_id <- cbind(x_subject_test, test_with_activity_id)

#Col bind activity id and subject id train files
train_with_activity_id <- cbind(y_train, x_train)
train_with_subject_id <- cbind(x_subject_train, train_with_activity_id)

#row bind test and train files
final_without_colnames <- rbind(test_with_suject_id, train_with_subject_id)

#assign colnames from features to merged train and test data set
colnames(final_without_colnames)  <- c("subject","activity", as.character(features$V2))

#select only mean and std deviation columns
subset_mean_std <- grep("[Mm]ean()|std()", colnames(final_without_colnames))
merged_df <- final_without_colnames[,c(1,2,subset_mean_std)]

#replace the activity id with descriptive names
for(i in labels$V1){
        merged_df$activity <- gsub( i, labels[i, 2], merged_df$activity)
}
#remove unwanted intermediate files from env
rm("x_subject_test", "x_subject_train","x_test","x_train","y_test","y_train", 
   "final_without_colnames", "test_with_activity_id", "test_with_suject_id", 
   "train_with_activity_id", "train_with_subject_id", "i", "subset_mean_std", 
   "features",  "labels")

#Find mean of each variable for each activity and each subject
tidy_data_means <- data.frame()
for(i in 1:30){        
filtered <- filter((merged_df), subject == i)
temp <- as.data.table(filtered)[, lapply(.SD, mean), by=activity]
tidy_data_means <- rbind(tidy_data_means, temp)
}
#Clean column names and make it descriptive 
bad_colnames <- names(tidy_data_means)
bad_colnames <- gsub("^t", "Time", bad_colnames)
bad_colnames <- gsub("^f", "Freequency", bad_colnames)
bad_colnames <- gsub("std", "StandardDeviation", bad_colnames)
bad_colnames <- gsub("Acc", "Acceleration", bad_colnames)
bad_colnames <- gsub("Gyro", "Gyroscope", bad_colnames)
bad_colnames <- gsub(",", "", bad_colnames)
bad_colnames <- gsub("[\\()]", "", bad_colnames)
bad_colnames <- gsub("-", "", bad_colnames)
bad_colnames <- gsub("Mag", "Magnitude", bad_colnames)
bad_colnames <- gsub("mean", "Mean", bad_colnames)
bad_colnames <- gsub("Freq", "Freequency", bad_colnames)
bad_colnames <- gsub("anglet", "AngleTime", bad_colnames)
bad_colnames <- gsub("angle", "Angle", bad_colnames)
bad_colnames <- gsub("gravity", "Gravity", bad_colnames)
#bad_colnames <- tolower(bad_colnames)
setnames(tidy_data_means, names(tidy_data_means), bad_colnames)
#Re-arranging the columns
subject <- tidy_data_means[,2, with = F]
mean_without_sub <- tidy_data_means[,-2, with = F]
tidy_data_means <- cbind(subject, mean_without_sub)
#Remove unwanted intermediate files
rm("filtered", "mean_without_sub" , "subject", "temp", "bad_colnames","i")
View(tidy_data_means)
write.table(tidy_data_means, file = "tidy_data.txt", row.names = F)

#To the peer reviewer: code to read the output file produced by run_analysis.R
#is given below. Please remove the "#" symbol from the beggining  below line and run the 
#command to get the output file on your console

#tidy_output <- read.table("tidy_data.txt", header = T); View (tidy_output)

