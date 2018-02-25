library(dplyr)
##Define source file location and destination file name
src_file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest_file <- "UCI_HAR_Dataset.zip"


## If file with that name already exists, remove it, then download file and unzip it.
if (!file.exists(dest_file)) {
    ##file.remove(dest_file)
    download.file(src_file, dest_file)
}
unzip("UCI_HAR_Dataset.zip",overwrite = TRUE)

##Load reference data, cleasing feature names

features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, col.names = c("index", "featurelabel"))
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors = FALSE,col.names = c("index","activity"))
features$featurelabel <- sub("^f","freq",sub("^t","time",gsub("[^[:alnum:]]+","",features$featurelabel)))

## Load data sets

subject_train <-  read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
y_train <-  read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activityid")
x_train <-  read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$featurelabel)

subject_test <-  read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
y_test <-  read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activityid")
x_test <-  read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$featurelabel)

##Add in Activity labels
y_train[,2] = sapply(y_train[,1],function (x){activity_labels[x,2]})
y_test[,2] = sapply(y_test[,1],function (x){activity_labels[x,2]})
names(y_train)[2] <- "activity"
names(y_test)[2] <- "activity"

##Identify source data
subject_train <- cbind(subject_train,"train",stringsAsFactors = FALSE )
subject_test <- cbind(subject_test,"test",stringsAsFactors = FALSE )
names(subject_train) <- c("subject","source")
names(subject_test) <- c("subject","source")

## Merge sets together
full_set <- rbind(cbind(subject_train,y_train,x_train),cbind(subject_test,y_test,x_test))


## Get subset with only measured means and standard deviations (std)
sub_set <- full_set[,grepl("^source|^subject|^activity$|mean[XYZ]*$|std[XYZ]*$",names(full_set))]

## Create summary set calculating mean of each measure by activity and subject
sum_set <- sub_set %>% group_by(subject,source,activity) %>% summarize_all(mean)
ungroup(sum_set)
colnames(sum_set) <- c(colnames(sum_set)[1:3],paste0("meanof",colnames(sum_set)[4:length(colnames(sum_set))]))

## Write out summary data set to file
write.table(sum_set,"Summary_Data_Set.txt",row.names = FALSE)

