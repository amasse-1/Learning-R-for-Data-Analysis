frame<- read.csv("DataSet-Hurricanes.csv")
library(ggplot2)

#damage plot object
damage_plot<-ggplot(data=frame, aes(x=Year, y=DamageMillions,size=DamageMillions,color=WindMPH))

#using the damage plot
damage_plot+geom_point()+geom_line(size=0.5)

#damage plot in use with more specifics 
damage_plot+labs(title="US Atlantic Hurricanes",subtitle="1950-2012",x="Event Year", y="Damage $ Millions", 
                 caption="Source: Wikipedia")+geom_point()+geom_line(size=0.5)

#label object
label_object<-labs(title="US Atlantic Hurricanes",subtitle="1950-2012",x="Event Year", y="Damage $ Millions", 
                    caption="Source: Wikipedia")

#Damage plot with the label object
damage_plot+label_object+geom_point()+geom_line(size=0.5)

#themes
theme_object<-theme(
  plot.title = element_text(color = "Black", family = "Constantia"),
  plot.subtitle = element_text(color="Gray"),
  axis.title.x = element_text(color = "Black", face = "bold"),
  axis.title.y = element_text(color = "Black", face = "bold"), 
  plot.caption = element_text(color="Black", face = "italic"),
  legend.background = element_rect(color = "Gray")
)

#Damage Plot with themes 
damage_plot + label_object +geom_point()+geom_line(size=0.5)+theme_object

#Gender Plot
gender_plot<-ggplot(data=frame, aes(x=Sex, y=Deaths,color=Sex), size=3)

#using genderplot and other objects 
gender_plot + label_object+xlab("Gender")+ylab("Number of Fatalities")+
  geom_jitter()+geom_boxplot(aplha=0.5)+ylim(10,200)+theme_object

head(frame,n=8)

#fatal plot 
fatal_plot<-ggplot(data=frame, aes(x=Year,y=Deaths))

#using the fatal plot with more details
fatal_plot+label_object+ylab("Number of Fatalities")+geom_point(aes(color=WindMPH))+
  geom_text(aes(label=ifelse(Deaths>180, as.character(Name), ""), hjust=1.1))+geom_smooth()+theme_object

#windspeed ggplot object
wind_speed<-ggplot(data = frame, aes(x=Year,y=Deaths))

#using windspeed
wind_speed+label_object+ylab("Number of Fatalities")+geom_point(aes(color=WindMPH), size=10,shape=18)+
  xlim(1980,2000)+ylim(0,65)+theme_object

#strike plot
strike_plot<-ggplot(data = frame, aes(x=Year,y=Sex))

#using strike_plot and other objects
strike_plot+label_object+ylab("Number of Strikes")+geom_bar()+coord_cartesian(xlim = c(1980,2000))+theme_object

#texas frame
frame.tx<-frame[grep("TX", frame$AffectedStates),]

#texas plot
texas_plot<-ggplot(data = frame.tx, aes(x=Year, y=DamageMillions, size=Deaths, color=AffectedStates))

#texas plot in use 
texas_plot+label_object+geom_point(aes(size=Deaths))+facet_grid(AffectedStates~.)+theme_object

#florida frame
frame.fl<-frame[grep("FL", frame$AffectedStates),]

#florida plot
florida_plot <-ggplot(data = frame.fl,aes(x=Year))

#florida plot in use
florida_plot+label_object+ylab("Number of Strikes in Florida")+
  geom_histogram(aes(fill=AffectedStates),color="Black",bins=20)+theme_object
