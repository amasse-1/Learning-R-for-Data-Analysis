frame<-read.csv("avocado.csv")
cat("\nHead...\n")
print(head(frame, n=3))

data<-frame[1,2]
cat("\nRow #1, Column #2:", data, "\n")

data<-frame[2,"AveragePrice"]
cat("\nRow #2, Column #2:", data, "\n")

data<-frame$AveragePrice[3]
cat("\nRow #3, Column #2:", data, "\n\n")

#prints entire row (or a good portion of it)
print(levels(frame$Date)) #using Date column
