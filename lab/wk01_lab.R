1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 # adding the scalar values

numbers <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) # creating vector

sum(numbers) # sum function

# vector math in which a calculation runs on every element of a vector
updated_numbers <- numbers + 10

sum(1:10) # range of numbers

# descriptive statistics
mean(numbers)
median(numbers)
max(numbers)
min(numbers)
length(numbers)

# filtering the data
numbers>5 # returns vector of true/false
bigNum <- numbers[numbers>5] # return the values having true

help(mean)

