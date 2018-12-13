# Step 1 dowloading , extracting files and
  # Merges the training and the test sets to create one data set

	zipurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	download.file(zipurl, "data.zip")  # zip dowloaded to working directory
	unzip("data.zip") #zip extracted to working directory, folder UCI HAR Dataset
    #Reading and Merging 3 test files into one 
	Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt") # dim 2947, 561 features
	Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt") # dim 2947, 1 test labels/activity
	subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt") # dim 2947, 1 subject

    #reading features name 
	feanames <- read.table("./UCI HAR Dataset/features.txt") # dim 561,2
	fnames <- feanames[, 2]  ## geting names from 2nd column
	names(Xtest) <- fnames  ## this will replace column names with features name
    #changing col name in subject test from V1 to subject , names(subtest) # "V1"
	names(subtest) <- "subject"    # names(subtest) # subject
    # changing col name of y test from V1 to activity
    # names(Ytest) ## "V1" , dim(Ytest) ## [1] 2947    1
   	names(Ytest) <- "activity"    # names(Ytest)  #  "activity"

    #combine 3 test file , by adding it as columns
	newtest <- cbind(subtest,Ytest,Xtest) # > dim(newtest) result [1] 2947  563
      # names(newtest) ,prints column names   [1] "subject"         
                 # [2] "activity"                           
                 # [3] "tBodyAcc-mean()-X"    and so on

  #Reading and Merging 3 training files into one 
	Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt") # dim 7352, 561 features
	Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt") # dim 7352, 1 test labels/activity
	subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt") # dim 7352, 1 subject

	names(Xtrain) <- fnames  ## this will replace column names with features name
  #changing col name in subject to from V1 to subject
  # to test , names(subtrain) # "V1"
	names(subtrain) <- "subject" # names(subtrain) # subject
  # changing col name of y test from V1 to activity
  # to test names(Ytrain) ## "V1" , dim(Ytrain) ## [1] 2947    1
	names(Ytrain) <- "activity" # names(Ytrain)  #  "activity"

  #combine 3 train file , by adding it as columns
	newtrain <- cbind(subtrain,Ytrain,Xtrain) # to test dim(newtrain), [1] 7352  563
  # to test names(newtrain) #   [1] "subject"               
                 # [2] "activity"                           
                 #  [3] "tBodyAcc-mean()-X"    and so on

  # combinig rows of newtest and newtain into one file

	newdata <- rbind(newtest, newtrain)  # to test dim(newdata), 10299, 563
  # write.table(newdata, file = "MyData.txt", row.name=FALSE )  ## to save file though not required
                                                                ## first row will be col names 


# Step 2 extracting mean and std columns
	step2data <- newdata[ , grepl("subject|activity|mean|std", names(newdata))]
     ## above includes meanFreq also
     # dim(step2data), just to check dimention 10299    81

# Step 3 : 	Uses descriptive activity names to name the activities in the data set
  #reading activity labels
	actl <- read.table("./UCI HAR Dataset/activity_labels.txt")
	step3data <-step2data  ## copying data from step2 
  # using for to replace activity with respective strings
	for(i in 1:10299){step3data[i,2] <- as.character(actl[step3data[i,2],2])}

# Step 4 :Appropriately labels the data set with descriptive variable names

	step4data <- step3data
	colnm1 <- gsub("-","",names(step4data),) ## removing - from column names
	colnm1 <- sub("\\()","",colnm1,) ## removing () from column names
      names(step4data) <-colnm1  ## replacing colunm names with vactor colnm1

# Step 5 : From the data set in step 4, creates a second, independent tidy data set with the average of
# each variable for each activity and each subject
      library(dplyr)  # attaching package dplyr for using arrange, group_by and summarize_all functions
	step5data <- arrange(step4data,subject, activity)  ## this was to data in order for subject
	step5data <- group_by(step5data,activity,subject)   ## groupby for each activity and each subject


	tidydata <- summarize_all(step5data,funs(mean)) ##  to get average grouped by activity and subject
      ## to test dimention try dim(tidydata), result 180,81
      write.table(tidydata, file = "tidydata.txt", row.name=FALSE ) ## data saved to file for uploading
                                                               ## this will have first row with col headers


