# Class 3 exercise 
# Natalie Benoit
# Feb 11 2021

library(tidyverse)

fship <- read_csv(file.path("data", "The_Fellowship_Of_The_Ring.csv"))

ttow <- read_csv(file.path("data", "The_Two_Towers.csv"))

rking <- read_csv(file.path("data", "The_Return_Of_The_King.csv")) 

# check 
rking


# Collect untidy data
lotr_untidy <- bind_rows(fship, ttow, rking)
str(lotr_untidy)

lotr_untidy


# Exercise 1
# using pivot longer

lotr_tidy <-
  gather(lotr_untidy, key = 'Gender', value = 'Words', Female, Male)
lotr_tidy

lotr_tidy <-
  pivot_longer(lotr_untidy, cols=c(Female, Male), names_to = 'Gender', values_to = 'Words')

lotr_tidy <- arrange(lotr_tidy, Gender)

# Or, using the new language of pivot_longer(), 
# we use values_to instead of values and instead of a key we specify names_to. 
# We now also need to explicity write cols_to to designate the columns 'Male' and 'Female'.

write_csv(lotr_tidy, path = file.path("data", "lotr_tidy.csv"))

