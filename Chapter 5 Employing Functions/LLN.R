#LLN = Law of Large Numberstfc 
qty <- 10
while(qty<=1000000){
  num <-0
  for(i in rnorm(qty, mean=0, sd=1)){
    if((i>=-1)&&(i<=1)) num <-num+1
  }
  num<-(num/(qty/100))
  cat("For", qty, "Generated Random Numbers:", num, "%\n")
  qty<-qty*10
}

#Example Output:
#For 10 Generated Random Numbers: 80 %
#For 100 Generated Random Numbers: 62 %
#For 1000 Generated Random Numbers: 67.9 %
#For 10000 Generated Random Numbers: 67.94 %
#For 1e+05 Generated Random Numbers: 68.426 %
#For 1e+06 Generated Random Numbers: 68.224 %