library(dplyr)

#reading in the specific files and creating variables for each. This is for ease of understanding the process

x <- read.table("./UCI HAR Dataset/test/X_test.txt")
y <- read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = TRUE)
s <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = TRUE)

x2 <- read.table("./UCI HAR Dataset/train/X_train.txt")
y2 <- read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = TRUE)
s2 <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = TRUE)

features <- as.character(t(read.table("./UCI HAR Dataset/features.txt",stringsAsFactors = F)[,2]))

#combing the data into larger tables to create a master file

xys <- cbind(x,y,s)
xys2 <- cbind(x2,y2,s2)
combined <- rbind(xys,xys2)
colnames(combined)<-c("Subject","Activity", features)

#Removing duplicates so select will work properly

combined <- combined[ , !duplicated(colnames(combined))]

#Using select to just get the columns with mean and standard deviation in the name

combined <- select(combined, 1:2, contains("mean()"), contains("std()"), contains("meanFreq()"))

#renaming the activities from numbers to the actual description of the activity

combined$Activity[combined$Activity=="1"] <- "WALKING"
combined$Activity[combined$Activity=="2"] <- "WALKING_UPSTAIRS"
combined$Activity[combined$Activity=="3"] <- "WALKING_DOWNSTAIRS"
combined$Activity[combined$Activity=="4"] <- "STANDING"
combined$Activity[combined$Activity=="5"] <- "SITTING"
combined$Activity[combined$Activity=="6"] <- "LAYING"

#renaming the column for more descriptive names to help with ease of understanding

names(combined) <- gsub("Body","", names(combined))
names(combined) <- gsub("tAcc","Time_Accelerometer_", names(combined))
names(combined) <- gsub("tGyro","Time_Gyroscope_", names(combined))
names(combined) <- gsub("tGravityAcc","Time_Gravity_Accelerometer_", names(combined))
names(combined) <- gsub("fAcc","Frequency_Accelerometer_", names(combined))
names(combined) <- gsub("fGyro","Frequency_Gyroscope_", names(combined))
names(combined) <- gsub("Mag","Magnitude_", names(combined))
names(combined) <- gsub("Jerk","Jerk_", names(combined))
names(combined) <- gsub("()","", names(combined))
names(combined) <- gsub("-mean","Mean", names(combined))
names(combined) <- gsub("-std","StandardDeviation", names(combined))

#finding the average of the measurement by activity and subject by using dplyr command group_by and summarise

tidy_data<- combined %>%
        group_by(Subject,Activity) %>%
        summarise_each(funs(mean))

#writing out the table so the data can be seen in txt format

write.table(tidy_data, file = "tidy_data.txt", row.name = FALSE)
