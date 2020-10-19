greet<-function(){
  print("Hello from R!")
}
greet()

f2c<-function(degrees){
  result<-((degrees-32)*(5/9))
}

cat("Body Temperature 98.6 °F = ",f2c(98.6),  "°C\n\n")
#wont actually print out the results, result is only a local variable and cannot be 
#called outside the function block
print(result)