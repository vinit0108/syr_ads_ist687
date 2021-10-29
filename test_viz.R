library(ggplot2)

myplot <- ggplot(mpg)
myplot <- myplot + aes(x = displ, y= hwy)
myplot <- myplot + geom_point()
myplot

library(tidyverse)
mpg %>% ggplot()+
  aes(x = displ, y=hwy)+
  geom_point()

#histogram
mpg %>% ggplot()+
  aes(x=displ)+
  geom_histogram(bins = 8, col="black", fill="red")

# box plot
mpg %>% ggplot()+
  aes(x=class, y=displ)+
  geom_boxplot()

mpg %>% ggplot()+
  aes(x=displ, y= hwy, color=cty)+
  geom_point()

mpg %>% mutate(cyl=as.factor(cyl)) %>%
  ggplot()+
  aes(x=displ, y=hwy, shape=cyl, size=hwy, color=cty)+
  geom_point()+
  scale_color_gradient(low="blue", high="black")

mpg %>% group_by(class) %>% summarize(mean_hwy=mean(hwy),mean_displ=mean(displ)) %>%
  ggplot() + aes(x=class, y= mean_hwy)+
  geom_col(col="black", aes(fill=mean_displ))

# ------------------------------------------------
# Lab 6
myplot <- economics %>% ggplot() +
  aes(x=date, y=psavert) +
  geom_line(col="green") +
  ggtitle("Personal Savings Rate and Median Unemployment: 1967-2014") +
  geom_line(aes(y=uempmed), col="red") +
  ylab("psavert & uempmed") + xlab("years")

myplot

scatter_plot <- economics %>% ggplot() + aes(x=uempmed, y=psavert, color=uempmed) +
  geom_point() + scale_color_gradient(low="blue", high="red")
scatter_plot