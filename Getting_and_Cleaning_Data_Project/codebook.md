---
title: "The Codebook"
author: "Anatoly.Solovyev"
date: "September 27, 2015"
---

This was an exercise in reading in and manipulating data from a wearable computing pilot for the Samsung Galaxy S smartphone. The main purpose of this assignment extract of the needed data, format it, and summarize it into an tidy data set.

The tidy data set has 81 columns and 180 observation.

An example of what the columns mean is Time_Accelerometer_Mean()-X would refer to the mean of the X-axis acceleration based on time. Another example would be Frequency_Accelerometer_Jerk_Magnitude_MeanFreq which would be the measurement of mean of the frequency (X,Y, and Z axes) for the acceleration's jerk's magnitude.

The MeanFreq() variables were added because they weighted mean of frequency components, which was thought to be imporant because it gives the average mean frequency for specific measurements.

Below are the list of variables of measurements -Time_Accelerometer_Mean X,Y,Z -Time_Gravity_Accelerometer X,Y,Z -Time_Accelerometer_Jerk_Mean X,Y,Z -Time_Gyroscope_Mean X,Y,Z -Time_Gyroscope_Jerk_Mean X,Y,Z -Time_Accelerometer_Magnitude_Mean -Time_Accelerometer_Jerk_Magnitude_Mean -Time_Gyroscope_Magnitude_Mean -Time_Gyroscope_Jerk_Magnitude_Mean

-Frequency_Accelerometer_Mean X,Y,Z -Frequency_Gravity_Accelerometer X,Y,Z -Frequency_Accelerometer_Jerk_Mean X,Y,Z -Frequency_Gyroscope_Mean X,Y,Z -Frequency_Gyroscope_Jerk_Mean X,Y,Z -Frequency_Accelerometer_Magnitude_Mean -Frequency_Accelerometer_Jerk_Magnitude_Mean -Frequency_Gyroscope_Magnitude_Mean -Frequency_Gyroscope_Jerk_Magnitude_Mean

-Time_Accelerometer_StandDeviation X,Y,Z -Time_Accelerometer_Jerk_StandDeviation X,Y,Z -Time_Gyroscope_StandDeviation X,Y,Z -Time_Gyroscope_Jerk_StandDeviation X,Y,Z -Time_Accelerometer_Magnitude_StandDeviation -Time_Accelerometer_Jerk_Magnitude_StandDeviation -Time_Gyroscope_Magnitude_StandDeviation -Time_Gyroscope_Jerk_Magnitude_StandDeviation

-Frequency_Accelerometer_StandDeviation X,Y,Z -Frequency_Accelerometer_Jerk_StandDeviation X,Y,Z -Frequency_Gyroscope_StandDeviation X,Y,Z -Frequency_Gyroscope_Jerk_StandDeviation X,Y,Z -Frequency_Accelerometer_Magnitude_StandDeviation -Frequency_Accelerometer_Jerk_Magnitude_StandDeviation -Frequency_Gyroscope_Magnitude_StandDeviation -Frequency_Gyroscope_Jerk_Magnitude_StandDeviation

-Frequency_Accelerometer_MeanFreq X,Y,Z -Frequency_Accelerometer_Jerk_MeanFreq X,Y,Z -Frequency_Gyroscope_MeanFreq X,Y,Z -Frequency_Gyroscope_Jerk_MeanFreq X,Y,Z -Frequency_Accelerometer_Magnitude_MeanFreq -Frequency_Accelerometer_Jerk_Magnitude_MeanFreq -Frequency_Gyroscope_Magnitude_MeanFreq -Frequency_Gyroscope_Jerk_Magnitude_MeanFreq