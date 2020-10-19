high.temp<-read.csv("high_temp.csv")
low.temp<-read.csv("low_temp.csv")

display<-function(frame){
  cat("\nAnnual Temperatures (°C)...\n")
  print(frame)
}

display(high.temp)
display(low.temp)

avg.temp<-merge(high.temp, low.temp, by.x="State", by.y="State.Code")
display(avg.temp)

avg.temp$Capital<-NULL
avg.temp$Average<-(avg.temp$High + avg.temp$Low)/2
display(avg.temp)
