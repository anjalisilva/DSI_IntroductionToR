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


# slide 65
# There are multiple ways to create a vector:
?vector # vector using vector() function
# vector(mode, length )

# The atomic modes are ”logical”, ”integer”, 
# ”numeric” (synonym ”double”), ”complex”, 
# ”character” and ”raw”:

# Initialize vector of certain length
x <- vector(mode = "numeric", length = 5) 
x #00000

# Initialize vector of certain length
x <- vector(mode = "character", length = 10)
x # "" "" "" "" "" "" "" "" "" ""


# slide 66
# If mixing objects of two different classes in a vector, every element in the vector is forced to be same class.
y <- c(2.2, "a")
class(y) # "character"
y


# slide 67
x <- 1L:10L
x # 1  2  3  4  5  6  7  8  9 10
class(x) # "integer"

z <- as.character(x)
z # "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"
class(z) # "character"


# slide 68
# Sometimes objects can be coerced from one class to
# another using the as.* functions:
w <- c("a", "b", "c")
w
class(w)
typeof(w)

q <- as.numeric(w)
q # NA NA NA


numbVar <- c("1", "2", "3")
class(numbVar)
typeof(numbVar)

numbVarChange <- as.numeric(c("1", "2", "3"))
class(numbVarChange)
typeof(numbVarChange)

numbVarChange <- as.integer(c("1", "2", "3"))
class(numbVarChange)
typeof(numbVarChange)


numbVarChange <- as.logical(c("1", "2", "3"))
numbVarChange
class(numbVarChange)
typeof(numbVarChange)

# slide 69
# Question 7
# Vector index in R starts from .


# slide 70
# To access the contents of the vector use [ ]

x <- 20:30 # vector
x # 20 21 22 23 24 25 26 27 28 29 30
length(x) # 11

x[1] # 20
x[15] # NA
x[c(1, 2, 4)] # 20 21 23


#To remove elements:
x[c(-2, -4)]


# slide 71
# Question 8:
# Can you mix positive and negative integers when
# accessing elements of a vector?

# slide 72
x <- 20:30 # vector
x # 20 21 22 23 24 25 26 27 28 29 30
x[c(2, -4)] # ?

mixVector <- 1:100
mixVector[c(2, -4)] # error

mixVector[c(2, 4)] # means get elements at 2nd and 4th place
mixVector[c(-4)] # this removes the element at 4th position


# slide 73
# To modify vectors:
x <- 20:30 # vector
x # 20 21 22 23 24 25 26 27 28 29 30

x[1] <- 10
x # 10 21 22 23 24 25 26 27 28 29 30

x[1:3] <- 10
x # 10 10 10 23 24 25 26 27 28 29 30

x[x < 25] <- 5
x 

# slide 75
# Question 9: 
# Create a numeric vector called `testVector' containing
# numbers 1:10. Replace every second element of the vector
# with 0. 

testVector <- c(1:10)
testVector[c(2, 4, 6, 8, 10)] <- 0
testVector[seq(from = 2, to = 10, by = 2)] <- 0



############## 5) Matrices and Lists ####

# slide 77

?matrix
matrixOne <- matrix(data = 1:5, nrow = 2, ncol = 3)


# slide 78
matrixOne <- matrix(data = 1:6, nrow = 2, ncol = 3)
matrixOne

dim(matrixOne) # dimension 2 3
nrow(matrixOne) # 2
ncol(matrixOne) # 3
attributes(matrixOne)


# slide 79
# Column-binding or row-binding can be done by 
# cbind() and rbind() functions
a <- 1:4
b <- 5:8

c <- cbind(a, b)
c
dim(c) # 4 2

d <- rbind(a, b)
d
dim(d) # 2 4


# slide 80
# Question 10
# How would you bind the two matrices below?

matOne <- matrix(data = 1:6, nrow = 2, ncol = 3)
matTwo <- matrix(data = 7:12, nrow = 2, ncol = 3)

matColBound <- cbind(matOne, matTwo)
matRowBound <- rbind(matOne, matTwo)

# slide 81
# Question 11
# Can you bind the following two matrices? Explain 
# your observations. 

matNumeric <- matrix(data = 1:6, nrow = 2, ncol = 3)
matCharacter <- matrix(data = c("a", "b", "c", "d", "e", "f"),
                       nrow = 2, ncol = 3)

matColBound <- cbind(matNumeric, matCharacter)
matRowBound <- rbind(matNumeric, matCharacter)


# slide 82
# Question 12
# In the below matrix, alter position of first row, second
# column to numeric value of 10.
matNumeric <- matrix(data = 1:6, nrow = 2, ncol = 3)
matNumeric[1, 2]
matNumeric[1, 2] <- 10
matNumeric


# slide 83
# Question 13
# How would you generate the following matrix in R?
# Hint: see help documentation for matrix using ?matrix
matNumeric <- matrix(data = 1:6, nrow = 2, ncol = 3, 
                     byrow = TRUE)




# slide 84
# A list is represented as a vector but can contain
# objects of different classes.

listOne <- list(16, "abc", TRUE, 5 + 4i)
listOne
length(listOne) # 4
typeof(listOne) # "list"
class(listOne) # "list"


# access the contents of the list
# use square brackets
listOne[[1]] # 16
listOne[[2]] # "abc"
listOne[[4]] # "5+4i"


# slide 85
# Empty lists can be created using vector() function:
listTwo <- vector(mode = "list", length = 5)
listTwo
length(listTwo) # 5

# Lists can have names:
listDestinations1 <- list(1, 2, 3)
listDestinations1
names(listDestinations1) # NULL
names(listDestinations1) <- c("Canada", 
                              "Alaska",
                              "England")
listDestinations1
listDestinations1$Canada
listDestinations1$Alaska
listDestinations1$England

############## 6) Data Frames & Booleans ####

# show slide 5 - part 2

# slide 6


dataFrameExample <- data.frame(
                    numbers = 1:4,
                    sex = c("M", "M", "F", "F"))
dataFrameExample
class(dataFrameExample) # "data.frame"
dim(dataFrameExample) # 4 2
names(dataFrameExample) # "numbers" "sex"


# slide 7
# Data frames can be converted to a matrix using data.matrix().
dataMatrix <- data.matrix(dataFrameExample)
class(dataMatrix) # "matrix"
dim(dataMatrix) # 4 2



# slide 8
# Question 14
# Generate the following information into a data frame.

testFrame <- data.frame(
  numbers = 1:4,
  sex = c("M", "M", "F", "F"),
  age = c(30, 31, 40, 35),
  height = c(72, 70, 65, 62.4))


# Question 15
# After generating the data frame, you realize the
# height is recorded in inches but should be changed 
# to centimeters. How would you do this?
# Note, 1 inch = 2.54 cm.

testFrame <- data.frame(
  numbers = 1:4,
  sex = c("M", "M", "F", "F"),
  age = c(30, 31, 40, 35),
  height = c(72, 70, 65, 62.4))

testFrame$height 

testFrame$height * 2.54

# one method
testFrame$height <- testFrame$height * 2.54
testFrame[, 4] <- testFrame[, 4] * 2.54


# Question 16
# Given the below numeric vector 'numericVec', how can a user
# check if values are greater than 5?

numericVec <- c(1.1, 3, 5.3, 2)
numericVec > 5


# Question 17
# Given the below numeric vector 'numericVec', how can a user
# retrieve the value that is greater than 5?

numericVec <- c(1.1, 3, 5.3, 2)
numericVec > 5
numericVec[numericVec > 5]

############## 7) Data Import/Export ####

# slide 17
# To see the list of pre-loaded data in R:
data(package = "datasets")
AirPassengers # Example dataset
head(AirPassengers) # see first few entries
tail(AirPassengers) # see last few entries


# slide 18

# Let us look at another pre-loaded datasets:
women # another dataset (last)
?women
dim(women) # 15  2
class(women) # "data.frame"
head(women) # height and weight information
women$height > 60 # slicing
women[women$height > 60, ] # slicing

# slide 19
# Files can be written using functions like write.csv(), write.table():
getwd() # file will be saved here
write.csv(x = women, file = "data/women.csv")
# saving women dataset in current working directory


# slide 20
# Txt files can be read using read.table(”location of 
# the file”) or read.csv()
womenNew <- read.csv(file = "women.csv", row.names = 1)
womenNew
head(womenNew) # to view first part of object
tail(womenNew) # to view last part of object
dim(womenNew) #  15  2
womenNew[c(1:5), ] # to view first 5 rows
womenNew[, 1] # to view first column


# slide 21
# “+” is used for addition:
x <- 2.5 + 2
x # 4.5
y <- 2:15
sum(y) # 119
sum(y[1:3]) # 9



# slide 22
# “-” is used for subtraction:
x <- 2.5 - 2
x # 0.5

# “/” is used for division:
x <- 2 / 2 
x #1


# slide 23
# “*” is used for multiplication:
x <- 2 * 2 
x#4

# “%*% ” is used for matrix multiplication:
a <- matrix(1:6, nrow = 2, ncol = 3) # 2 x 3 matrix
a
b <- matrix(7:12, nrow = 3, ncol = 2) # 3 x 2 matrix
b
c <- a %*% b
c # 2 x 2 matrix


############## 8) Functions ####

# slide 28
firstFunction <- function(argumentOne, argumentTwo) {
  cat("\n First argument is", argumentOne, "\n")
  cat("\n Second argument is", argumentTwo, "\n")
  argumentThree <- argumentOne + argumentTwo
  cat("\n argumentOne + argumentTwo is", argumentThree, "\n")
  
  return(argumentThree)
}

firstFunction # “call” or“invoke” the function


# slide 29
firstFunction(argumentOne = 2,
              argumentTwo = 3)

firstFunction(2, 3) # values will take order of arguments

firstFunction(argumentOne = 3,
              argumentTwo = 5)

testValue <- firstFunction(argumentOne = 3,
                          argumentTwo = 5)
testValue
testValue + 2 # 10

firstFunction(1) # error because require two values


# slide 30

secondFunction <- function(argOne = 1, argTwo = 3) {
  cat("\n First argument is", argOne, "\n")
  cat("\n Second argument is", argTwo, "\n")
  argThree <- argOne + argTwo
  cat("\n argOne + argTwo is", argThree, "\n")
  return(argThree) 
  }

secondFunction # “call” or“invoke” the function

secondFunction(1, 2)

secondFunction(1) # no error because of default values

# slide 31
# Local and Global Variables

# slide 32

argOne <- "Hello"
anotherFunction <- function() {
  argOne <- 10
  return(argOne)
}
anotherFunction()

argOne # What would this return?


# slide 33
# Incorrect
dataAnalysis <- function() {
  heightData <- women$height 
  return(mean(heightData))
}
dataAnalysis() # will work only for women$height


# Recommended
dataAnalysis <- function(inputData) {
  meanOfHeight <- mean(inputData)
  return(meanOfHeight)
}
dataAnalysis(inputData = women$height)
# will work for any dataset with height information

# slide 35
# Non-base Functions

# slide 38
# Non-base Functions

# Install package from CRAN, case matters!
install.packages("mclust")
library("mclust") # to load and attach

# slide 39
vignette("mclust") # vignette for ‘mclust’
?'mclust-package' # get information on package
?mclust # get information on package
ls("package:mclust") # list all functions in package


# slide 40
# Running mclust
MclustResults <- mclust::Mclust(data = women) str(MclustResults) # provide the structure; list of 15 names(MclustResults)
MclustResults$G # There are four clusters in the dataset
# Citing the package
citation("mclust")


# slide 41
if (! requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# slide 43
BiocManager::install("GenomicFeatures")
library("GenomicFeatures")
# list all functions in the package
ls("package:GenomicFeatures")


# slide 45
# To down from GitHub, need to use ‘devtools’ pacakge.
library("devtools")
devtools::install_github("<Username>/<PackageName>",
                           build_vignettes = TRUE)

# Example: https://github.com/anjalisilva/mixGaussian
library("devtools")
devtools::install_github("anjalisilva/mixGaussian",
                           build_vignettes = TRUE)
library("mixGaussian")
ls("package:mixGaussian")


# slide 46
# Question 18:
# You are interested in R packages for analyzing 
# Covid-19 data for a project you are doing. So you
# search Google for such R packages.

# From GitHub
library("devtools")
devtools::install_github("mponce0/covid19.analytics", 
                         build_vignettes = TRUE)
library("covid19.analytics")
ls("package:covid19.analytics")


# From CRAN
install.packages("covid19.analytics")
library("covid19.analytics")



############## 9) Graphics ####

# slide 49
library(graphics) # to load and attach
?AirPassengers
# Monthly Airline Passenger Numbers 1949-1960
# plot
plot(AirPassengers)
plot(AirPassengers, type = "p")
plot(AirPassengers, type = "p", main = "Monthly Airline
         Passenger Numbers 1949-1960") # zoom

# slide 52
library(graphics) # to load and attach
# plot
plot(AirPassengers)
plot(AirPassengers, type = "l", main = "Monthly Airline
         Passenger Numbers 1949-1960") # zoom


# slide 53
library(graphics) # to load and attach
?AirPassengers
# Monthly Airline Passenger Numbers 1949-1960
# To have multiple plots in one overall plot using
par(mfrow = c(1, 2))
hist(AirPassengers) # histogram
boxplot(AirPassengers) # boxplot


# slide 55
library(graphics) # to load and attach
?iris ?pairs
pairs(iris[, c(1:4)], col = iris$Species, main = "Scatter plot of iris dataset")


# slide 57
library(graphics) # to load and attach
barplot(as.matrix(iris[, c(1:4)]),
        legend.text = TRUE,
        main = "Bar plot of iris dataset")
# Calculate column sums of iris dataset
colSums(as.matrix(iris[, c(1:4)]))


############## 10) Next Steps ####


#[END]