## Intro to Data Science - Lab 1
# IST687 Section M00#
# Professor Anderson
# Enter your name here: Chaithra Kopparam Cheluvaiah

# I did this homework by myself, with help from the book and the professor

# 1. Use	the	command	line	in	R-Studio	to	add	together	all	of	the	numbers	between	1	
# and	10	(inclusive). Take	note	of	the	result.	Remember,	every	student	should	type	
# and	run the	code	on	their	own	copy	of	R-studio.

1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10   # addition of scalar values or constants 

# 2. Now	create	a	vector	of	data	that	contains	the	numbers	between	1	and	10	
# (inclusive).	Here	is	a	line	of	code	to	do	that:
#   myNumbers	<- c(1,	2,	3,	4,	5,	6,	7,	8,	9,	10)

myNumbers <- c(1,	2,	3,	4,	5,	6,	7,	8,	9,	10)  # creating a memory to store the list of numbers to reuse

# 3. Now	add	together	all	of	the	numbers	that	are	in	the	vector	myNumbers.	There	is	
# a	built-in	function	within	R	that	can	do	this	for	you	in	one	step:	Take	a	guess	as	
# to	the	name	of	that	function	and	run	it	on	myNumbers. Check	your	result	against	
# the	results	of question	1.

sum(myNumbers)  # using in-built function to add values in the vector


# 4. R	can	do	a	powerful	operation	called	"vector	math"	in	which	a	calculation	runs	
# on	every	element	of	a	vector.	Try	vector	math	on	myNumbers	by	adding	10	to	
# each	element	of	myNumbers,	and	storing	the	result	in	myNewNumbers.		Print	
# out	myNewNumbers.

myNewNumbers <- myNumbers + 10  # incrementing each value in the vector by 10 and assigning updated vector to new variable

myNewNumbers   # logging the value to console to verify the above math operation is success


# 5. Efficiently	calculate	a	sum	of	the	numbers	between	11	and	20	(inclusive),	using	
# techniques	from	the	problems	above. Hint:	use	c(11:20)

sum(11:20)  # short-cut to sum range of numbers


# 6. Calculate	a	sum	of	all	of	the	numbers	between	1	and	100	(inclusive),	using	
# techniques	from	the	problems	above.

sum(1:100)  # short-cut to sum range of numbers

# 7. Make	sure	you	have a	variable	myNumbers,	that	is	a	vector	of	10	numbers	
# (1,2,3,4,5,6,7,8,9,10)

myNumbers <- 1:10    # ensuring myNumbers by redoing the assignment


# 8. Add	the	following	commands	to	the	end	of	your	code	file	and	run	each	one:
# mean(myNumbers)
# median(myNumbers)
# max(myNumbers)
# min(myNumbers)
# length(myNumbers)


# 9. Add	a	comment	to	each	of	the	lines	of	code	in	your	file	explaining	what	it	does.	
# The	comment	character	is	"#".


# 10. Explain	the	output	of	the	following	command:
#   myNumbers	>	5

# execution of this command returns a vector with boolean values. TRUE -> if the logical operation is success otherwise FAlse


# 11. Explain	what	in	is	bigNum after	executing	the following	command:
#   bigNum	<- myNumbers[myNumbers	>	5]

bigNum	<- myNumbers[myNumbers	>	5] # filtering the data that are above 5 and storing that in a new variable


# 12. Whenever	you	need	R	to	explain	what	a	command	does	and	how	it	works,	use	
# the	?	command	or	the	help()	command.	Add	and	run	these	commands:
#   ?mean
help("mean")


mean(myNumbers)         # calculating average of all the data in the vector myNumbers
median(myNumbers)       # calculating median of all the data in the vector myNumbers
max(myNumbers)          # calculating highest value in the vector myNumbers
min(myNumbers)          # calculating lowest value in the vector myNumbers
length(myNumbers)       # calculating number of items present in the vector myNumbers



