# GCD
This is repository for "Getting and cleaning data" course project.

It contains the following files:

 + run_analysis.R - script, doing analysis of data and generating a tidy dataset in the end of analysis;
 + code_book.md - code book, explaining variables of data set;
 + README.md - this file.
 
In order to start analysis, just copy run_analysis.R into your work directory and source it.  
It will automatically download all required data from internet, unzip it and process.  

Firstly, it will read training and test data from the following files:  
 + X_train.txt;
 + X_test.txt;
 + subject_train.txt;
 + subject_test.txt;
 + y_train.txt;
 + y_test.txt;  
 
as well as dictionary files describing features and activities:  
 + features.txt;
 + activity_labels.txt.
 
Secondly, it will create joined training+test subject, training+test activity 
and training+test measurement data sets from separate training and test data sets. 
Activity ids will be replaced by activity labels using factor level adjustment.  

Thirdly, it will extract measurements only for mean and std functions. 
Then it'll merge subject, activity and measurement data sets together into so called whole_set.

Fourthly, it will split whole_set into a list of data frames categorized by 
subject_id and activty. Then, from that list it'll create a matrix where every column represents 
an average value for every of 66 functions.  

In the end, script will create resulting dataframe from names of grouping categories 
and calculated matrix with mean values for every function/category. 
That dataframe will be written into tidy_dataset.txt file.  

It can be viewed without running run_analisys.R script using the following R code. Just copy it into R console and press Enter:

```{r eval=FALSE}
address <- "https://s3.amazonaws.com/coursera-uploads/user-c3553e70505fc66f1b515eae/973502/asst-3/dc6dc900139711e58025db5948936a7d.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)
```
