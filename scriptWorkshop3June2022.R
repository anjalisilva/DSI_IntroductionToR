########## Intro ####
# Date: 3 June 2022
1+2

# slide 32
# current location
getwd()

# set working directory
setwd("/Users/as/Desktop/")

# recommend
#Session -> Set working directory -> choose directory

# camelCase style for variable
testVariable

# dotstyle
test.Variable

#pathhole style
test_Variable

# slide 38
test1 <- 123 # object/variable assigned value 123
# <- is the assignment operator
test1 # autoprint

sum(1, 3) # sum function
# arguments - values provided by the user, 1 and 3
# return value - value provided back, 4

# slide 40
# built-in functions in R
x <- 5
x
print(x) # explicit printing
typeof(x) # double
length(x) # 1

print("Hello World")
print('Hello World')

# slide 41
library(help = "base") # base is build-in package in R
library(help = "stats") # stats is build-in package in R
mean()

# slide 43
# to obtain session information
sessionInfo()

# Version information
R.Version()


# show objects in workspace
ls()

# slide 44
# getting help

help(mean)
?mean
??average

########## R Data Types ####
# slide 46
# R data types

# numeric
xValue <- 100
xValue
typeof(xValue)

# numeric integers
xValue2 <- 100L
typeof(xValue2)

# logical
yValue <- FALSE 
typeof(yValue)
TRUE
FALSE
T
F

zValue <- "hello"
typeof(zValue)

x <- c(2 + 0i, 5 + 4i)
x<-c(2+0i,5+4i)
typeof(x)

Inf
1/Inf

NA # Not available or not applicable
NaN # Not a number - undefined value

0/0

xValue <- 1L
typeof(xValue)
xValue <- 2
xValue <- "Two"
typeof(xValue)


# slide 49
# Concatenating
# c() used to concatenate elements together

x <- c(0.5, 0.6)
typeof(x)
class(x)

x <- c(1:5)
x
y <- (1:5)
y

x <- c("a", "b")
x

x <- c(TRUE, FALSE)
x
typeof(x)


# slide 50
x <- "hello"
y <- "world"
paste(x, y)
# paste coverts input to strings and concatenate

x <- c(1:5)
x
class(x)
typeof(x)

is.vector(x)


# slidde 52
# NA denotes missing values
x <- c(1, 3, NA, 4, 5)
x
class(x)
typeof(x)


y <- c(1, 3, NaN, 4, 5)
class(y)
typeof(y)

is.na()
is.nan()

is.na(x)
is.nan(y)

# slide 56 - Question 3
distanceSchoolKM <- 2
distanceSchoolKM

distanceSchoolMeters <- distanceSchoolKM * 1000
distanceSchoolMeters

# slide 58 - Question 4

areaHectares <- 2.5
2.47 * areaHectares

areaHectares

x <- 2L
x

########## Vectors ####

# vectors are the basic data structure in R
# many ways to create a vector

y <- 1L:5L
y
is.vector(y)
class(y)


x <- 1.2:5.2
x
is.vector(x)
class(x) 

z <- c(1, 2, 3, 4, 5)
is.vector(z)

a <- seq(from = 1, to = 5, by = 2)
a
is.vector(a)

# difference between class and typeof
x
class(x)  <- "userInput"

# continue vectors
y <- paste("A", 1:5, sep = " ")
y
is.vector(y)

# rep
letters
y <- rep(letters[1:5], 3)
y
is.vector(y)

# slide 65
# initialize a vector

numericVec <- vector(mode = "numeric", length = 5)
numericVec
is.vector(numericVec)

characterVec <- vector(mode = "character", length = 5)
characterVec
is.vector(characterVec)

# slide 66 
# implicit/automatic coercion - done by R
y <- c(2.2, "a")
y

# logical < integer < numeric < character


# explicit coercion
x <- 1L:10L
x
class(x)
typeof(x)

x <- c("1", "2")
y <- as.character(x)
y



# slide 68
w <- c("a", "b", "c")
w
q <- as.numeric(w)
q


# slide 70 - content of vectors
x <- 20:30
x
length(x) # 11
x[1]
x[15]
x[c(1, 5)]

y <- x[-c(1, 5)] # remove elements
y

#slide 71 - Question 8

testVector <- c(1:10)
firstElement <- testVector[1] # access one element
firstElement
removefirstElement <- testVector[-1]
removefirstElement

posNegAccess <- testVector[c(-1, 5)]


# modify vector
x <- 20:30
x
x[1] <- 10
x
x[1:3] <- 10
x

x[x < 25] <- 5 # using a condition
x

# slide 75 - Question 9
testVector <- c(1:10)
testVector
testVector[c(2, 4, 6, 8, 10)] <- 0

testVector <- c(1:10)
testVector[seq(from = 2, to = 10, by = 2)] <- 0

########## Matrices and Lists ####
# slide 77

?matrix

matrixOne <- matrix(data = c(1:5), nrow = 2, ncol =3)
matrixOne

matrixTwo <- matrix(data = c(1:6), nrow = 2, ncol =3)
matrixTwo
dim(matrixTwo)  # 2 x 3; 2 rows and 3 columns
nrow(matrixTwo) # 2 rows
ncol(matrixTwo) # 3 columns
attributes(matrixTwo)

# slide 79
a <- c(1:4)
a
b<- c(5:8)
b

cVariable <- cbind(a, b)
dim(cVariable)

cVariable2 <- rbind(a, b)
dim(cVariable2)

# slide 80 - Question 10

matOne <- matrix(data = 1:6, nrow = 2, ncol = 3)
matOne
matTwo <- matrix(data = 7:12, nrow = 2, ncol = 3)
matTwo

matThree <- rbind(matOne, matTwo)
matThree
dim(matThree)

matFour <- cbind(matOne, matTwo)
matFour
dim(matFour)


# slide 81 - Question 11

matNumeric <- matrix(data = 1:6, nrow = 2, ncol = 3)
matNumeric
matCharacter <- matrix(data =
                         c("a", "b", "c", "d", "e", "f"),
                       nrow = 2, ncol = 3)
matCharacter

matResult <-  cbind(matNumeric, matCharacter)
matResult

# slide 82 - Question 12

matNumeric <- matrix(data = 1:6, nrow = 2, ncol = 3)
matNumeric
dim(matNumeric)

matNumeric[1, 2] <- 10
matNumeric

# slide 83 - Question 13
?matrix
matThirteen <- matrix(data = c(1:6), nrow = 2, ncol = 3,
                      byrow = TRUE)
matThirteen
matThirteen2 <- matrix(data = c(1:6), nrow = 2, ncol = 3,
                      byrow = FALSE)

# Lists
listOne <- list(16, "abc", TRUE, 5+4i)
is.list(listOne)
listOne
length(listOne)
typeof(listOne)
class(listOne)

# access elements
listOne[[1]]
listOne[[2]]
listOne[[3]]

listTwo <- vector(mode ="list", length = 5)
is.list(listTwo)

# slide 85
listDestinations1 <- list(1, 2, 3)
listDestinations1
names(listDestinations1)
names(listDestinations1) <- c("Canada", "Alaska", "England")
names(listDestinations1)
listDestinations1[[1]]
listDestinations1$Canada


# 2nd Part - slide 4

########## Data Frames ####

# slide 6
dataFrameExample <- data.frame(numbers = c(1:4),
                               sex = c("M", "M", "F", "F"))
dataFrameExample
dim(dataFrameExample) # 4 rows and 2 columns
class(dataFrameExample) # data frame
names(dataFrameExample) # "numbers" "sex"    

workshop <- data.frame(workshopNumber = c(1:5),
                       numberAttendees = c(50, 30, 20, 50, 50),
                       duration = c(1, 1.5, 3, 1.5, 1.5))
workshop

dataMatrix <- data.matrix(dataFrameExample)
dataMatrix


# slide 8 - Question 14
question14 <- data.frame(numbers = c(1:4),
                         sex = c("M", "M", "F", "F"), 
                         age = c(30L, 31L, 40L, 35L),
                         height = c(72, 70, 65, 62.4))
question14
dim(question14)

# slide 9 - Question 15

question14[, 4]
question14[, "height"]

question14cm <- question14 # create new data frame
question14cm[, 4] <- question14cm[, 4] * 2.54
question14cm

question14cm <- question14
question14cm[, "height"] <- question14cm[, "height"] * 2.54

# slide 10
# Booleans

TRUE
FALSE
T
F

testValue <- FALSE
typeof(testValue)
is.logical(testValue)
! # NOT operator
  
! testValue

a <- c(1:5)
a
a < 2

# == equivalent operator
  
a == 2  


# & - AND operator
a <- 45
(a > 55) & (a < 50)

# | pipe - OR operator

b <- 10
(b < 10) | (b > 5)
  
# slide 14/15 - Question 16/17

numericVec <- c(1.1, 3, 5.3, 2)
numericVec > 5
numericVec[numericVec > 5] # 5.3





########## Data Import/Export ####

# slide 17
data(package = "datasets")

AirPassengers  # example dataset
head(AirPassengers) 
tail(AirPassengers)
View(AirPassengers)
class(AirPassengers)
?AirPassengers


women
View(women)
?women
dim(women)
head(women)
class(women)
names(women)

women$height > 60 # slicing 
table(women$height > 60)
women[women$height > 60, ]
women[women$height > 60, "weight"] # access weight of women with height
# over 60
women[women$height > 60, 2]

women$height # height column
women[, 1] # height column

# slide 19
# writing files
?write.csv
getwd()
# save file to data subdirectory
write.csv(x = women, file = "data/women.csv")

# save file to current directory
write.csv(x = women, file = "women.csv")

# slide 20
# read in file
getwd()
womenNew <- read.csv(file = "women.csv")
womenNew
dim(womenNew) # 15 by 3

womenNew2 <- read.csv(file = "women.csv", row.names = 1)
womenNew2
dim(womenNew2) # 15 by 2
View(womenNew2)


# slide 27
# Writing functions

# function for summing two numbers
firstFunction <- function(argOne, argTwo) {
  argThree <- argOne + argTwo
  return(argThree)
}
firstFunction 
firstFunction(argOne = 1, argTwo = 2)

# slide 26
# CRAN 
# Bioconductor
# GitHub


# CRAN packages
# mclust - CRAN
install.packages("mclust")
library("mclust")
ls("package:mclust")
?Mclust

# Biocondutor packages
install.packages("BiocManager")
BiocManager::install("ACME")
library("ACME")
ls("package:ACME")
?chromosome

# GitHub packages
# MPLNClust

install.packages("devtools")
library("devtools")
devtools::install_github("anjalisilva/MPLNClust")

install.packages("rmarkdown")
library("rmarkdown")
devtools::install_github("anjalisilva/MPLNClust",
                         build_vignettes = TRUE,
                         force = TRUE)
library("MPLNClust")
ls("package:MPLNClust")
browseVignettes("MPLNClust")

# slide 47 - Question 18
# covid19.analytics - from CRAN
install.packages("covid19.analytics")
library("covid19.analytics")
ls("package:covid19.analytics")

# GitHub
install.packages("devtools")
library("devtools")
devtools::install_github("mponce0/covid19.analytics")






