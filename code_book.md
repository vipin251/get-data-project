## Project Description
The project uses the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Unzipp the file and read the readme.txt file to know in detail how raw data is generated. *This project aims to merge the test and train data sets and select only features containing mean and standard deviation from 561 availbale features, make it tidy according to Hadley Wickham's tidy data principles( Ref No. 2:List given at the bottom of this code book), add descriptive variable names and activity labesl, creates a second, independent tidy data set with the average of each variable for each activity and each subject*


## Study design and data processing
 
### Collection of the raw data 
Please read the readme.txt available at the above link for more detailed description. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, data generated for 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz _(Copied from the readme.txt file from tha above link)_.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. _(Copied from the readme.txt file from tha above link)_ .

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
 

 
### Guide to create the tidy data file
* Download the data 
* Unzipp the files to your working direcotry
* Copy the features.txt, activity_labels.txt and files in the test and train folders (files in the inertia folders are not required) in to your working directory
* Run the r script run_analysis.R
 
### Cleaning of the data
The run_analysis.R merges training and test data and creates a second, independent tidy data set with the average of each variable for each activity and each subject. Please read the README.md available at the below link for more detailed description of the cleaning and merging process
 [https://github.com/vipin251/get-data-project/blob/master/README.md]()
 
## Description of the variables in the tidy_data.txt file
 - Dimensions of the dataset : 180 x 88
 - Summary of variables 
 - 
 
### Variable 1 (repeat this section for all variables in the dataset)
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

### Variables in the tidy_data_means/ tidy_data.txt set
1. subject
 * contains the id of the person performed the taskes. Value varies from 1 to 30. Each subject performed six activities
  * Class of the variable: Integer
2. activiy
 * Contains the activity label performed by the subject. 
 * There are six levels STANDING, SITTING, LAYING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS. 
 * Class: Factors
3. TimeBodyAccelerationMeanX
 * Contains the mean of time domain of body acceleration mean along X axis
 * Class: numeric
4. TimeBodyAccelerationMeanY
 * Contains the mean of time domain of body acceleration mean along Y axis
 * Class: numeric
5. TimeBodyAccelerationMeanZ
 * Contains the mean of time domain of body acceleration mean along X axis
 * Class: numeric
6. TimeBodyAccelerationStandardDeviationX
 * Contains the mean of time domain body acceleration stadard deviation along X axis
 * Class: numeric
7. TimeBodyAccelerationStandardDeviationY
 * Contains the mean of time domain body acceleration stadard deviation along Y axis
 * Class: numeric
8. TimeBodyAccelerationStandardDeviationZ
 * Contains the mean of time domain body acceleration stadard deviation along Z axis
 * Class: numeric
9. TimeGravityAccelerationMeanX  
 * Contains mean of time domain of gravity acceleration mean along X axis
 * Class: numeric
10. TimeGravityAccelerationMeanY 
 * Contains mean of time domain of gravity acceleration mean along Y axis
 * Class: numeric
11. TimeGravityAccelerationMeanZ 
 * Contains mean of time domain of gravity acceleration mean along Z axis
 * Class: numeric
12. TimeGravityAccelerationStandardDeviationX
 * Contains the mean of time domain of gravity acceleration standard deviation along X axis
 * Class: numeric
13. TimeGravityAccelerationStandardDeviationY 
 * Contains the mean of time domain of gravity acceleration standard deviation along Y axis
 * Class: numeric
14. TimeGravityAccelerationStandardDeviationZ
 * Contains the mean of time domain of gravity acceleration standard deviation along Z axis
 * Class: numeric
15. TimeBodyAccelerationJerkMeanX
 * Contains the mean of time domain of body acceleration jerk mean along X axis
 * Class: numeric
16. TimeBodyAccelerationJerkMeanY
 * Contains the mean of time domain of body acceleration jerk mean along Y axis
 * Class: numeric
17. TimeBodyAccelerationJerkMeanZ
 * Contains the mean of time domain of body acceleration jerk mean along Z axis
 * Class: numeric
18. TimeBodyAccelerationJerkStandardDeviationX
 * Contains the mean of time domain body acceleration jerk standard deviation along X axis
 * class: numeric
19. TimeBodyAccelerationJerkStandardDeviationY
 * Contains the mean of time domain body acceleration jerk standard deviation along Y axis
 * class: numeric
20. TimeBodyAccelerationJerkStandardDeviationZ
 * Contains the mean of time domain body acceleration jerk standard deviation along Y axis
 * class: numeric
21. TimeBodyGyroscopeMeanX
 * Contains the mean of time domain of body mean angular velocity from gyroscope along X axis
 * class: numeric
22. TimeBodyGyroscopeMeanY 
 * Contains the mean of time domain of body mean angular velocity from gyroscope along Y axis
 * class: numeric
23. TimeBodyGyroscopeMeanZ
 * Contains the mean of time domain of body mean angular velocity from gyroscope along Z axis
 * class: numeric
24. TimeBodyGyroscopeStandardDeviationX
 * Contains the mean of time domain of body stadard deviation of  angular velocity from gyroscope along X axis
 * class: numeric
25. TimeBodyGyroscopeStandardDeviationY
 * Contains the mean of time domain of body stadard deviation of  angular velocity from gyroscope along Y axis
 * class: numeric
26. TimeBodyGyroscopeStandardDeviationZ
 * Contains the mean of time domain of body stadard deviation of  angular velocity from gyroscope along Z axis
 * class: numeric
27. TimeBodyGyroscopeJerkMeanX
 * Contains the mean of time domain of angular velocity jerk signal mean along X axis
 * Class: numeric
28. TimeBodyGyroscopeJerkMeanY
 * Contains the mean of time domain of angular velocity jerk signal mean along Y axis
 * Class: numeric
29. TimeBodyGyroscopeJerkMeanZ
 * Contains the mean of time domain of angular velocity jerk signal mean along Z axis
 * Class: numeric
30. TimeBodyGyroscopeJerkStandardDeviationX
 * Contains the mean of time domain of angular velocity jerk signal standard deviation along X axis
 * Class: numeric
31. TimeBodyGyroscopeJerkStandardDeviationY
 * Contains the mean of time domain of angular velocity jerk signal mean along Y axis
 * Class: numeric
32. TimeBodyGyroscopeJerkStandardDeviationZ
 * Contains the mean of time domain of angular velocity jerk signal mean along Z axis
 * Class: numeric
33. TimeBodyAccelerationMagnitudeMean
 * Contaians the mean of time domain of body mean acceleration magnitude
 * Class: numeric
34. TimeBodyAccelerationMagnitudeStandardDeviation
 * Contaians the mean of time domain of body  acceleration magnitude standard deviation
 * Class: numeric 
35. TimeGravityAccelerationMagnitudeMean
 * Contains the mean of time domain of mean gravity acceleration
 * Class: numeric
36. TimeGravityAccelerationMagnitudeStandardDeviation
 * Contains the mean of time domain of  gravity acceleration standard deviation
 * Class: numeric
37. TimeBodyAccelerationJerkMagnitudeMean
 * Contains the mean of time domain of body acceleration jerk signals magnitude mean
 * Class: numeric
38. TimeBodyAccelerationJerkMagnitudeStandardDeviation
 * Contains the mean of standard deviation of time domain of body acceleration jerk signals magnitude
 * Class: numeric
39. TimeBodyGyroscopeMagnitudeMean
 * Contains the mean of time domain body angular velocity magnitude mean
 * Class: numeric
40. TimeBodyGyroscopeMagnitudeStandardDeviation
 * Contains the mean of time domain of body angular velocity magnitude standard deviation
 * Class: numeric
41. TimeBodyGyroscopeJerkMagnitudeMean
 * Contains the mean of time domain body angular velocity jerk signals mean magnitude
 * Class: numeric
42. TimeBodyGyroscopeJerkMagnitudeStandardDeviation
 * Contains the mean of time domain of body angular velocity magnitude standard deviation
 * Class: numeric
43. FreequencyBodyAccelerationMeanX
 * Contains the mean of freequency domain of mean body acceleration along X axis
 * Class: numeric
44. FreequencyBodyAccelerationMeanY
 * Contains the mean of freequency domain of mean body acceleration along Y axis
 * Class: numeric
45. FreequencyBodyAccelerationMeanZ
 * Contains the mean of freequency domain of mean body acceleration along Z axis
 * Class: numeric
46. FreequencyBodyAccelerationStandardDeviationX
 * Contains the mean of freequency domain of body acceleration standard deviation along X axis
 * Class: numeric
47. FreequencyBodyAccelerationStandardDeviationY
 * Contains the mean of freequency domain of body acceleration standard deviation along Y axis
 * Class: numeric
48. FreequencyBodyAccelerationStandardDeviationZ
 * Contains the mean of freequency domain of body acceleration standard deviation along Z axis
 * Class: numeric
49. FreequencyBodyAccelerationMeanFreequencyX
 * Contains the mean of freequency domain of body acceleration  mean freequency along X axis
 * Class: numeric
50. FreequencyBodyAccelerationMeanFreequencyY
 * Contains the mean of freequency domain of body acceleration  mean freequency along Y axis
 * Class: numeric
51. FreequencyBodyAccelerationMeanFreequencyZ
 * Contains the mean of freequency domain of body acceleration  mean freequency along Z axis
 * Class: numeric
52. FreequencyBodyAccelerationJerkMeanX
 * Contains the mean of freequency domain of body acceleration  mean jerk signal along X axis
 * Class: numeric
53. FreequencyBodyAccelerationJerkMeanY
 * Contains the mean of freequency domain of body acceleration  mean jerk signal along Y axis
 * Class: numeric
54. FreequencyBodyAccelerationJerkMeanZ
 * Contains the mean of freequency domain of body acceleration  mean jerk signal along Z axis
 * Class: numeric
55. FreequencyBodyAccelerationJerkStandardDeviationX
 * Contains the mean of freequency domain of  body acceleration  jerk signal standard deviation along X axis
 * Class: numeric
56. FreequencyBodyAccelerationJerkStandardDeviationY
 * Contains the mean of freequency domain of body acceleration  jerk signal standard deviation along Y axis
 * Class: numeric
57. FreequencyBodyAccelerationJerkStandardDeviationZ
 * Contains the mean of freequency domain of body acceleration  jerk signal standard deviation along Z axis
 * Class: numeric
58. FreequencyBodyAccelerationJerkMeanFreequencyX
 * Contains the mean of freequency domain of body acceleration  jerk signal mean freequency along X axis
 * Class: numeric
59. FreequencyBodyAccelerationJerkMeanFreequencyY
 * Contains the mean of freequency domain of body acceleration  jerk signal mean freequency along Y axis
 * Class: numeric
60. FreequencyBodyAccelerationJerkMeanFreequencyZ
 * Contains the mean of freequency domain of body acceleration  jerk signal mean freequency along Z axis
 * Class: numeric
61. FreequencyBodyGyroscopeMeanX
 * Contains the mean of freequency domain of body angular velocity mean along X axis
 * Class: numeric
62. FreequencyBodyGyroscopeMeanY
* Contains the mean of freequency domain of body angular velocity mean along Y axis
 * Class: numeric
63. FreequencyBodyGyroscopeMeanZ
 * Contains the mean of freequency domain of body angular velocity mean along Z axis
 * Class: numeric
64. FreequencyBodyGyroscopeStandardDeviationX
 * Contains the mean of freequency domain of body angular velocity standard deviation along X axis
 * Class: numeric
65. FreequencyBodyGyroscopeStandardDeviationY
 * Contains the mean of freequency domain of body angular velocity standard deviation along Y axis
 * Class: numeric
66. FreequencyBodyGyroscopeStandardDeviationZ
 * Contains the mean of freequency domain of  body angular velocity standard deviation along Z axis
 * Class: numeric
67. FreequencyBodyGyroscopeMeanFreequencyX
 * Contains the mean of freequency domain of body angular velocity mean freequency along X axis
 * Class: numeric
68. FreequencyBodyGyroscopeMeanFreequencyY
 * Contains the mean of freequency domain of body angular velocity mean freequency along Y axis
 * Class: numeric
69. FreequencyBodyGyroscopeMeanFreequencyZ
 * Contains the mean of freequency domain of body angular velocity mean freequency along Z axis
 * Class: numeric
70. FreequencyBodyAccelerationMagnitudeMean
 * Contains the mean of freequency domain of body acceleration mean magnitude
 * Class: numeric
71. FreequencyBodyAccelerationMagnitudeStandardDeviation
 * Contains the mean of freequency domain of body acceleration magnitude standard deviation
 * Class: numeric
72. FreequencyBodyAccelerationMagnitudeMeanFreequency
 * Contains the mean of freequency domain of body acceleration mean freequency magnitude
 * Class: numeric
73. FreequencyBodyBodyAccelerationJerkMagnitudeMean
 * Contains the mean of freequency domain of body acceleration mean freequency magnitude
 * Class: numeric
74. FreequencyBodyBodyAccelerationJerkMagnitudeStandardDeviation
 * Contains the mean of freequency domain of body acceleration jerk signal magnitude standard deviation
 * Class: numeric
75. FreequencyBodyBodyAccelerationJerkMagnitudeMeanFreequency
 * Contains the mean of freequency domain of body acceleration jerk signal magnitude mean freequency
 * Class: numeric
76. FreequencyBodyBodyGyroscopeMagnitudeMean
 * Contains the mean of freequency domain of body angular velocity magnitude mean
 * Class: numeric
77. FreequencyBodyBodyGyroscopeMagnitudeStandardDeviation
 * Contains the mean of freequency domain of body angular velocity magnitude standard deviation
 * Class: numeric
78. FreequencyBodyBodyGyroscopeMagnitudeMeanFreequency 
 * Contains the mean of freequency domain of body angular velocity mean freequency magnitude
 * Class: numeric
79. FreequencyBodyBodyGyroscopeJerkMagnitudeMean 
 * Contains the mean of freequency domain of body angular velocity mean jerk signal magnitude
 * Class: numeric
80. FreequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation
 * Contains the mean of freequency domain of body angular velocity jerk signal magnitude standard deviation
 * Class: numeric
81. FreequencyBodyBodyGyroscopeJerkMagnitudeMeanFreequency
 * Contains the mean of freequency domain of body angular velocity jerk signal magnitude mean freequency
 * Class: numeric
82. AngleTimeBodyAccelerationMeanGravity
 * Contains the mean angle between time domain of body acceleraion mean and gravitational acceleration
 * Class: numeric
83. AngleTimeBodyAccelerationJerkMeanGravityMean
 * Contains the mean angle between time domain of body acceleraion mean and gravitational acceleration mean
 * Class: numeric
84. AngleTimeBodyGyroscopeMeanGravityMean
 * Contains the mean angle between time domain of body angular velocity mean and gravitational acceleration mean
 * Class: numeric
85. AngleTimeBodyGyroscopeJerkMeanGravityMean
 * Contains the mean angle between time domain of body angular velocity mean jerk signal  and gravitational acceleration mean
 * Class: numeric
86. AngleXGravityMean 
 * Contains the mean angle between X axis and gravitational acceleration mean
 * Class: numeric
87. AngleYGravityMean
 * Contains the mean angle between Y axis and gravitational acceleration mean
 * Class: numeric
88. AngleZGravityMean
 * Contains the mean angle between Z axis and gravitational acceleration mean
 * Class: numeric


## Sources
1. http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. http://vita.had.co.nz/papers/tidy-data.pdf
3. https://class.coursera.org/getdata-013/forum/thread?thread_id=30
4. https://class.coursera.org/getdata-013/forum/thread?thread_id=31
5. http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml#identifiers
