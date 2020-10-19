frame<-read.csv("auto.csv")

library(ggplot2)
qplot(mpg, wt, data=frame, size=mpg, color=I("Green"))
