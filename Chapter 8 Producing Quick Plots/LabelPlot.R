frame<-read.csv("auto.csv")

library(ggplot2)
Cylinders<-factor(frame$cyl)
qplot(mpg, wt, data = frame, geom=c("point", "smooth", "text"), color=Cylinders, 
      xlab = "Miles Per Gallon (US)", ylab = "Weight (1000lbs)", main = "Automobile Comparison", 
      label=frame$model, xlim = c(8,35), ylim=c(0,6)) 

