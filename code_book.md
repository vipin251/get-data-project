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
* Copy the features.txt, activity_labels.txt and files in the test and train folders (files in the inertia folders are not required) in to your working directory
* Run the r script run_analysis.R
 
###Cleaning of the data
The run_analysis.R merges training and test data and creates a second, independent tidy data set with the average of each variable for each activity and each subject. Please read the README.md available at the below link for more detailed description of the cleaning and merging process
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

Variables in the final_mean_df tidy data set

Variables from 3 to 84 start with time or freequency and ends with x, y or z

1. subject
2. activity
3. TimeBodyAccelerationMeanX
4. TimeBodyAccelerationMeanY
5. TimeBodyAccelerationMeanZ
6. TimeGravityAccelerationMeanX
7. TimeGravityAccelerationMeanY
8. TimeGravityAccelerationMeanZ
9. TimeBodyAccelerationJerkMeanX
10. TimeBodyAccelerationJerkMeanY
11. TimeBodyAccelerationJerkMeanZ
12. TimeBodygyroscopeMeanX
13. TimeBodygyroscopeMeanY
14. TimeBodygyroscopeMeanZ
15. TimeBodygyroscopeJerkMeanX
16. TimeBodygyroscopeJerkMeanY
17. TimeBodygyroscopeJerkMeanZ
18. TimeBodyAccelerationMagnitudeMean
19. TimeGravityAccelerationMagnitudeMean
20. TimeBodyAccelerationJerkMagnitudeMean
21. TimeBodygyroscopeMagnitudeMean
22. TimeBodygyroscopeJerkMagnitudeMean
23. FreequencyBodyAccelerationMeanX
24. FreequencyBodyAccelerationMeanY
25. FreequencyBodyAccelerationMeanZ
26. FreequencyBodyAccelerationMeanFreequencyX
27. FreequencyBodyAccelerationMeanFreequencyy
28. FreequencyBodyAccelerationMeanFreequencyZ
29. FreequencyBodyAccelerationJerkMeanX
30. FreequencyBodyAccelerationJerkMeanY
31. FreequencyBodyAccelerationJerkMeanZ
32. FreequencyBodyAccelerationJerkMeanFreequencyX
33. FreequencyBodyAccelerationJerkMeanFreequencyy
34. FreequencyBodyAccelerationJerkMeanFreequencyZ
35. FreequencyBodygyroscopeMeanX
36. FreequencyBodygyroscopeMeanY
37. FreequencyBodygyroscopeMeanZ
38. FreequencyBodygyroscopeMeanFreequencyX
39. FreequencyBodygyroscopeMeanFreequencyy
40. FreequencyBodygyroscopeMeanFreequencyZ
41. FreequencyBodyAccelerationMagnitudeMean
42. FreequencyBodyAccelerationMagnitudeMeanFreequency
43. FreequencyBodyBodyAccelerationJerkMagnitudeMean
44. FreequencyBodyBodyAccelerationJerkMagnitudeMeanFreequency
45. FreequencyBodyBodygyroscopeMagnitudeMean
46. FreequencyBodyBodygyroscopeMagnitudeMeanFreequency
47. FreequencyBodyBodygyroscopeJerkMagnitudeMean
48. FreequencyBodyBodygyroscopeJerkMagnitudeMeanFreequency
49. TimeBodyAccelerationStandardDeviationX
50. TimeBodyAccelerationStandardDeviationY
51. TimeBodyAccelerationStandardDeviationZ
52. TimeGravityAccelerationStandardDeviationX
53. TimeGravityAccelerationStandardDeviationY
54. TimeGravityAccelerationStandardDeviationZ
55. TimeBodyAccelerationJerkStandardDeviationX
56. TimeBodyAccelerationJerkStandardDeviationY
57. TimeBodyAccelerationJerkStandardDeviationZ
58. TimeBodygyroscopeStandardDeviationX
59. TimeBodygyroscopeStandardDeviationY
60. TimeBodygyroscopeStandardDeviationZ
61. TimeBodygyroscopeJerkStandardDeviationX
62. TimeBodygyroscopeJerkStandardDeviationY
63. TimeBodygyroscopeJerkStandardDeviationZ
64. TimeBodyAccelerationMagnitudeStandardDeviation
65. TimeGravityAccelerationMagnitudeStandardDeviation
66. TimeBodyAccelerationJerkMagnitudeStandardDeviation
67. TimeBodygyroscopeMagnitudeStandardDeviation
68. TimeBodygyroscopeJerkMagnitudeStandardDeviation
69. FreequencyBodyAccelerationStandardDeviationX
70. FreequencyBodyAccelerationStandardDeviationY
71. FreequencyBodyAccelerationStandardDeviationZ
72. FreequencyBodyAccelerationJerkStandardDeviationX
73. FreequencyBodyAccelerationJerkStandardDeviationY
74. FreequencyBodyAccelerationJerkStandardDeviationZ
75. FreequencyBodygyroscopeStandardDeviationX
76. FreequencyBodygyroscopeStandardDeviationY
77. FreequencyBodygyroscopeStandardDeviationZ
78. FreequencyBodyAccelerationMagnitudeStandardDeviation
79. FreequencyBodyBodyAccelerationJerkMagnitudeStandardDeviation 
80. FreequencyBodyBodygyroscopeMagnitudeStandardDeviation
81. FreequencyBodyBodygyroscopeJerkMagnitudeStandardDeviation 

## Sources
1. http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. http://vita.had.co.nz/papers/tidy-data.pdf
3. https://class.coursera.org/getdata-013/forum/thread?thread_id=30
4. https://class.coursera.org/getdata-013/forum/thread?thread_id=31
5. http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml#identifiers
