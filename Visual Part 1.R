##chapter 3 data visualization
##3.1-3.3
#to install the package
install.packages("ggplot2")
library(ggplot2)
##dataset:mpg
# get help: more information on the data
?mpg
?library
View(mpg) # to view a dataset to check any missing values
dim(mpg) #dimensions: checking no of rows and columns
#are there missing values?
is.na(mpg) #TRUE= 1 means missing; FALSE = 0 means not missing
sum(is.na(mpg)) #0 means no missing value

##data visualization
#Q1: Docars with large engines use more fuel than
#cars with small engines?
##displ: engine displacement, in litres
##hwy: highway miles per gallon
# what is the relationship between displ and hwy?
#scatterplot

#basic scatterplot
ggplot(data=mpg)+
  geom_point(aes(x=displ, y=hwy))

ggplot(data=mpg) ##prepare a drawing papper for the plot

ggplot(data=mpg, aes(x=displ, y=hwy))+
  geom_point()+
  geom_smooth() ##plotting smooth trend of the variables

#adding a color information to the dots
ggplot(data=mpg, aes(x=displ, y=hwy, color=class))+
  geom_point()


# PRACTICE QUESTIONS #

#1. Run ggplot(data=mpg). What do you see?

ggplot(data=mpg)

#Answer: A gray shaded background preparing for a graphical visualization

#2. How many rows are in mpg? How many columns?

dim(mpg)

#Answer: 234 rows and 11 columns

#3. What does the drv variable describe?

?mpg

#Answer: drv describes he type of drive train, 
#where f = front-wheel drive, r = rear wheel drive, 
#4 = 4wd

#4. Make a scatterplot of hwy vs cyl

ggplot(data=mpg, aes(x=drv,y=class))+
  geom_point()

#Answer: The plot is not useful because it doesn't show any relationship between the variables

#end



