frame<-read.csv("avocado.csv")

display<-function(title){
  cat("\n", title, "...\n")
  print(head(frame, n=2))
}

display("Original Columns")
colnames(frame)<-c("Index", "Date")
display("Renamed Columns")

frame$year<-paste(as.character(frame$Date), sep="")
frame$Date<-NULL
display("Switched Columns")