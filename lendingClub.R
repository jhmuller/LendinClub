file.lines <- function(fpath){
  cmd <- paste("wc -l ", fpath)
  tmp <- system(cmd, intern=TRUE) 
  res <- strsplit(tmp, ' ')[[1]][1]
  return (as.numeric(res))
}
file.lines <- function(fpath){
  cmd <- paste("wc -l ", fpath)
  tmp <- system(cmd, intern=TRUE) 
  res <- strsplit(tmp, ' ')[[1]][1]
  return (as.numeric(res))
}



# read in the data
fdir <- file.path("C:", "dev", "LendingClub")
list.files(fdir)
fpath <- file.path(fdir, "LoanStats3d_securev1.csv")
file.lines(fpath)
df <- read.csv(fpath, skip=1, nrows=10000)
summary(df)

summary(df$issue_d)

library(ggplot2)
ggplot(df, aes(x=issue_d)) + geom_histogram(binwidth=0.1, position="dodge") 
ggplot(df, aes(x=marriage, color=default_oct)) + geom_histogram(binwidth=0.1, position="dodge") 



