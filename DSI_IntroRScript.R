############## Topics ####
## Date: 03 June 2022
## Instructor: Anjali Silva < a.silva@utoronto.ca>
## Event: Data Science Skills Day


# Topics
## 1) Intro
## 2) Setup and RStudio
## 3) Some Basics
## 4) Vectors
## 5) Matrices and Lists
## 6) Data Frames
## 7) Data Import/Export
## 8) Functions
## 9) Graphics
## 10) Next Steps

############## 1) Intro ####


# Instructor will be using camelCaseStyle for variable
# names, don't use the confusing.dot.style or the 
# rambling pothole_style

############## 2) Setup and RStudio ####

# Either click "Run" on top right hand side
## Or Ctrl + R in Windows
## Or Ctrl + ENTER in Mac

# Slide 32
## Current location
getwd() # current location of the file, if saved

#  to set the working directory
setwd("/Users/Anjali/Desktop") 

# Recommended
# Session -> Set Working Directory ->


############## 3) Some Basics  ####

3 + 5

X <- 1 # X is a variable or object
X # autoprinting object

x <- 2 # R is case sensitive
x

test1 <- 123 # test1 is an object
test1


# Slide 40
x <- 5
x # auto-printing
print(x) # explicit printing using print() function
typeof(x) # "double" obtained using typeof() function
length(x) # 

print("Hello world")

# Slide 41
# Built-in functions are part of R standard 
# or base packages
library(help = "base")
library(help = "stats")

# Slide 43
# To obtain session information:
sessionInfo()

# Version information:
R.Version()

# Show objects in workspace
ls()


# Slide 44
# getting help
?"<-"  # help on assignment operator
help("<-") # help on assignment operator
?typeof # help on typeof function
?class # help on class function
?print # help on print function


# Slide 46
# R Data Types
xValue <- 100 # numeric (double precision)
xValue

yVariable <- FALSE # logical
yVariable

zVariable <- "hello" # character strings
zVariable


# Slide 47
x <- 1L
x
class(x) # "integer"
typeof(x)  # "integer"


# slide 48
x <- c(2 + 0i, 5 + 4i)
class(x) # "complex"

# Inf represents infinity:
Inf # a reserved word for infinity
1 / Inf # 0


# NaN represents an undefined value/missing value:
NaN # not a number
0 / 0 # NaN


# slide 49
# c() function concatenating elements together:
x <- c(0.5, 0.6)
class(x) # "numeric"

x <- c("a", "b", "c")
class(x) # "character"

x <- c(TRUE, FALSE)
class(x) # "logical"



# slide 50
# Character Strings

xVariable <- 'hello'
class(xVariable) # "character"

zVariable <- "hello"
class(zVariable) # "character"


# “paste” converts inputs to strings, concatenate and return:
paste(xVariable)
paste(xVariable, zVariable)


# slide 51
# "cat" concatenates and prints the arguments to the screen:
cat(xVariable, zVariable)
cat("\n", xVariable, zVariable) # "\n" adds new line

# “print” prints the argument:
print(c(zVariable, xVariable))


# slide 52
# Missing Values
x <- c(1, 3, NA, 4, 5)
class(x) # "numeric"

y <- c(1, 3, NaN, 4, 5)
class(y) # "numeric"

# is.na() is used to test objects if they are NA
# is.nan() is used to test for NaN

is.na(x) # FALSE FALSE  TRUE FALSE FALSE
is.nan(x) # FALSE FALSE FALSE FALSE FALSE



# Question 1) How can you indicate that something is a
# comment, and not a command that should be run?

# It starts with a hashtag/number sign/pound sign


# Question 2: What is the difference between NA and 
# NaN in R?

# A NaN value in R represents “NOT A NUMBER”. Any numeric 
# calculations with an undefined result gives NaN. 
# This exists only in vectors with numeric datatype.
sqrt(-1)
0/0

# A NA value in R represents "Not available".
sqrt(NA)

# Question 3)
# Question: Use the variable/object name 'distanceSchoolKM'
# and assign it numeric value two. Note, this is two 
# kilometers. How can you convert this to meters? 
# Make a new variable/object called 'distanceSchoolMeters' 
# with distance in meters. 

distanceSchoolKM <- 2
# 1km = 1000m
distanceSchoolMeters <- 2 * 1000
distanceSchoolMeters


# Question 4)
# What is the final value of `areaHectares' after as per 
# below code?

areaHectares <- 2.5 
2.47 * areaHectares

# it will still be 2.5 because areaHectares is not modified


# Question 5) Where are the objects created in RStudio 
# kept and displayed?

# in the Environment pane


# Question 6) Which data types are double precision by
# default?
# numerical variables


# slide 60
# Tips for Solving Issues


############## 4) Vectors ####

# slide 63
y <- 1L:5L  # vector using : operator
is.vector(y)

y <- c(1, 2, 3, 4, 5) # vector using c() function
is.vector(y)

y <- seq(1, 5, by = 1) # vector using seq() function
is.vector(y)


# slide 64
# vector using paste() function
y <- paste("A", 1:5, sep = "")
is.vector(y)


# vector using rep() function
y <- rep(letters[1:5], 3)
is.vector(y)


# There are multiple ways to create a vector:
?vector # vector using vector() function
# vector(mode, length )



############## 5) Matrices and Lists ####

############## 6) Data Frames ####

############## 7) Data Import/Export ####

############## 8) Functions ####

############## 9) Graphics ####

############## 10) Next Steps ####


#[END]