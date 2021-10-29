mean(mtcars$mpg)
mode(mtcars$mpg)

hist(mtcars$mpg, breaks=10)

hist(rnorm(51, mean= 605384, sd=6823984))

# R demo
a <- rnorm(100, 50, 2)
str(a)
hist(a)
hist(rnorm(100,50,2))
hist(rnorm(100000,50,2)) # much more accurate if we increase the sample
b <- rnorm(100000,50,2)
hist(b)
mean(b)
sd(b)
max(b)
min(b)

hist(rnorm(100000,75,2)) # much more accurate if we increase the sample
hist(rnorm(100000,75,10)) # much more accurate if we increase the sample

c <- rnorm(100000,75,2)
hist(c)

# zoom in on everything above 80

d <- c[c>80]
str(d)
mean(d)
hist(d)

e <- c[c>82.5]
str(e)
hist(e)  # once we get to the tail of the distribution, its random again

MyMode <- function(myVector){
  uniqueValues <- unique(myVector)
  uniqueCounts <- tabulate(match(myVector,uniqueValues))
  return(uniqueValues[which.max(uniqueCounts)])
}

tinyData <- c(1,2,1,2,3,3,3,4,5,4,5)
tinyData <- c(tinyData,5,5,5,1,1,1)
tinyData <- c(tinyData,9,9,9,9,9,9,9)
MyMode(tinyData)

install.packages("modeest")
library(modeest)
mfv(tinyData)


bestMPG <- function(){
  index <- which.max(mtcars$mpg)
  car <- mtcars[index,]
  return(car)
}

bestMPG()

bestMPGName <- function(){
  index <- which.max(mtcars$mpg)
  car <- rownames(mtcars)[index]
  return(car)
}
bestMPGName()

col.index <- colnames(mtcars) == "mpg"

bestWithIndex <- function(col.index){
  index <- which.max(mtcars[,col.index])
  car <- rownames(mtcars)[index]
  return(car)
}
bestWithIndex(1)

bestWithIndex <- function(col.index){
  index <- which.max(mtcars[,col.index])
  car <- rownames(mtcars)[index]
  return(car)
}

help("state.x77")
dfStates77 <- state.x77

install.packages("readr")
library(readr)
dfStates17 <- read_csv("https://intro-datascience.s3.us-east-2.amazonaws.com/statesNew.csv")
library(tidyverse)
glimpse(dfStates17)

summary(dfStates17)

dfComps <- read_csv("https://intro-datascience.s3.us-east-2.amazonaws.com/companies1.csv")
glimpse(dfComps)

dfComps$noURL <- is.na(dfComps$homepage_url)
table(dfComps$noURL)

dfComps[!dfComps$noURL,]
urlComps <- dfComps[!dfComps$noURL,]
dim(urlComps)

glimpse(urlComps)

noUrlComps <- dfComps[dfComps$noURL,]
mean(noUrlComps$funding_rounds)

urlComps$company <- gsub("/organization/","",urlComps$permalink)
str_replace(urlComps$permalink, "/organization/","")

urlComps$funding_total_usd
install.packages("stringi")
library(stringi)
funding_new <- stri_replace_all_charclass(urlComps$funding_total_usd, "\\p{WHITE_SPACE}","")
funding_new <- as.numeric(funding_new) # return
mean(funding_new, na.rm = TRUE)

# 18,321,551
convertCharToNum <- function(data){
  step1 <- str_replace_all(data, "\\p{WHITE_SPACE}", "")
  step2 <- as.numeric(step1)
  return(step2)
}
convertCharToNum(urlComps$funding_total_usd)