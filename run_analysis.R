#####################################################################
#Reading the required data into tables
#####################################################################
#Extract the dataset and paste the path of the folder of the required dataset in the below variable  
Req_WD = 'H:/coursera stuff/data science specialization/03 getting data and cleaning data/Assignment/UCI HAR Dataset/'

setwd(paste(Req_WD,'test', sep = ""))
subject_test = read.table("subject_test.txt")
X_test = read.table("X_test.txt")
y_test = read.table("y_test.txt")

setwd(paste(Req_WD,'train', sep = ""))
subject_train = read.table("subject_train.txt")
X_train = read.table("X_train.txt")
y_train = read.table("y_train.txt")


setwd(Req_WD)
activity_labels = read.table("activity_labels.txt",
                             colClasses = c("character"),
                             col.names= c("Activity_Id", "Activity"))
features = read.table("features.txt",colClasses = c("character"))

#####################################################################
#Merging the data sets to create a single data set
#####################################################################
#Forming Complete Subject,X and Y datasets
subject_complete = rbind(subject_train,subject_test)
X_Complete = rbind(X_train,X_test)
Y_Complete = rbind(y_train,y_test)

#Merging all columns to create a complete data set
Complete_Sensor_Data = cbind(X_Complete,subject_complete,Y_Complete)

#####################################################################
#Creating a complete list of Column Labels
#####################################################################
Extra_Features = rbind(c(562, "Subject"),c(563, "Activity_Id"))
Complete_Sensor_Column_Labels = rbind(features,Extra_Features)
colnames(Complete_Sensor_Data) = Complete_Sensor_Column_Labels$V2

#####################################################################
#Extracting measurements containing mean and standard deviation
#####################################################################
Sensor_Mean_Std_Data = Complete_Sensor_Data[,(grepl("mean",
                                                    Complete_Sensor_Column_Labels$V2)
                                              |grepl("std",
                                                     Complete_Sensor_Column_Labels$V2)
                                              |grepl("Subject",
                                                     Complete_Sensor_Column_Labels$V2)
                                              |grepl("Activity_Id",
                                                     Complete_Sensor_Column_Labels$V2))]

#####################################################################
#Getting the descriptive activity names to name the activities in the data set
#####################################################################
Sensor_Mean_Std_Data_Descriptive = merge(x = Sensor_Mean_Std_Data, 
                                         y = activity_labels, by = "Activity_Id",
                                         all.x = TRUE)

#####################################################################
#Labelling the data with descriptive variable names
#####################################################################

#Replacing the starting letter t with time 
names(Sensor_Mean_Std_Data_Descriptive) = gsub("^t","Time.",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Replacing the starting string Freq with Frequency
names(Sensor_Mean_Std_Data_Descriptive) = gsub("Freq","Frequency",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Replacing the starting letter f with Frequency.
names(Sensor_Mean_Std_Data_Descriptive) = gsub("^f","Frequency.",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Replacing the starting string Acc with Acceleration
names(Sensor_Mean_Std_Data_Descriptive) = gsub("Acc","Acceleration",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Replacing the starting string Gyro with Angular Velocity
names(Sensor_Mean_Std_Data_Descriptive) = gsub("Gyro","AngularVelocity",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Replacing the starting string Mag with Magnitude
names(Sensor_Mean_Std_Data_Descriptive) = gsub("Mag","Magnitude",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Removing Paranthesis
names(Sensor_Mean_Std_Data_Descriptive) = gsub("\\(|\\)","",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Replacing the starting string std with StandardDeviation
names(Sensor_Mean_Std_Data_Descriptive) = gsub('.std',".StandardDeviation",
                                               names(Sensor_Mean_Std_Data_Descriptive))
#Making names as Legal R Names
names(Sensor_Mean_Std_Data_Descriptive) = make.names(names(Sensor_Mean_Std_Data_Descriptive))

#####################################################################
#Getting the average of each variable for each activity and each subject
#####################################################################
Sensor_Mean_Subject_Activity_Intermediate <- aggregate(Sensor_Mean_Std_Data_Descriptive, 
                                                       by=list(Subject = Sensor_Mean_Std_Data_Descriptive$Subject,Activity = Sensor_Mean_Std_Data_Descriptive$Activity),
                                                       FUN=mean, na.rm=TRUE)
#Removing the last 2 columns as they are redundant
Sensor_Mean_Subject_Activity <- Sensor_Mean_Subject_Activity_Intermediate[,1:82]
#Exporting the final dataset
write.table(Sensor_Mean_Subject_Activity, file = "Sensor_Mean_Subject_Activity.txt",row.names = FALSE)
