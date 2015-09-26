---
title: "The Codebook"
author: "Anatoly.Solovyev"
date: "September 27, 2015"
---

Coursera - Getting and Cleaning Data Course Project

The way the script works is: 

1. Extracting the data using the read.table() and assigning variables to the data 

2. Combining all of the data for each type of data, train and test, using the cbind function

3. Combining test and train data together using the rbind() function

4. Inputing the column names using the function colnames()

5. Removed all duplicate named columns and there corresponding data using the duplicated() function and subsetting

6. Removed all columns that did not refrences mean or std(Standard Deviation) per instructions of the assignment

7. Subsituded descriptions of the activities for the numeric values that the raw data produced

8. Renamed the columns to be more descriptive by using the gsub() function

9. Using dplyr functions group_by() and summarise_each(), found the mean of each subject for each activity for all of the measurements that contained mean of standard deviation