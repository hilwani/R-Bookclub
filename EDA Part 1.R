#Variation
#Tendency
#Each variable has its own pattern of variation
#The best way to understand that pattern is to visualize the distribution
#of the variables's values
##Two types of variables: categorical and numerical
##Categorical: a bar plot
library(ggplot2)
data("diamonds")

#Q1: How does the cut variable distributed in the diamonds data
ggplot(data=diamonds, aes(x=cut)) + 
  geom_bar() + 
  theme_bw()

#Q2: How does the price disytribute?
ggplot(data=diamonds, aes(x=price))+
  geom_histogram(bins=15)+
  theme_bw()

#Q3: How does price distribute differently for different cut?
ggplot(data=diamonds, aes(x=price, group=cut))+
  geom_histogram(bins=10)+
  facet_wrap(~cut,nrow = 2)

ggplot(data=diamonds, aes(x=price))+
  geom_histogram(bins=10)+
  facet_wrap(~cut,nrow = 2) #same answer as above, without 'group'

#Q4: For the diamonds with less than 1 carat, how does the price distribute?
library(dplyr)
diamonds %>% 
  ggplot(.,aes(x=price))+
  geom_histogram(bins = 10)+
  theme_classic()

#Q5: For the diamonds less than 1 carat, cut being good,
#how does the price distribute?
diamonds %>%
  filter(carat<1, cut=="Good") %>% 
  ggplot(.,aes(x=price))+
  geom_histogram(bins=10)+
  theme_classic()

#Q6: How many obs. for each type of cut?
diamonds %>% 
  count(cut)





