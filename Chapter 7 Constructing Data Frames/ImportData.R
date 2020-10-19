setwd("C://Users//Anthony//Desktop//Coding//learning_R//Chapter 7 Constructing Data Frames")
cat("Working Directory:", getwd(), "\n\n")
frame<-read.csv("avocado.csv") #gotten from: https://www.kaggle.com/neuromusic/avocado-prices
print(frame)