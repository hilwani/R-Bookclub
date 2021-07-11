# data transformation
install.packages("nycflights13") #dataset from this package
install.packages("dplyr") #function from this package

library(nycflights13)
library(dplyr)
flights
dim(flights)
?flights

##filter() pick observation by their values
##arrange() reorder the rows
##select() pick variables by their names
##mutate() create new variables based on existing variables
##summarise() summary statistics

#Q1 get the data on January 1st

filter(flights, month==1, day==1)

#pipes(ctrl+shift+M)
Jan_data <- flights %>% filter(month==1, day==1)

#Q2 get the data on Dec 25th
Christmas_data <- flights %>% filter(month==12, day==25)

##>, >=, <=, !=, ==
#Q3 Data that is not December(month)
NoDec_data <- flights %>% filter(month !=12)

#Q4: Data that is from Christmas and the departure delay is more than 5 mins
Christmas_delay_data <- flights %>% filter(month==12, day==25, dep_delay>5)

#arrange()
arranged_data <- flights %>% arrange(year,month,day)

#Q5: re-arrange the data according to dep_delay in descending order
#arrange() with desc()
desc_dep_data <- flights %>% arrange(desc(dep_delay))




