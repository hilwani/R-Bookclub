#R for data science book club
#chapter 5, data transformation part 2
##filter()
##arrange()
##select(): choose a few variables
##summmarise():

##select()
library(dplyr)
library(nycflights13)
?flights

#Q1: create a new dataset with just year, month, day
datedata <- flights %>%
  select(year, month, day)

flights %>% 
  select(year:day)

#Q2: create a new dataset without year
newdata <- flights %>% 
  select(-year)

#Q3: create a new dataset with delay info only
names(flights)

delay_data <- flights %>% 
  select(ends_with("delay"))

#Q4: create a new dataset with time information as well as delay information
time_delay_data <- flights %>% 
  select(contains("time"), ends_with("delay"),hour,minute)

#summarise
#Q1: summarise the average departure delay
#this eill not work due to NA
flights %>% 
  summarise(mean_dep_delay=mean(dep_delay))

#this work
flights %>% 
  summarise(mean_dep_delay=mean(dep_delay, na.rm = T))

##use summarise() together with group_by()
##Q2: the mean dep_delay at different dates
flights %>% 
  group_by(month,day) %>% 
  summarise(mean_dep_delay=mean(dep_delay, na.rm=T))

#Q3: which day has the longest departure delay on average?
mean_delay_data <- flights %>% 
  group_by(month, day) %>% 
  summarise(mean_dep_delay=mean(dep_delay, na.rm=T)) %>% 
  arrange(desc(mean_dep_delay))

#Q4: the mean dep_delay and the mean arr_delay according to dates
flights %>% 
  group_by(month,day) %>% 
  summarise(mean_dep_delay=mean(dep_delay, na.rm=T),
            mean_arr_delay=mean(arr_delay, na.rm=T))
  
  
  
  

  
  
  