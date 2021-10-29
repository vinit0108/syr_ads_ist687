#install.packages("MASS")
#install.packages("ggplot2")
library(MASS) # Boston data is in MASS package
library(ggplot2)
library(tidyverse)
ggplot(data=Boston, aes(x=rm, y=medv)) +
  geom_point() +
  geom_smooth(method = "lm", se=FALSE)

glimpse(Boston)

ggplot(data=Boston, aes(x=crim, y=medv)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

hist(Boston$crim)
summary(Boston$crim)
