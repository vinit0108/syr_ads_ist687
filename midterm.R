mpg %>% ggplot() + aes(x=displ,y=hwy) + geom_point()

names <- c("Alex","Shu", "Tanya")

ages <- c(28,17,35)

users <- c("alp@syr.edu","sh67@syr.edu","tans@syr.edu")

students <- data.frame(names,ages,users)

students$age
students[2,]
students[,2]


