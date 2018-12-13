# Getting_and_Cleaning_Data
for Assigment of week 4
Solution of all 5 steps are in R file run_analysis.R
each step in R file is commented with start of step and actual commands to achieve the result
also there are additinal comments in R file explaining the purpose of each step
# How to run the file
copy run_analysis.R to your working directory
 execute file using command > source("run_analysis.R")

# explanation about the steps
# Step 1 task was achieved by  following 
1. downloading the zip file
2. unziping the zip file ot current working directory
3. Reading 3 test files,  X_test.txt, Y_test.txt and subject_test.txt 
4. Read feature.txt and use names from col 2 to replcae column name in data frame of X_text.txt 
5. Change column names for dataframes read from subject_test.txt with label "subject"
6. Change column names for dataframes read from Y_test.txt with label "activity"
7. combine three data frame using cbind into one test dataframe
8. repeat steps 3 to 7 for respective train files to get one train dataframe
9. create Merged data frame using rbinnd and test and train dataframe 
 Resulting data frame:newdata has dimention 10299, 563

# Step 2 extracting mean and std columns
	1. use grep command on column names of merged data frame to select columns 
        subject, activity, and colunm names having letters "mean" and "std" in it ,
        my command includes meanFreq also. The resulting data frame:step2data has dimension 10299, 81

# Step 3 : 	Uses descriptive activity names to name the activities in the data set
  1. Read activity labels from file "./UCI HAR Dataset/activity_labels.txt"
	2. to be on safe side copy step2data data frame to step3data  
  3. using for to replace activity with respective strings
	

# Step 4 :Appropriately labels the data set with descriptive variable names
1. to be on safe side copyt step3data data frame to step4data  
2. Using sub and gsub remove "-" and "()" from colum names
	
# Step 5 : From the data set in step 4, creates a second, independent tidy data set with the average of
# each variable for each activity and each subject
  1. Attach package dplyr for using arrange, group_by and summarize_all functions
	2. Sort data in order od subject and activity, this was required since data was not appearing in order of subject 1 to 30
	2. group the data frame by activity and subject
  4. use summarize_all with function mean to get average of all columns and store it in tidydata dataframe
  5. create txt file from tidydata data frame using write.table()


