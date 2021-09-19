myFamilyAges <- c(43, 42, 12, 8, 5)  # creating vector
sum(myFamilyAges) # add together all the numbers in myFamilyAges
mean(myFamilyAges) # average age in the family
range(myFamilyAges)
familyRange <- range(myFamilyAges)  # assignement
mode(familyRange) # data type

# subsetting vectors - selecting a subset of the elements in the vector
familySubset <- myFamilyAges[c(3, 2, 5)]  # accessing individual elements
rangeSubset <- myFamilyAges[3:5]
myFamilyAges[-3:-5]
myFamilyAges[-1:9] # Error: only 0's may be mixed with negative subscripts
myFamilyAges[-1:0]  # removes only the first element
myFamilyAges[c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE)]
selectedFamily <- c(TRUE, FALSE, FALSE, FALSE, TRUE)
myFamilyAges[selectedFamily]

myFamilyAges > 21  # applies conditional test to every element and produces a vector of TRUE/FALSE
selectedFamily <- myFamilyAges > 21
myFamilyAges[selectedFamily]
myFamilyAges[myFamilyAges == 12] # logical equal
myFamilyAges[myFamilyAges != 12] # not
myFamilyAges[!(myFamilyAges == 12)]  # operator == inside paranthesis takes the precedence and then ! is evaluated
