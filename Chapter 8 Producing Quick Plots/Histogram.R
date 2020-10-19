sex <- rep(c("Female", "Male"), each = 500)
height <- c(rnorm(500, 65), rnorm(500,69))

frame <- data.frame(sex, height)

head(frame, n=3)
tail(frame, n=3)
library(ggplot2)

qplot(height, data=frame, geom="histogram", fill=sex, bins=40, 
      ylab="Frequency", xlab="Height in Inches", 
      main="Average Adult Height (USA)"
)

qplot(height, data=frame, geom="density", size=I(1), color=sex, linetype=sex, 
      ylab="Density", xlab="Height in Inches", 
      main="Average Adult Height (USA)"
)

