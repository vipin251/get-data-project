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

### Variables in the final_mean_df tidy data set

Variables from 3 to 84 start with time or freequency and ends with x, y or z


1. subject
2. activiy
3. TimeBodyAccelerationMeanX                                   
4. TimeBodyAccelerationMeanY                                   
5. TimeBodyAccelerationMeanZ                                   
6. TimeBodyAccelerationStandardDeviationX                      
7. TimeBodyAccelerationStandardDeviationY                      
8. TimeBodyAccelerationStandardDeviationZ
9. TimeGravityAccelerationMeanX                                
10. TimeGravityAccelerationMeanY                                
11. TimeGravityAccelerationMeanZ                                
12. TimeGravityAccelerationStandardDeviationX                   
13. TimeGravityAccelerationStandardDeviationY                   
14. TimeGravityAccelerationStandardDeviationZ                   
15. TimeBodyAccelerationJerkMeanX                               
16. TimeBodyAccelerationJerkMeanY                               
17. TimeBodyAccelerationJerkMeanZ                               
18. TimeBodyAccelerationJerkStandardDeviationX                  
19. TimeBodyAccelerationJerkStandardDeviationY                  
20. TimeBodyAccelerationJerkStandardDeviationZ                  
21. TimeBodyGyroscopeMeanX                                      
22. TimeBodyGyroscopeMeanY                                      
23. TimeBodyGyroscopeMeanZ                                      
24. TimeBodyGyroscopeStandardDeviationX                         
25. TimeBodyGyroscopeStandardDeviationY                         
26. TimeBodyGyroscopeStandardDeviationZ                         
27. TimeBodyGyroscopeJerkMeanX                                  
28. TimeBodyGyroscopeJerkMeanY                                  
29. TimeBodyGyroscopeJerkMeanZ                                  
30. TimeBodyGyroscopeJerkStandardDeviationX                     
31. TimeBodyGyroscopeJerkStandardDeviationY                     
32. TimeBodyGyroscopeJerkStandardDeviationZ                     
33. TimeBodyAccelerationMagnitudeMean                           
34. TimeBodyAccelerationMagnitudeStandardDeviation              
35. TimeGravityAccelerationMagnitudeMean                        
36. TimeGravityAccelerationMagnitudeStandardDeviation           
37. TimeBodyAccelerationJerkMagnitudeMean                       
38. TimeBodyAccelerationJerkMagnitudeStandardDeviation          
39. TimeBodyGyroscopeMagnitudeMean                              
40. TimeBodyGyroscopeMagnitudeStandardDeviation                 
41. TimeBodyGyroscopeJerkMagnitudeMean                          
42. TimeBodyGyroscopeJerkMagnitudeStandardDeviation             
43. FreequencyBodyAccelerationMeanX                             
44. FreequencyBodyAccelerationMeanY                             
45. FreequencyBodyAccelerationMeanZ                             
46. FreequencyBodyAccelerationStandardDeviationX                
47. FreequencyBodyAccelerationStandardDeviationY                
48. FreequencyBodyAccelerationStandardDeviationZ                
49. FreequencyBodyAccelerationMeanFreequencyX                   
50. FreequencyBodyAccelerationMeanFreequencyY                   
51. FreequencyBodyAccelerationMeanFreequencyZ                   
52. FreequencyBodyAccelerationJerkMeanX                         
53. FreequencyBodyAccelerationJerkMeanY                         
54. FreequencyBodyAccelerationJerkMeanZ                         
55. FreequencyBodyAccelerationJerkStandardDeviationX            
56. FreequencyBodyAccelerationJerkStandardDeviationY            
57. FreequencyBodyAccelerationJerkStandardDeviationZ            
58. FreequencyBodyAccelerationJerkMeanFreequencyX               
59. FreequencyBodyAccelerationJerkMeanFreequencyY               
60. FreequencyBodyAccelerationJerkMeanFreequencyZ               
61. FreequencyBodyGyroscopeMeanX                                
62. FreequencyBodyGyroscopeMeanY                                
63. FreequencyBodyGyroscopeMeanZ                                
64. FreequencyBodyGyroscopeStandardDeviationX                   
65. FreequencyBodyGyroscopeStandardDeviationY                   
66. FreequencyBodyGyroscopeStandardDeviationZ                   
67. FreequencyBodyGyroscopeMeanFreequencyX                      
68. FreequencyBodyGyroscopeMeanFreequencyY                      
69. FreequencyBodyGyroscopeMeanFreequencyZ                      
70. FreequencyBodyAccelerationMagnitudeMean                     
71. FreequencyBodyAccelerationMagnitudeStandardDeviation        
72. FreequencyBodyAccelerationMagnitudeMeanFreequency           
73. FreequencyBodyBodyAccelerationJerkMagnitudeMean             
74. FreequencyBodyBodyAccelerationJerkMagnitudeStandardDeviation
75. FreequencyBodyBodyAccelerationJerkMagnitudeMeanFreequency   
76. FreequencyBodyBodyGyroscopeMagnitudeMean                    
77. FreequencyBodyBodyGyroscopeMagnitudeStandardDeviation       
78. FreequencyBodyBodyGyroscopeMagnitudeMeanFreequency          
79. FreequencyBodyBodyGyroscopeJerkMagnitudeMean                
80. FreequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation   
81. FreequencyBodyBodyGyroscopeJerkMagnitudeMeanFreequency      
82. AngleTimeBodyAccelerationMeanGravity                        
83. AngleTimeBodyAccelerationJerkMeanGravityMean                
84. AngleTimeBodyGyroscopeMeanGravityMean                       
85. AngleTimeBodyGyroscopeJerkMeanGravityMean                   
86. AngleXGravityMean                                           
87. AngleYGravityMean                                           
88. AngleZGravityMean
Final version unmodified

## Sources
1. http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. http://vita.had.co.nz/papers/tidy-data.pdf
3. https://class.coursera.org/getdata-013/forum/thread?thread_id=30
4. https://class.coursera.org/getdata-013/forum/thread?thread_id=31
5. http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml#identifiers
