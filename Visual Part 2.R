## data visualization part 2

library(ggplot2)
data(mpg)
names(mpg)
dim(mpg)

#scatterplot
ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_point()

#scatterplot with colors from class
ggplot(data=mpg, aes(x=displ, y=hwy, color=class))+
  geom_point()

#add a facet
ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_point()+
  facet_wrap(~class)

#change the display of graphs into rows
ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_point()+
  facet_wrap(~class, nrow=2)

#geoms

##adding a smooth lines to describe relationship between displ and hwy
ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_smooth()

#layer them
ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_point()+
  geom_smooth()

#different smooth line for different drive train
ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_smooth(aes(linetype=drv))

#change the color according to drv
ggplot(data=mpg, aes(x=displ, y=hwy, color=drv))+
  geom_point()+
  geom_smooth(aes(linetype=drv))

#change the color according to drv, smooth line without se (shaded area)
ggplot(data=mpg, aes(x=displ, y=hwy, color=drv))+
  geom_point()+
  geom_smooth(aes(linetype=drv), se=FALSE)

#change the color according to drv, smooth line without se (shaded area)
#want solid smooth line only
ggplot(data=mpg, aes(x=displ, y=hwy, color=drv))+
  geom_point()+
  geom_smooth(se=FALSE)

