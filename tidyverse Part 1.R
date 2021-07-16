#tutorial using tidyverse to filter and subset data

library(tidyverse)
View(msleep)
str(msleep)

# example 1
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(sleep_total > 18)

# example 2  
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(!sleep_total > 18)

# example 3
my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates", bodywt > 20)

# example 4
my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates" | bodywt > 20)

# example 5
my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(name == "Cow" | name == "Dog" | name == "Goat")

# example 6
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(name == "Cow" | name == "Dog" | name == "Goat")

# example 7
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(between(sleep_total, 15, 18))

# example 8
my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(near(sleep_total, 17, tol = 0.5))

# example 9
my_data <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(is.na(conservation))

# example 10
my_data <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(!is.na(conservation))
