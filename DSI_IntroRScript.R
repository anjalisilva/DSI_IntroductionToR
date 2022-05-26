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

x <- 5
x # auto-printing
print(x) # explicit printing using print() function
typeof(x) # "double" obtained using typeof() function
length(x) # 

print("Hello world")

# Built-in functions are part of R standard 
# or base packages
library(help = "base")
library(help = "stats")


sessionInfo()

R.Version()

ls()


# getting help
?"<-"  # help on assignment operator
help("<-") # help on assignment operator
?typeof # help on typeof function
?class # help on class function
?print # help on print function


# R Data Types


############## 4) Vectors ####

############## 5) Matrices and Lists ####

############## 6) Data Frames ####

############## 7) Data Import/Export ####

############## 8) Functions ####

############## 9) Graphics ####

############## 10) Next Steps ####


#[END]