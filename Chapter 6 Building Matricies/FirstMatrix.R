data<-seq(1:32)
table<-matrix(data, nrow=4, ncol=8)
print(table)

cat("\nVector?:", is.vector(table), 
    "\tMatrix?:", is.matrix(table))

cat("\n\nCell 4,5 Contains:", table[4,5])
#changeing the value in row 4 column 5 to havr the value 10,
#after printing out the original value
table[4,5]<-10


#searches all the cells for a specific value and 
#identifying the location of cells that contains that value
cell<-which(table == 10, arr.ind = TRUE)
cat("\n\nValue 10 Search:\n")
print(cell)