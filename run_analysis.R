## Get and cleanning data course project R script
require("stringr")

# download and unzip data set archive
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")
unzip("dataset.zip")

# --------------------------- read all required files -------------------------------------------------
## read training and test data
train_set <- read.fwf("./UCI HAR Dataset/train/X_train.txt", rep(16, 561), buffersize=500, colClasses="numeric")
test_set <- read.fwf("./UCI HAR Dataset/test/X_test.txt", rep(16, 561), buffersize=500, colClasses="numeric")

## read subjects data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## read activities data
act_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
act_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

## read features and activity labels files
features <- read.table("./UCI HAR Dataset/features.txt", sep=" ", colClasses="character")
actLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ")

# ----------------------- merge data sets ---------------------------------------------
## join subject sets
subject <- rbind(subject_train, subject_test)

## join activity sets
act <- rbind(act_train, act_test)

## replace activity ids by activity labels
act$V1 <- as.factor(act$V1)
levels(act$V1) <- actLabels[,2]

## join train and test data sets to one
whole_set <- rbind(train_set, test_set)

# -------------------------------------------------------------------

## set meaningful header for data set
colnames(whole_set) <- features[,2]

## extract indexes for mean and std functions
meanStd <- features[which(str_detect(features[,2], "mean\\(\\)") | str_detect(features[,2], "std\\(\\)")),]

## leave only mean and std function columns
whole_set <- whole_set[,as.numeric(meanStd[,1])]

## merge subject set + activity set + data set
whole_set <- cbind(subject, act, whole_set)
colnames(whole_set)[1:2] <- c("subject_id","activity")

#----- create new tidy dataframe which will have mean values grouped by subject id and activity --------------

## create list of dataframes grouped by subject_id and activity
gr_list <- split(whole_set, list(whole_set$subject_id, whole_set$activity), drop = TRUE)

# create temporary matrix with column numbers = number of mean and std functions
# and row numbers = number of groupings
m <- matrix(nrow=length(gr_list), ncol=nrow(meanStd))

# for every column (ecxept grouping variables) in data frame per each grouping apply mean function
# then set resulting vector as a row of matrix 
for(li in 1:length(gr_list)) {
    m[li,] <- apply(gr_list[[li]][-c(1:2)], MARGIN=2, mean)
}

# create resulting dataframe from names of grouping categories 
# and matrix with mean values for every function/category
df <- data.frame(subject_id = str_extract(names(gr_list), "\\d+"), 
                 activity = str_extract(names(gr_list), "[A-Z]+|[A-Z]+_[A-Z]+"), m)

# set syntactically correct names for function columns
nm <- make.names(meanStd[,2],unique=T)
nm <- gsub("\\.{2,}", ".", nm)
nm <- gsub("\\.$", "", nm)
names(df)[-c(1:2)] <- nm

# write data frame into txt file
write.table(df, "tidy_dataset.txt", row.names=FALSE)
