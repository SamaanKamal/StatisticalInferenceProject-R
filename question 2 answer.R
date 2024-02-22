data("airquality")
average<-mean(airquality$Temp)
med<- median(airquality$Temp)
minimum<-min(airquality$Temp)
maximum<-max(airquality$Temp)

slices<-c(average,med,maximum,minimum)
lbls<-c("mean", "median" , "min" , "max")
lbls<-paste(lbls,"= [" ,slices,"]")

pie(slices,labels = lbls)