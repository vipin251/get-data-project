## Project Description
The project uses the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Unzipp the file and read the readme.txt file to know in detail how raw data is generated. *This project aims to merge the test and train data sets and select only features containing mean and standard deviation from 561 availbale features, make it tidy according to Hadley Wickham's tidy data principles, add descriptive variable names and activity labesl, creates a second, independent tidy data set with the average of each variable for each activity and each subject*


##Study design and data processing
 
###Collection of the raw data 
Please read the readme.txt available at the above link for more detailed description. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, data generated for 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz _(Copied from the readme.txt file from tha above link)_ 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
 
##Creating the tidy datafile
 
###Guide to create the tidy data file
* Download the data 
* Unzipp the files to your working direcotry
* Run the r script run_analysis.R
 
###Cleaning of the data
The run_analysis merges training and test data and creates a second, independent tidy data set with the average of each variable for each activity and each subject. Please read the README.md available at the below link for more detailed description of the cleaning and merging process
 [https://github.com/vipin251/get-data-project/blob/master/README.md]()
 
##Description of the variables in the tidy_data.txt file
General description of the file including:
 - Dimensions of the dataset : 180 x 88
 - Summary of variables 
 -  subject                   activity  timebodyaccelerationmeanx timebodyaccelerationmeany
 Min.   : 1.0   LAYING            :30   Min.   :0.2216            Min.   :-0.040514        
 1st Qu.: 8.0   SITTING           :30   1st Qu.:0.2712            1st Qu.:-0.020022        
 Median :15.5   STANDING          :30   Median :0.2770            Median :-0.017262        
 Mean   :15.5   WALKING           :30   Mean   :0.2743            Mean   :-0.017876        
 3rd Qu.:23.0   WALKING_DOWNSTAIRS:30   3rd Qu.:0.2800            3rd Qu.:-0.014936        
 Max.   :30.0   WALKING_UPSTAIRS  :30   Max.   :0.3015            Max.   :-0.001308        
 timebodyaccelerationmeanz timebodyaccelerationstandarddeviationx
 Min.   :-0.15251          Min.   :-0.9961                       
 1st Qu.:-0.11207          1st Qu.:-0.9799                       
 Median :-0.10819          Median :-0.7526                       
 Mean   :-0.10916          Mean   :-0.5577                       
 3rd Qu.:-0.10443          3rd Qu.:-0.1984                       
 Max.   :-0.07538          Max.   : 0.6269                       
 timebodyaccelerationstandarddeviationy timebodyaccelerationstandarddeviationz
 Min.   :-0.99024                       Min.   :-0.9877                       
 1st Qu.:-0.94205                       1st Qu.:-0.9498                       
 Median :-0.50897                       Median :-0.6518                       
 Mean   :-0.46046                       Mean   :-0.5756                       
 3rd Qu.:-0.03077                       3rd Qu.:-0.2306                       
 Max.   : 0.61694                       Max.   : 0.6090                       
 timegravityaccelerationmeanx timegravityaccelerationmeany timegravityaccelerationmeanz
 Min.   :-0.6800              Min.   :-0.47989             Min.   :-0.49509            
 1st Qu.: 0.8376              1st Qu.:-0.23319             1st Qu.:-0.11726            
 Median : 0.9208              Median :-0.12782             Median : 0.02384            
 Mean   : 0.6975              Mean   :-0.01621             Mean   : 0.07413            
 3rd Qu.: 0.9425              3rd Qu.: 0.08773             3rd Qu.: 0.14946            
 Max.   : 0.9745              Max.   : 0.95659             Max.   : 0.95787            
 timegravityaccelerationstandarddeviationx timegravityaccelerationstandarddeviationy
 Min.   :-0.9968                           Min.   :-0.9942                          
 1st Qu.:-0.9825                           1st Qu.:-0.9711                          
 Median :-0.9695                           Median :-0.9590                          
 Mean   :-0.9638                           Mean   :-0.9524                          
 3rd Qu.:-0.9509                           3rd Qu.:-0.9370                          
 Max.   :-0.8296                           Max.   :-0.6436                          
 timegravityaccelerationstandarddeviationz timebodyaccelerationjerkmeanx
 Min.   :-0.9910                           Min.   :0.04269              
 1st Qu.:-0.9605                           1st Qu.:0.07396              
 Median :-0.9450                           Median :0.07640              
 Mean   :-0.9364                           Mean   :0.07947              
 3rd Qu.:-0.9180                           3rd Qu.:0.08330              
 Max.   :-0.6102                           Max.   :0.13019              
 timebodyaccelerationjerkmeany timebodyaccelerationjerkmeanz
 Min.   :-0.0386872            Min.   :-0.067458            
 1st Qu.: 0.0004664            1st Qu.:-0.010601            
 Median : 0.0094698            Median :-0.003861            
 Mean   : 0.0075652            Mean   :-0.004953            
 3rd Qu.: 0.0134008            3rd Qu.: 0.001958            
 Max.   : 0.0568186            Max.   : 0.038053            
 timebodyaccelerationjerkstandarddeviationx timebodyaccelerationjerkstandarddeviationy
 Min.   :-0.9946                            Min.   :-0.9895                           
 1st Qu.:-0.9832                            1st Qu.:-0.9724                           
 Median :-0.8104                            Median :-0.7756                           
 Mean   :-0.5949                            Mean   :-0.5654                           
 3rd Qu.:-0.2233                            3rd Qu.:-0.1483                           
 Max.   : 0.5443                            Max.   : 0.3553                           
 timebodyaccelerationjerkstandarddeviationz timebodygyroscopemeanx timebodygyroscopemeany
 Min.   :-0.99329                           Min.   :-0.20578       Min.   :-0.20421      
 1st Qu.:-0.98266                           1st Qu.:-0.04712       1st Qu.:-0.08955      
 Median :-0.88366                           Median :-0.02871       Median :-0.07318      
 Mean   :-0.73596                           Mean   :-0.03244       Mean   :-0.07426      
 3rd Qu.:-0.51212                           3rd Qu.:-0.01676       3rd Qu.:-0.06113      
 Max.   : 0.03102                           Max.   : 0.19270       Max.   : 0.02747      
 timebodygyroscopemeanz timebodygyroscopestandarddeviationx timebodygyroscopestandarddeviationy
 Min.   :-0.07245       Min.   :-0.9943                     Min.   :-0.9942                    
 1st Qu.: 0.07475       1st Qu.:-0.9735                     1st Qu.:-0.9629                    
 Median : 0.08512       Median :-0.7890                     Median :-0.8017                    
 Mean   : 0.08744       Mean   :-0.6916                     Mean   :-0.6533                    
 3rd Qu.: 0.10177       3rd Qu.:-0.4414                     3rd Qu.:-0.4196                    
 Max.   : 0.17910       Max.   : 0.2677                     Max.   : 0.4765                    
 timebodygyroscopestandarddeviationz timebodygyroscopejerkmeanx timebodygyroscopejerkmeany
 Min.   :-0.9855                     Min.   :-0.15721           Min.   :-0.07681          
 1st Qu.:-0.9609                     1st Qu.:-0.10322           1st Qu.:-0.04552          
 Median :-0.8010                     Median :-0.09868           Median :-0.04112          
 Mean   :-0.6164                     Mean   :-0.09606           Mean   :-0.04269          
 3rd Qu.:-0.3106                     3rd Qu.:-0.09110           3rd Qu.:-0.03842          
 Max.   : 0.5649                     Max.   :-0.02209           Max.   :-0.01320          
 timebodygyroscopejerkmeanz timebodygyroscopejerkstandarddeviationx
 Min.   :-0.092500          Min.   :-0.9965                        
 1st Qu.:-0.061725          1st Qu.:-0.9800                        
 Median :-0.053430          Median :-0.8396                        
 Mean   :-0.054802          Mean   :-0.7036                        
 3rd Qu.:-0.048985          3rd Qu.:-0.4629                        
 Max.   :-0.006941          Max.   : 0.1791                        
 timebodygyroscopejerkstandarddeviationy timebodygyroscopejerkstandarddeviationz
 Min.   :-0.9971                         Min.   :-0.9954                        
 1st Qu.:-0.9832                         1st Qu.:-0.9848                        
 Median :-0.8942                         Median :-0.8610                        
 Mean   :-0.7636                         Mean   :-0.7096                        
 3rd Qu.:-0.5861                         3rd Qu.:-0.4741                        
 Max.   : 0.2959                         Max.   : 0.1932                        
 timebodyaccelerationmagmean timebodyaccelerationmagstandarddeviation
 Min.   :-0.9865             Min.   :-0.9865                         
 1st Qu.:-0.9573             1st Qu.:-0.9430                         
 Median :-0.4829             Median :-0.6074                         
 Mean   :-0.4973             Mean   :-0.5439                         
 3rd Qu.:-0.0919             3rd Qu.:-0.2090                         
 Max.   : 0.6446             Max.   : 0.4284                         
 timegravityaccelerationmagmean timegravityaccelerationmagstandarddeviation
 Min.   :-0.9865                Min.   :-0.9865                            
 1st Qu.:-0.9573                1st Qu.:-0.9430                            
 Median :-0.4829                Median :-0.6074                            
 Mean   :-0.4973                Mean   :-0.5439                            
 3rd Qu.:-0.0919                3rd Qu.:-0.2090                            
 Max.   : 0.6446                Max.   : 0.4284                            
 timebodyaccelerationjerkmagmean timebodyaccelerationjerkmagstandarddeviation
 Min.   :-0.9928                 Min.   :-0.9946                             
 1st Qu.:-0.9807                 1st Qu.:-0.9765                             
 Median :-0.8168                 Median :-0.8014                             
 Mean   :-0.6079                 Mean   :-0.5842                             
 3rd Qu.:-0.2456                 3rd Qu.:-0.2173                             
 Max.   : 0.4345                 Max.   : 0.4506                             
 timebodygyroscopemagmean timebodygyroscopemagstandarddeviation timebodygyroscopejerkmagmean
 Min.   :-0.9807          Min.   :-0.9814                       Min.   :-0.99732            
 1st Qu.:-0.9461          1st Qu.:-0.9476                       1st Qu.:-0.98515            
 Median :-0.6551          Median :-0.7420                       Median :-0.86479            
 Mean   :-0.5652          Mean   :-0.6304                       Mean   :-0.73637            
 3rd Qu.:-0.2159          3rd Qu.:-0.3602                       3rd Qu.:-0.51186            
 Max.   : 0.4180          Max.   : 0.3000                       Max.   : 0.08758            
 timebodygyroscopejerkmagstandarddeviation freequencybodyaccelerationmeanx
 Min.   :-0.9977                           Min.   :-0.9952                
 1st Qu.:-0.9805                           1st Qu.:-0.9787                
 Median :-0.8809                           Median :-0.7691                
 Mean   :-0.7550                           Mean   :-0.5758                
 3rd Qu.:-0.5767                           3rd Qu.:-0.2174                
 Max.   : 0.2502                           Max.   : 0.5370                
 freequencybodyaccelerationmeany freequencybodyaccelerationmeanz
 Min.   :-0.98903                Min.   :-0.9895                
 1st Qu.:-0.95361                1st Qu.:-0.9619                
 Median :-0.59498                Median :-0.7236                
 Mean   :-0.48873                Mean   :-0.6297                
 3rd Qu.:-0.06341                3rd Qu.:-0.3183                
 Max.   : 0.52419                Max.   : 0.2807                
 freequencybodyaccelerationstandarddeviationx freequencybodyaccelerationstandarddeviationy
 Min.   :-0.9966                              Min.   :-0.99068                            
 1st Qu.:-0.9820                              1st Qu.:-0.94042                            
 Median :-0.7470                              Median :-0.51338                            
 Mean   :-0.5522                              Mean   :-0.48148                            
 3rd Qu.:-0.1966                              3rd Qu.:-0.07913                            
 Max.   : 0.6585                              Max.   : 0.56019                            
 freequencybodyaccelerationstandarddeviationz freequencybodyaccelerationmeanfreqx
 Min.   :-0.9872                              Min.   :-0.63591                   
 1st Qu.:-0.9459                              1st Qu.:-0.39165                   
 Median :-0.6441                              Median :-0.25731                   
 Mean   :-0.5824                              Mean   :-0.23227                   
 3rd Qu.:-0.2655                              3rd Qu.:-0.06105                   
 Max.   : 0.6871                              Max.   : 0.15912                   
 freequencybodyaccelerationmeanfreqy freequencybodyaccelerationmeanfreqz
 Min.   :-0.379518                   Min.   :-0.52011                   
 1st Qu.:-0.081314                   1st Qu.:-0.03629                   
 Median : 0.007855                   Median : 0.06582                   
 Mean   : 0.011529                   Mean   : 0.04372                   
 3rd Qu.: 0.086281                   3rd Qu.: 0.17542                   
 Max.   : 0.466528                   Max.   : 0.40253                   
 freequencybodyaccelerationjerkmeanx freequencybodyaccelerationjerkmeany
 Min.   :-0.9946                     Min.   :-0.9894                    
 1st Qu.:-0.9828                     1st Qu.:-0.9725                    
 Median :-0.8126                     Median :-0.7817                    
 Mean   :-0.6139                     Mean   :-0.5882                    
 3rd Qu.:-0.2820                     3rd Qu.:-0.1963                    
 Max.   : 0.4743                     Max.   : 0.2767                    
 freequencybodyaccelerationjerkmeanz freequencybodyaccelerationjerkstandarddeviationx
 Min.   :-0.9920                     Min.   :-0.9951                                 
 1st Qu.:-0.9796                     1st Qu.:-0.9847                                 
 Median :-0.8707                     Median :-0.8254                                 
 Mean   :-0.7144                     Mean   :-0.6121                                 
 3rd Qu.:-0.4697                     3rd Qu.:-0.2475                                 
 Max.   : 0.1578                     Max.   : 0.4768                                 
 freequencybodyaccelerationjerkstandarddeviationy freequencybodyaccelerationjerkstandarddeviationz
 Min.   :-0.9905                                  Min.   :-0.993108                               
 1st Qu.:-0.9737                                  1st Qu.:-0.983747                               
 Median :-0.7852                                  Median :-0.895121                               
 Mean   :-0.5707                                  Mean   :-0.756489                               
 3rd Qu.:-0.1685                                  3rd Qu.:-0.543787                               
 Max.   : 0.3498                                  Max.   :-0.006236                               
 freequencybodyaccelerationjerkmeanfreqx freequencybodyaccelerationjerkmeanfreqy
 Min.   :-0.57604                        Min.   :-0.60197                       
 1st Qu.:-0.28966                        1st Qu.:-0.39751                       
 Median :-0.06091                        Median :-0.23209                       
 Mean   :-0.06910                        Mean   :-0.22810                       
 3rd Qu.: 0.17660                        3rd Qu.:-0.04721                       
 Max.   : 0.33145                        Max.   : 0.19568                       
 freequencybodyaccelerationjerkmeanfreqz freequencybodygyroscopemeanx freequencybodygyroscopemeany
 Min.   :-0.62756                        Min.   :-0.9931              Min.   :-0.9940             
 1st Qu.:-0.30867                        1st Qu.:-0.9697              1st Qu.:-0.9700             
 Median :-0.09187                        Median :-0.7300              Median :-0.8141             
 Mean   :-0.13760                        Mean   :-0.6367              Mean   :-0.6767             
 3rd Qu.: 0.03858                        3rd Qu.:-0.3387              3rd Qu.:-0.4458             
 Max.   : 0.23011                        Max.   : 0.4750              Max.   : 0.3288             
 freequencybodygyroscopemeanz freequencybodygyroscopestandarddeviationx
 Min.   :-0.9860              Min.   :-0.9947                          
 1st Qu.:-0.9624              1st Qu.:-0.9750                          
 Median :-0.7909              Median :-0.8086                          
 Mean   :-0.6044              Mean   :-0.7110                          
 3rd Qu.:-0.2635              3rd Qu.:-0.4813                          
 Max.   : 0.4924              Max.   : 0.1966                          
 freequencybodygyroscopestandarddeviationy freequencybodygyroscopestandarddeviationz
 Min.   :-0.9944                           Min.   :-0.9867                          
 1st Qu.:-0.9602                           1st Qu.:-0.9643                          
 Median :-0.7964                           Median :-0.8224                          
 Mean   :-0.6454                           Mean   :-0.6577                          
 3rd Qu.:-0.4154                           3rd Qu.:-0.3916                          
 Max.   : 0.6462                           Max.   : 0.5225                          
 freequencybodygyroscopemeanfreqx freequencybodygyroscopemeanfreqy
 Min.   :-0.395770                Min.   :-0.66681                
 1st Qu.:-0.213363                1st Qu.:-0.29433                
 Median :-0.115527                Median :-0.15794                
 Mean   :-0.104551                Mean   :-0.16741                
 3rd Qu.: 0.002655                3rd Qu.:-0.04269                
 Max.   : 0.249209                Max.   : 0.27314                
 freequencybodygyroscopemeanfreqz freequencybodyaccelerationmagmean
 Min.   :-0.50749                 Min.   :-0.9868                  
 1st Qu.:-0.15481                 1st Qu.:-0.9560                  
 Median :-0.05081                 Median :-0.6703                  
 Mean   :-0.05718                 Mean   :-0.5365                  
 3rd Qu.: 0.04152                 3rd Qu.:-0.1622                  
 Max.   : 0.37707                 Max.   : 0.5866                  
 freequencybodyaccelerationmagstandarddeviation freequencybodyaccelerationmagmeanfreq
 Min.   :-0.9876                                Min.   :-0.31234                     
 1st Qu.:-0.9452                                1st Qu.:-0.01475                     
 Median :-0.6513                                Median : 0.08132                     
 Mean   :-0.6210                                Mean   : 0.07613                     
 3rd Qu.:-0.3654                                3rd Qu.: 0.17436                     
 Max.   : 0.1787                                Max.   : 0.43585                     
 freequencybodybodyaccelerationjerkmagmean freequencybodybodyaccelerationjerkmagstandarddeviation
 Min.   :-0.9940                           Min.   :-0.9944                                       
 1st Qu.:-0.9770                           1st Qu.:-0.9752                                       
 Median :-0.7940                           Median :-0.8126                                       
 Mean   :-0.5756                           Mean   :-0.5992                                       
 3rd Qu.:-0.1872                           3rd Qu.:-0.2668                                       
 Max.   : 0.5384                           Max.   : 0.3163                                       
 freequencybodybodyaccelerationjerkmagmeanfreq freequencybodybodygyroscopemagmean
 Min.   :-0.12521                              Min.   :-0.9865                   
 1st Qu.: 0.04527                              1st Qu.:-0.9616                   
 Median : 0.17198                              Median :-0.7657                   
 Mean   : 0.16255                              Mean   :-0.6671                   
 3rd Qu.: 0.27593                              3rd Qu.:-0.4087                   
 Max.   : 0.48809                              Max.   : 0.2040                   
 freequencybodybodygyroscopemagstandarddeviation freequencybodybodygyroscopemagmeanfreq
 Min.   :-0.9815                                 Min.   :-0.45664                      
 1st Qu.:-0.9488                                 1st Qu.:-0.16951                      
 Median :-0.7727                                 Median :-0.05352                      
 Mean   :-0.6723                                 Mean   :-0.03603                      
 3rd Qu.:-0.4277                                 3rd Qu.: 0.08228                      
 Max.   : 0.2367                                 Max.   : 0.40952                      
 freequencybodybodygyroscopejerkmagmean freequencybodybodygyroscopejerkmagstandarddeviation
 Min.   :-0.9976                        Min.   :-0.9976                                    
 1st Qu.:-0.9813                        1st Qu.:-0.9802                                    
 Median :-0.8779                        Median :-0.8941                                    
 Mean   :-0.7564                        Mean   :-0.7715                                    
 3rd Qu.:-0.5831                        3rd Qu.:-0.6081                                    
 Max.   : 0.1466                        Max.   : 0.2878                                    
 freequencybodybodygyroscopejerkmagmeanfreq angletbodyaccelerationmeangravity
 Min.   :-0.18292                           Min.   :-0.163043                
 1st Qu.: 0.05423                           1st Qu.:-0.011012                
 Median : 0.11156                           Median : 0.007878                
 Mean   : 0.12592                           Mean   : 0.006556                
 3rd Qu.: 0.20805                           3rd Qu.: 0.024393                
 Max.   : 0.42630                           Max.   : 0.129154                
 angletbodyaccelerationjerkmeangravitymean angletbodygyroscopemeangravitymean
 Min.   :-0.1205540                        Min.   :-0.38931                  
 1st Qu.:-0.0211694                        1st Qu.:-0.01977                  
 Median : 0.0031358                        Median : 0.02087                  
 Mean   : 0.0006439                        Mean   : 0.02193                  
 3rd Qu.: 0.0220881                        3rd Qu.: 0.06460                  
 Max.   : 0.2032600                        Max.   : 0.44410                  
 angletbodygyroscopejerkmeangravitymean anglexgravitymean angleygravitymean  anglezgravitymean  
 Min.   :-0.22367                       Min.   :-0.9471   Min.   :-0.87457   Min.   :-0.873649  
 1st Qu.:-0.05613                       1st Qu.:-0.7907   1st Qu.: 0.02191   1st Qu.:-0.083912  
 Median :-0.01602                       Median :-0.7377   Median : 0.17136   Median : 0.005079  
 Mean   :-0.01137                       Mean   :-0.5243   Mean   : 0.07865   Mean   :-0.040436  
 3rd Qu.: 0.03200                       3rd Qu.:-0.5823   3rd Qu.: 0.24343   3rd Qu.: 0.106190  
 Max.   : 0.18238                       Max.   : 0.7378   Max.   : 0.42476   Max.   : 0.390444

 
###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.
 
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.
 
##Sources
Sources you used if any, otherise leave out.

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
