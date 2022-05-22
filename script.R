############## Topics ####
## Date: 03 June 2022
## Instructor: Anjali Silva < a.silva@utoronto.ca>
## Event: Data Science Skills Day
## Link: http://swcarpentry.github.io/r-novice-inflammation/

# Topics
## 1) Setup
##    http://swcarpentry.github.io/r-novice-inflammation/setup.html
## 2) Introduction to RStudio
##    http://swcarpentry.github.io/r-novice-inflammation/09-supp-intro-rstudio/index.html
## 3) Analyzing Patient Data
##    http://swcarpentry.github.io/r-novice-inflammation/01-starting-with-data/index.html
## 4) Data Types and Structures
##    http://swcarpentry.github.io/r-novice-inflammation/13-supp-data-structures/index.html
## 5) Creating Functions
##    http://swcarpentry.github.io/r-novice-inflammation/02-func-R/index.html


############## 1) Setup ####
# Visit http://swcarpentry.github.io/r-novice-inflammation/ 
## Download r-novice-inflammation-data.zip 
## Unzip and save the data file to Desktop

# Visit http://swcarpentry.github.io/r-novice-inflammation/01-starting-with-data/index.html


## Current location
getwd() # current location of the file, if saved
?getwd() # should open Help tab on right hand side

# Session -> Set Working Directory ->
setwd("/Users/Anjali/Desktop") # to set the working directory

## Create a new project

# Either click "Run" on top right hand side
## Or Ctrl + R in Windows
## Or Ctrl + ENTER in Mac

############## 2) Introduction to RStudio  ####
# Visit http://swcarpentry.github.io/r-novice-inflammation/09-supp-intro-rstudio/index.html

# Interacting with R

# Commenting

# Assignment Operator


############## 3) Analyzing Patient Data ####

# Loading Data
read.csv(file = "data/inflammation-01.csv", header = FALSE)

# Question
# What happens if you forget to put header = FALSE? 
## Loading Data with Headers
read.csv(file = "data/inflammation-01.csv")

# Question
# # Reading Different Decimal Point Formats
# Take a look at ?read.csv and write the code to load a file 
# called commadec.txt that has numeric values with commas as
# decimal mark, separated by semicolons.
read.csv(file = "data/commadec.txt", dec = ',', sep = ';')
read.csv2(file = "data/commadec.txt")

# assign it to a variable
weight_kg <- 55
weight_kg

# treat our variable like a regular number, and do arithmetic with it
## weight in pounds:
2.2 * weight_kg
## change a variable’s value by assigning it a new value
weight_kg <- 57.5
## weight in kilograms is now
weight_kg
## convert weight_kg into pounds, and store the new value in the variable weight_lb
weight_lb <- 2.2 * weight_kg
## weight in kg...
weight_kg

weight_kg <- 100.0
## weight in kg now...
weight_kg
## ...and weight in pounds still
weight_lb


# Printing with Parentheses
dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
head(dat)

# Question
## Draw diagrams showing what variables refer to what values
## after each statement in the following program:
mass <- 47.5
age <- 122
mass <- mass * 2.0
age <- age - 20



# Manipulating Data
## What type of thing 'dat' is
class(dat)
dim(dat)

## to get a single value from the data frame
## provide an index in square brackets
## first value in dat, row 1, column 1
dat[1, 1]

## middle value in dat, row 30, column 20
dat[30, 20]

## function c, which stands for combine
dat[c(1, 3, 5), c(10, 20)]

## the : operator
1:5
3:12


## select the first ten columns of values for the first four rows
dat[1:4, 1:10]

## first ten columns of rows 5 to 10
dat[5:10, 1:10]


## select all rows or all columns
## All columns from row 5
dat[5, ]

## All rows from column 16-18
dat[, 16:18]


# Addressing Columns by Name
## first row, all of the columns
patient_1 <- dat[1, ]
## max inflammation for patient 1
max(patient_1)

## max inflammation for patient 2
max(dat[2, ])

## minimum inflammation on day 7
min(dat[, 7])

## mean inflammation on day 7
mean(dat[, 7])

# median inflammation on day 7
median(dat[, 7])

# standard deviation of inflammation on day 7
sd(dat[, 7])


# Forcing Conversion

## Summarize function
summary(dat[, 1:4])


# Getting Help
## To learn about a function in R, e.g. apply, we can 
## read its help documention by running 
help(apply) # or 
?apply

# average inflammation of each patient 
avg_patient_inflammation <- apply(dat, 1, mean)

#  average inflammation of each day 
avg_day_inflammation <- apply(dat, 2, mean)


# Efficient Alternatives
# Subsetting Data
animal <- c("m", "o", "n", "k", "e", "y")
# first three characters
animal[1:3]

# last three characters
animal[4:6]

# Question
# Subsetting More Data
## Suppose you want to determine the maximum inflammation
## for patient 5 across days three to seven. To do this
## you would extract the relevant subset from the data
## frame and calculate the maximum value. Which of the
## following lines of R code gives the correct answer?

max(dat[5, ])
max(dat[3:7, 5])
max(dat[5, 3:7])
max(dat[5, 3, 7])


# Question
# Subsetting and Re-Assignment
# Using the inflammation data frame dat from above: Let’s 
# pretend there was something wrong with the instrument on
# the first five days for every second patient 
# (#2, 4, 6, etc.), which resulted in the measurements being
# twice as large as they should be.

# 1. Write a vector containing each affected patient (hint: ?seq)
# 2. Create a new data frame in which you halve the first five 
#    days’ values in only those patients
# 3. Print out the corrected data frame to check that your
#    code has fixed the problem

# 1. 
whichPatients <- seq(2, 60, 2) # i.e., which rows

# 2.
datNew <- dat
datNew <- (datNew[seq(2, 60, 2), c(1:5)]) / 2

# 3. 
datNew
dim(datNew)


# Question
# Using the Apply Function on Patient Data
## Challenge: the apply function can be used to summarize 
## datasets and subsets of data across rows and columns 
## using the MARGIN argument. Suppose you want to calculate 
## the mean inflammation for specific days and patients in 
## the patient dataset (i.e. 60 patients across 40 days).

# Please use a combination of the apply function and indexing
# to:
## 1. calculate the mean inflammation for patients 1 to 5 over
##    the whole 40 days
## 2. calculate the mean inflammation for days 1 to 10 (across
##    all patients).
## 3. calculate the mean inflammation for every second day
##    (across all patients).

# 1. 
apply(dat[c(1:5), ], 1, mean)
# 2. 
apply(dat[, c(1:10)], 2, mean)
# 3.
apply(dat[, seq(2, 40, by = 2)], 2, mean)


# Plotting
plot(avg_day_inflammation)
max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)

# Question
# Plotting Data
## Create a plot showing the standard deviation of the 
## inflammation data for each day across all patients.

sd_day_inflammation <- apply(dat, 2, sd)
plot(sd_day_inflammation)



############## 4) Data Types and Structures ####
# Visit http://swcarpentry.github.io/r-novice-inflammation/13-supp-data-structures/index.html

# Understanding Basic Data Types and Data Structures in R

# R has 6 basic data types:
"a" # character
"swc" # character
2 # numeric
15.5 # numeric
2L # integer (the L tells R to store this as an integer)
TRUE # logical
FALSE # logical
1+4i # complex (complex numbers with real and imaginary parts)

# R provides many functions to examine features of vectors and other objects
class() # what kind of object is it (high-level)?
typeof() # what is the object’s data type (low-level)?
length() # how long is it? What about two dimensional objects?
attributes() # does it have any metadata?

# Example
x <- "dataset"
typeof(x)
attributes(x)

y <- 1:10
y
typeof(y)
length(y)

z <- as.numeric(y)
z
typeof(z)


# R has many data structures:
## atomic vector
## list
## matrix
## data frame
## factors

# Vectors
## The Different Vector Modes
vector() # an empty 'logical' (the default) vector

vector("character", length = 5) # a vector of mode 'character' with 5 elements

character(5) # the same thing, but using the constructor directly

numeric(5)   # a numeric vector with 5 elements

logical(5)   # a logical vector with 5 elements

## create vectors by directly specifying their content
x <- c(1, 2, 3)
x

## vector of integers
x1 <- c(1L, 2L, 3L)

## logical vector
y <- c(TRUE, TRUE, FALSE, FALSE)

## character vector
z <- c("Sarah", "Tracy", "Jon")


## Examining Vectors
typeof(z) # provide useful information about your vectors and R objects i
length(z)
class(z)
str(z)

## Adding Elements
z <- c(z, "Annette")
z

z <- c("Greg", z)
z

## Vectors from a Sequence of Numbers
series <- 1:10
seq(10)
seq(from = 1, to = 10, by = 0.1)


# Missing Data
## R supports missing data in vectors. They are represented
## as NA (Not Available) and can be used for all the vector
## types covered in this lesson:
x <- c(0.5, NA, 0.7)
x <- c(TRUE, FALSE, NA)
x <- c("a", NA, "c", "d", "e")
x <- c(1+5i, 2-3i, NA)

# The function is.na() indicates the elements of the vectors
## that represent missing data
x <- c("a", NA, "c", "d", NA)
y <- c("a", "b", "c", "d", "e")
is.na(x)

is.na(y)

# unction anyNA() returns TRUE if the vector contains any 
## missing values
anyNA(x)
anyNA(y)


# Other Special Values
## Inf is infinity
1/0

# NaN means Not a Number
0/0

# What Happens When You Mix Types Inside a Vector?
## coercion
xx <- c(1.7, "a") # numeric, character
xx <- c(TRUE, 2) # logical, numeric
xx <- c("a", TRUE) # character, logical

# control how vectors are coerced explicitly using the 
# as.<class_name>() functions:

as.numeric("1")
as.character(1:2)

# Question
# Do you see a property that’s common to all these vectors above?


# Objects Attributes
length(1:10) 
nchar("Software Carpentry")

# Matrix
## the elements of a matrix must be of the same data type
m <- matrix(nrow = 2, ncol = 2)
m

dim(m)
m <- matrix(c(1:3))
class(m)
typeof(m)

## Data types of matrix elements
FOURS <- matrix(
  c(4, 4, 4, 4),
  nrow = 2,
  ncol = 2)

# Question
## Given that typeof(FOURS[1]) returns "double", what would you
## expect typeof(FOURS) to return? How do you know this is the
## case even without running this code?

## Matrices in R are filled column-wise.
m <- matrix(1:6, nrow = 2, ncol = 3)

## Other ways to construct a matrix
m      <- 1:10
dim(m) <- c(2, 5)

## Another way is to bind columns or rows using rbind() and cbind()
x <- 1:3
y <- 10:12
cbind(x, y)

rbind(x, y)

## use the byrow argument to specify how the matrix is filled
mdat <- matrix(c(1, 2, 3, 11, 12, 13),
               nrow = 2,
               ncol = 3,
               byrow = TRUE)
mdat

## Elements of a matrix can be referenced by specifying the 
## index along each dimension (e.g. “row” and “column”) in 
## single square brackets.
mdat[2, 3]


# List
## Create lists using list() or coerce other objects using as.list()
x <- list(1, "a", TRUE, 1+4i)
x

x <- vector("list", length = 5) # empty list
length(x)

## The content of elements of a list can be retrieved by using
# double square brackets.
x[[1]]

## Vectors can be coerced to lists as follows:
x <- 1:10
x <- as.list(x)
length(x)

# Question
## Examining Lists
## 1. What is the class of x[1]?
## 2. What is the class of x[[1]]?

## Elements of a list can be named (i.e. lists can have the names attribute)
xlist <- list(a = "Karthik Ram", b = 1:10, data = head(mtcars))
xlist
names(xlist)


# Question
## Examining Named Lists
## 1. What is the length of this object?
## 2. What is its structure?
  

# Data Frame
## Creating Data Frames by Hand

dat <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
dat

is.list(dat)
class(dat)
## elements of data frame can be referenced by specifying 
## the row and the column index in single square brackets
dat[1, 3]

## data frames are also lists, it is possible to refer to columns 
## (which are elements of such list) using the list notation
dat[["y"]]

dat$y

# Questions
# Column Types in Data Frames
# Knowing that data frames are lists, can columns be of different type?
# What type of structure do you expect to see when you explore 
# the structure of the PlantGrowth data frame? Hint: Use str().

############## 5) Creating Functions ####
# Visit http://swcarpentry.github.io/r-novice-inflammation/02-func-R/index.html

# define a function fahrenheit_to_celsius that converts temperatures from
# Fahrenheit to Celsius

fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

# Automatic Returns

## explicitly define the return statement
## freezing point of water
fahrenheit_to_celsius(32)

## boiling point of water
fahrenheit_to_celsius(212)


# Composing Functions
## turn Celsius into Kelvin
celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}

## freezing point of water in Kelvin
celsius_to_kelvin(0)


# converting Fahrenheit to Kelvin
fahrenheit_to_kelvin <- function(temp_F) {
  temp_C <- fahrenheit_to_celsius(temp_F)
  temp_K <- celsius_to_kelvin(temp_C)
  return(temp_K)
}

## freezing point of water in Kelvin
fahrenheit_to_kelvin(32.0)



# Nesting Function Calls
## freezing point of water in Fahrenheit
celsius_to_kelvin(fahrenheit_to_celsius(32.0))

# Question
## Create a Function
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"  # R interprets a variable with a single value as a vector
# with one element.
highlight(best_practice, asterisk)

# solution
highlight <- function(content, wrapper) {
  answer <- c(wrapper, content, wrapper)
  return(answer)
}

# Question
## Write a function called edges that returns a vector made up 
## of just the first and last elements of its input:

dry_principle <- c("Don't", "repeat", "yourself", "or", "others")
edges(dry_principle)

edges <- function(v) {
  first <- v[1]
  last <- v[length(v)]
  answer <- c(first, last)
  return(answer)
}

# The Call Stack
# Function calls are managed via the call stack

# Named Variables and the Scope of Variables
input_1 <- 20
mySum <- function(input_1, input_2 = 10) {
  output <- input_1 + input_2
  return(output)
}

# Question
## 1. Given the above code was run, which value does 
## mySum(input_1 = 1, 3) produce?

## 2. If mySum(3) returns 13, why does mySum(input_2 = 3)
## return an error?


# Testing, Error Handling, and Documenting
## Testing that functions are working correctly
center <- function(data, midpoint) {
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

# create a vector of 0s and then center that around 3
z <- c(0, 0, 0, 0)
z

center(z, 3)

# center the inflammation data from day 4 around 0
dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
centered <- center(dat[, 4], 0)
head(centered)

# original mean
mean(dat[, 4])

# centered mean
mean(centered)

# original standard deviation
sd(dat[, 4])

# centered standard deviation
sd(centered)

# difference in standard deviations before and after
sd(dat[, 4]) - sd(centered)

# comparing two objects allowing for rounding errors
all.equal(sd(dat[, 4]), sd(centered))

# Error Handling
# new data object and set one value in column 4 to NA
datNA <- dat
datNA[10,4] <- NA

# returns all NA values
center(datNA[,4], 0)

# provide the na.rm=TRUE argument
center <- function(data, midpoint) {
  new_data <- (data - mean(data, na.rm=TRUE)) + midpoint
  return(new_data)
}

center(datNA[,4], 0)

# hand this function a factor or character vector?
datNA[,1] <- as.factor(datNA[,1])
datNA[,2] <- as.character(datNA[,2])

center(datNA[,1], 0)

center(datNA[,2], 0)

# Documentation
## A common way to put documentation in software is 
## to add comments like this:

center <- function(data, midpoint) {
  # return a new vector containing the original data centered 
  # around the midpoint.
  # Example: center(c(1, 2, 3), 0) => c(-1, 0, 1)
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

# Question
## Functions to Create Graphs
## Write a function called analyze that takes a filename as 
## an argument and displays the three graphs produced in the
## previous lesson (average, min and max inflammation over time). 
## analyze("data/inflammation-01.csv") should produce the graphs
## already shown, while analyze("data/inflammation-02.csv") 
## should produce corresponding graphs for the second data set.
## Be sure to document your function with comments.

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

# Rescaling
## Write a function rescale that takes a vector as 
## input and returns a corresponding vector of values
## scaled to lie in the range 0 to 1. (If L and H are 
## the lowest and highest values in the original vector,
## then the replacement for a value v should be (v-L) / (H-L).) 
## Be sure to document your function with comments

## Test that your rescale function is working properly 
## using min, max, and plot

rescale <- function(v) {
  # Rescales a vector, v, to lie in the range 0 to 1.
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L)
  return(result)
}

# Defining Defaults
## we can pass the arguments to read.csv without naming them
dat <- read.csv("data/inflammation-01.csv", FALSE)

dat <- read.csv(header = FALSE, file = "data/inflammation-01.csv")

## should generate an error
dat <- read.csv(FALSE, "data/inflammation-01.csv")

## let’s re-define our center function like this
center <- function(data, midpoint = 0) {
  # return a new vector containing the original data centered around the
  # midpoint (0 by default).
  # Example: center(c(1, 2, 3), 0) => c(-1, 0, 1)
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

test_data <- c(0, 0, 0, 0)
center(test_data, 3)

more_data <- 5 + test_data
more_data

center(more_data)

## how R matches values to arguments
display <- function(a = 1, b = 2, c = 3) {
  result <- c(a, b, c)
  names(result) <- c("a", "b", "c")  # This names each element of the vector
  return(result)
}

## no arguments
display()

## one argument
display(55)

## two arguments
display(55, 66)

## three arguments
display(55, 66, 77)

## only setting the value of c
display(c = 77)


# Matching Arguments
## help for read.csv()
?read.csv

## This tells us that read.csv() has one argument, file, that 
## doesn’t have a default value, and six others that do. Now 
## we understand why the following gives an error
read.csv(file, header = TRUE, sep = ",", quote = "\"",
         dec = ".", fill = TRUE, comment.char = "", ...)

## understand why the following gives an error
dat <- read.csv(FALSE, "data/inflammation-01.csv")


# Question
# A Function with Default Argument Values
## Rewrite the rescale function so that it scales a vector to 
## lie between 0 and 1 by default, but will allow the caller to 
## specify lower and upper bounds if they want. Compare your 
## implementation to your neighbor’s: Do your two implementations
## produce the same results when both are given the same input 
## vector and parameters?

rescale <- function(v, lower = 0, upper = 1) {
  # Rescales a vector, v, to lie in the range lower to upper.
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L) * (upper - lower) + lower
  return(result)
}



############## 6) END ####


#[END]