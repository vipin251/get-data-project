## Project Description
The project uses the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Unzipp the file and read the readme.txt file to know in detail how raw data is generated. *This project aims to merge the test and train data sets and select only features containing mean and standard deviation from 561 availbale features, make it tidy according to Hadley Wickham's tidy data principles, add descriptive variable names and activity labesl, creates a second, independent tidy data set with the average of each variable for each activity and each subject*


##Study design and data processing
 
###Collection of the raw data 
Please read the readme.txt available at the above link for more detailed description. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, data generated for 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz _(Copied from the readme.txt file from tha above link)_ 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
 

 
###Guide to create the tidy data file
* Download the data 
* Unzipp the files to your working direcotry
* Run the r script run_analysis.R
 
###Cleaning of the data
The run_analysis merges training and test data and creates a second, independent tidy data set with the average of each variable for each activity and each subject. Please read the README.md available at the below link for more detailed description of the cleaning and merging process
 [https://github.com/vipin251/get-data-project/blob/master/README.md]()
 
##Description of the variables in the tidy_data.txt file
 - Dimensions of the dataset : 180 x 88
 - Summary of variables 
 - 
 
###Variable 1 (repeat this section for all variables in the dataset)
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

##Sources
1. http://vita.had.co.nz/papers/tidy-data.pdf
2. https://class.coursera.org/getdata-013/forum/thread?thread_id=30
3. https://class.coursera.org/getdata-013/forum/thread?thread_id=31

Variables in the final_mean_df tidy data set

Variables from 3 to 84 start with time or freequency and ends with x, y or z

1. subject
2. activity
3. timebodyaccelerationmeanx
4. timebodyaccelerationmeany
5. timebodyaccelerationmeanz
6. timegravityaccelerationmeanx
7. timegravityaccelerationmeany
8. timegravityaccelerationmeanz
9. timebodyaccelerationjerkmeanx
10. timebodyaccelerationjerkmeany
11. timebodyaccelerationjerkmeanz
12. timebodygyroscopemeanx
13. timebodygyroscopemeany
14. timebodygyroscopemeanz
15. timebodygyroscopejerkmeanx
16. timebodygyroscopejerkmeany
17 timebodygyroscopejerkmeanz
18 timebodyaccelerationmagmean
19 timegravityaccelerationmagmean
20 timebodyaccelerationjerkmagmean
21 timebodygyroscopemagmean
22 timebodygyroscopejerkmagmean
23 freequencybodyaccelerationmeanx
24 freequencybodyaccelerationmeany
25 freequencybodyaccelerationmeanz
26 freequencybodyaccelerationmeanfreqx
27 freequencybodyaccelerationmeanfreqy
28 freequencybodyaccelerationmeanfreqz
29 freequencybodyaccelerationjerkmeanx
30 freequencybodyaccelerationjerkmeany
31 freequencybodyaccelerationjerkmeanz
32 freequencybodyaccelerationjerkmeanfreqx
33 freequencybodyaccelerationjerkmeanfreqy
34 freequencybodyaccelerationjerkmeanfreqz
35 freequencybodygyroscopemeanx
36 freequencybodygyroscopemeany
37 freequencybodygyroscopemeanz
38 freequencybodygyroscopemeanfreqx
39 freequencybodygyroscopemeanfreqy
40 freequencybodygyroscopemeanfreqz
41 freequencybodyaccelerationmagmean
42 freequencybodyaccelerationmagmeanfreq
43 freequencybodybodyaccelerationjerkmagmean
44 freequencybodybodyaccelerationjerkmagmeanfreq
45 freequencybodybodygyroscopemagmean
46 freequencybodybodygyroscopemagmeanfreq
47 freequencybodybodygyroscopejerkmagmean
48 freequencybodybodygyroscopejerkmagmeanfreq
49 timebodyaccelerationstandarddeviationx
50 timebodyaccelerationstandarddeviationy
51 timebodyaccelerationstandarddeviationz
52 timegravityaccelerationstandarddeviationx
53 timegravityaccelerationstandarddeviationy
54 timegravityaccelerationstandarddeviationz
55 timebodyaccelerationjerkstandarddeviationx
56 timebodyaccelerationjerkstandarddeviationy
57 timebodyaccelerationjerkstandarddeviationz
58 timebodygyroscopestandarddeviationx
59 timebodygyroscopestandarddeviationy
60 timebodygyroscopestandarddeviationz
61 timebodygyroscopejerkstandarddeviationx
62 timebodygyroscopejerkstandarddeviationy
63 timebodygyroscopejerkstandarddeviationz
64 timebodyaccelerationmagstandarddeviation
65 timegravityaccelerationmagstandarddeviation
66 timebodyaccelerationjerkmagstandarddeviation
67 timebodygyroscopemagstandarddeviation
68 timebodygyroscopejerkmagstandarddeviation
69 freequencybodyaccelerationstandarddeviationx
70 freequencybodyaccelerationstandarddeviationy
71 freequencybodyaccelerationstandarddeviationz
72 freequencybodyaccelerationjerkstandarddeviationx
73 freequencybodyaccelerationjerkstandarddeviationy
74 freequencybodyaccelerationjerkstandarddeviationz
75 freequencybodygyroscopestandarddeviationx
76 freequencybodygyroscopestandarddeviationy
77 freequencybodygyroscopestandarddeviationz
78 freequencybodyaccelerationmagstandarddeviation
79 freequencybodybodyaccelerationjerkmagstandarddeviation 80 freequencybodybodygyroscopemagstandarddeviation
81 freequencybodybodygyroscopejerkmagstandarddeviation 
