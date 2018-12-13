# Getting and Cleaning Data
# Week 4 Assignment
#Code book for tidydata uploaded as part 1


Tidy data created using Human Activity Recognition Using Smartphones Dataset
Version 1.0
Tidy data : Data set with the average of each Variable for each activity and each subject.

The data set include following attributes/fields
Subject: An identifier of the subject/person, who carried out the experiment. 30 volunteers(persons) within an age bracket of 19-48 years, identified as number 1 to 30.

Activity : Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. The activity labels are : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
Variables : 81 variables representing,  Average of mean and standard deviation of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration and Triaxial Angular velocity from the gyroscope . This was captured using accelerometer and gyroscope embedded in the device (wearing a smartphone (Samsung Galaxy S II) on the waist),  grouped by activity and subject

Names of each column in tidy data frame
Column 3 to 81  includes average of  accelerometer and gyroscope 3-axial raw signals (demoted by X, Y and Z in names) , prefix 't' to denote time domain signals and the 'f' to indicate frequency domain signals.
More explanation can be found in features_info.txt
 [1] "subject"                      "activity"                    
 [3] "tBodyAccmeanX"                "tBodyAccmeanY"               
 [5] "tBodyAccmeanZ"                "tBodyAccstdX"                
 [7] "tBodyAccstdY"                 "tBodyAccstdZ"                
 [9] "tGravityAccmeanX"             "tGravityAccmeanY"            
[11] "tGravityAccmeanZ"             "tGravityAccstdX"             
[13] "tGravityAccstdY"              "tGravityAccstdZ"             
[15] "tBodyAccJerkmeanX"            "tBodyAccJerkmeanY"           
[17] "tBodyAccJerkmeanZ"            "tBodyAccJerkstdX"            
[19] "tBodyAccJerkstdY"             "tBodyAccJerkstdZ"            
[21] "tBodyGyromeanX"               "tBodyGyromeanY"              
[23] "tBodyGyromeanZ"               "tBodyGyrostdX"               
[25] "tBodyGyrostdY"                "tBodyGyrostdZ"               
[27] "tBodyGyroJerkmeanX"           "tBodyGyroJerkmeanY"          
[29] "tBodyGyroJerkmeanZ"           "tBodyGyroJerkstdX"           
[31] "tBodyGyroJerkstdY"            "tBodyGyroJerkstdZ"           
[33] "tBodyAccMagmean"              "tBodyAccMagstd"              
[35] "tGravityAccMagmean"           "tGravityAccMagstd"           
[37] "tBodyAccJerkMagmean"          "tBodyAccJerkMagstd"          
[39] "tBodyGyroMagmean"             "tBodyGyroMagstd"             
[41] "tBodyGyroJerkMagmean"         "tBodyGyroJerkMagstd"         
[43] "fBodyAccmeanX"                "fBodyAccmeanY"               
[45] "fBodyAccmeanZ"                "fBodyAccstdX"                
[47] "fBodyAccstdY"                 "fBodyAccstdZ"                
[49] "fBodyAccmeanFreqX"            "fBodyAccmeanFreqY"           
[51] "fBodyAccmeanFreqZ"            "fBodyAccJerkmeanX"           
[53] "fBodyAccJerkmeanY"            "fBodyAccJerkmeanZ"           
[55] "fBodyAccJerkstdX"             "fBodyAccJerkstdY"            
[57] "fBodyAccJerkstdZ"             "fBodyAccJerkmeanFreqX"       
[59] "fBodyAccJerkmeanFreqY"        "fBodyAccJerkmeanFreqZ"       
[61] "fBodyGyromeanX"               "fBodyGyromeanY"              
[63] "fBodyGyromeanZ"               "fBodyGyrostdX"               
[65] "fBodyGyrostdY"                "fBodyGyrostdZ"               
[67] "fBodyGyromeanFreqX"           "fBodyGyromeanFreqY"          
[69] "fBodyGyromeanFreqZ"           "fBodyAccMagmean"             
[71] "fBodyAccMagstd"               "fBodyAccMagmeanFreq"         
[73] "fBodyBodyAccJerkMagmean"      "fBodyBodyAccJerkMagstd"      
[75] "fBodyBodyAccJerkMagmeanFreq"  "fBodyBodyGyroMagmean"        
[77] "fBodyBodyGyroMagstd"          "fBodyBodyGyroMagmeanFreq"    
[79] "fBodyBodyGyroJerkMagmean"     "fBodyBodyGyroJerkMagstd"     
[81] "fBodyBodyGyroJerkMagmeanFreq"

Following is the details of Dataset used to create the Tidydata
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

