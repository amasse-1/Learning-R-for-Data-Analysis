launch<-function(num=5){
  cat(num, "- ")
  num<-(num-1)
  
  if(num<0){
    cat(" ") #did this instead of 'return NULL' to avoid an "unexpected NULL" error
  }
  else{
      launch(num)}
}

graph<-function(x,y,...){
  plot(x,y,col="Red", type="o", ...)
}

launch()
graph(1:20, rnorm(20), xlab="X Axis", ylab="Y Axis")