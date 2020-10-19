frame<-read.csv("avocado.csv")
top<-frame[frame$AveragePrice > 2.95, ]
cat("\nHighest Average Prices...\n")
print(top)

mid<-frame[frame$AveragePrice > 1.50 & frame$AveragePrice < 2.95, ] 
cat("\nMiddle Average Prices...\n")
print(mid)

region<-frame[grep("Boston", frame$region), ]
cat("\nRegion of Boston...\n")
print(region)