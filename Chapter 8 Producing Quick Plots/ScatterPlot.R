x<-1:10
y<-x^2

library(ggplot2)

qplot(x,y, geom=c("point", "line"), color=I("Red"))
