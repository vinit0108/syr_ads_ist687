myIris <- iris

help("iris")

str(myIris)

library(tidyverse)
library(dplyr)
dplyr::glimpse(myIris)

summary(myIris)

sort(myIris$Sepal.Length)
order(myIris$Sepal.Length)

# Base R
indexes <- order(myIris$Sepal.Length)
sortedDF <- myIris[indexes,]

# Tidyverse
library(tidyverse)
library(dplyr)
sortedDF1 <- myIris %>% arrange(Petal.Width)

myIris[,1]

myIris[,"Sepal.Length"]
myIris$Sepal.Length

select(myIris, Sepal.Length)

aveLength <- (myIris$Sepal.Length + myIris$Petal.Length)/2
myIris$Ave.Length <- aveLength

myIris[which.min(myIris$Petal.Length),]

newFram <- data.frame(myIris$Petal.Length, myIris$Petal.Width)

newFrame <- myIris %>% slice(1:3)

#tidyverse
shortPetalDF <- myIris %>% filter(Petal.Length <1.4)
nrow(shortPetalDF)

#base R
shortPetalDF <- myIris[myIris$Petal.Length < 1.4,]
nrow(shortPetalDF)

if(sum(1:10)>40)
  print("The Sum is greater than 40")
