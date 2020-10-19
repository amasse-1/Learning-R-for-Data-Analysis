frame<-read.csv("auto.csv")
print(tail(frame))

library(ggplot2)
qplot(mpg, wt, data=frame, geom=c("point", "smooth"))

