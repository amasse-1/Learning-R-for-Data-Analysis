frame<-read.csv("avocado.csv")
edge<-frame[c(33,24,5,12), ]
print(edge)

edge.row<-edge[1,]
cat("\nRow...\n")
print(edge.row)

cat("Data Frame?:", is.data.frame(edge.row))

edge.col<-edge[ ,3]
cat("\n\nColumn...\n")
print(edge.col)

cat("Data Frame?:", is.data.frame(edge.col))
cat("\t Vector?:", is.vector(edge.col)) #changed column 2 to column 3 to have a vector

edge.col<-edge[ ,3, drop=FALSE]
cat("\n\nColumn...\n")
print(edge.col)

cat("Data Frame?:", is.data.frame(edge.col))
cat("\t Vector?:", is.vector(edge.col))