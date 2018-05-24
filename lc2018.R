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

library(stargazer)
library(readr)
library(magrittr)
library(dplyr)
library(ggplot2)
library(scales)
# read in the data

fpath <- file.path("data", "LoanStats_2018Q1.csv")
file.lines(fpath)
df_raw <- readr::read_csv(fpath,skip=1)


x <- df_raw %>% summarise_all(funs(n_distinct(., na.rm=TRUE)))
y <- x[, colnames(x)[order(t(x))]]
z <- y[, colnames(y)[y > 1]]
print(z)
colnames(z)
df<- df_raw[, colnames(z)]
print(dim(df))
print(df)
typeof(df)
class(df)

sapply(df, class)

print(t(z))
colnames(df)[1]
x <- select(df, 1)
v <- colnames(df)[1]

df %>%

ggplot() + geom_bar(df, mapping=aes(x=purpose)) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

?reorder
y <- df %>% summarise(df, ss

stargazer(df, type="text")
x <- summarise(df, everything())


order(t(x))
arrange(t(x))
print(t(x))


)colnames(df_raw)
stargazer(df_raw, type='text')

summary(df)


df$issue_date <- as.POSIXct(paste0(as.character(df[,"issue_d"]),"-15"), format = "%b-%Y-%d")
summary(df$issue_date)


library(ggplot2)
ggplot(df, aes(x=issue_date)) + geom_histogram(binwidth=0.1, position="dodge") 
ggplot(df, aes(x=marriage, color=default_oct)) + geom_histogram(binwidth=0.1, position="dodge") 



