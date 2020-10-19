# Script Name:    Comment.R
# Created on:     March 6, 2019
# Author:         Anthony Masse
# Purpose:        Echo user input
# Version:        1.0
# Execution:      Must be run as Source to await user input

# Request user input
name<-readline("Please enter your name: ")

#Concatenate input and strings
greeting<- paste("Welcome", name, "!")

#Output concatenated string
print(greeting)