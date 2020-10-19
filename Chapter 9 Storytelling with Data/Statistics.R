frame<-read.csv("DataSet-ProfSalaries.csv")
library(ggplot2)

ggplot(data=frame, aes(x=rank, y=salary)) + geom_jitter(aes(color=rank)) +geom_boxplot(aes(fill=rank), alpha=0.5)
