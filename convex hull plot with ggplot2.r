#R version 3.2.0 (2015-04-16) -- "Full of Ingredients"
#Plotting Convex HULL with ggplot2 in R

library(ggplot2)
x<-sample(-500:500,50)  # ramdom sampling 50 values between -500 to 500 

y<-sample(-100:100,50)

df<-data.frame(x,y) #combining x,y to dataframe

hull<-df[chull(df),] #chull(convex hull) function from package 'grDevices' this provide the points which constitues hull

hull<-rbind(hull,hull[1,]) #adding first value of hull dataframe to itself (useful to draw closed path)

ggplot()+geom_point(data=df,aes(x,y),color="blue")+geom_path(data=hull,aes(x,y),color="red") # plotting points and boundary
