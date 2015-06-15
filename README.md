# GCD
This is repository for "Getting and cleaning data" course project.

It contains the following files:

 + run_analysis.R - script, doing analysis of data and generating a tidy dataset in the end of analysis;
 + code_book.md - code book explaining variables of data set;
 + README.md - this file.
 
In order to start analysis, just copy run_analysis.R into your work directory and source it.
It will automatically download all required data from internet, unzip it and process.
It will generate tidy_dataset.txt file after analysis has been finished.
You can view it using the following R script, just copy it into R console and press Enter:

```{r eval=FALSE}
address <- "https://s3.amazonaws.com/coursera-uploads/user-c3553e70505fc66f1b515eae/973502/asst-3/dc6dc900139711e58025db5948936a7d.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)
```
