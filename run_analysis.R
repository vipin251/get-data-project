library(dplyr)
library(data.table)
#read  features and labels 
features <- read.table("features.txt", header = F, stringsAsFactors = F, sep = " ")
labels <- read.table("activity_labels.txt", header = F, stringsAsFactors = F, sep = " ")
#read test files 
x_subject_test <- read.table("subject_test.txt", header = F, stringsAsFactors = F, sep = " ")
x_test <- read.table("X_test.txt", header = F, stringsAsFactors = F)
y_test <- read.table("y_test.txt", header = F, stringsAsFactors = F)
#read train files
x_subject_train <- read.table("subject_train.txt", header = F, stringsAsFactors = F, sep = " ")
x_train <- read.table("X_train.txt", header = F, stringsAsFactors = F)
y_train <- read.table("y_train.txt", header = F, stringsAsFactors = F)

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
subset_mean <- grep("mean", colnames(final_without_colnames))
select_means <- final_without_colnames[,c(1,2,subset_mean)]
subset_std <- grep("std", colnames(final_without_colnames))
tidy_data <- cbind(select_means, final_without_colnames[,c(subset_std)])

#replace the activity id with descriptive names
for(i in labels$V1){
        tidy_data$activity <- gsub( i, labels[i, 2], tidy_data$activity)
}
#Arrange based on suject 
tidy_data <- arrange(tidy_data, subject)

#remove unwanted intermediate files from env
rm( "x_subject_test", "x_subject_train","x_test","x_train","y_test","y_train", 
    "final_without_colnames", "test_with_activity_id", "test_with_suject_id", 
    "train_with_activity_id", "train_with_subject_id", "i", "subset_mean", "subset_std",
    "select_means", "features",  "labels")

# find mean of each variable for each activity and each subject
final_mean_df <- data.frame()
for(i in 1:30){        
filtered <- filter((tidy_data), subject == i)
temp <- as.data.table(filtered)[, lapply(.SD, mean), by=activity]
final_mean_df <- rbind(final_mean_df, temp)
}
#Clean column names and make it descriptive and lower case
bad_colnames <- names(final_mean_df)
bad_colnames <- gsub("^t", "time", bad_colnames)
bad_colnames <- gsub("^f", "freequency", bad_colnames)
bad_colnames <- gsub("std", "standarddeviation", bad_colnames)
bad_colnames <- gsub("Acc", "acceleration", bad_colnames)
bad_colnames <- gsub("Gyro", "gyroscope", bad_colnames)
bad_colnames <- gsub(",", "", bad_colnames)
bad_colnames <- gsub(",", "", bad_colnames)
bad_colnames <- gsub("[\\()]", "", bad_colnames)
bad_colnames <- gsub("-", "", bad_colnames)
bad_colnames <- tolower(bad_colnames)
setnames(final_mean_df, names(final_mean_df), bad_colnames)
#Re-arranging the columns
subject <- final_mean_df[,2, with = F]
mean_without_sub <- final_mean_df[,-2, with = F]
final_mean_df <- cbind(subject, mean_without_sub)
#remove unwanted intermediate files
rm("filtered", "mean_without_sub" , "subject", "temp", "bad_colnames","i")
View(final_mean_df)
write.table(final_mean_df, file = "tidy_data.txt", row.names = F)



