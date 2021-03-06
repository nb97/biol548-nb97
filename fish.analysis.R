#BIOL 458O R class 2
#Author: Natalie Benoit 
# 2.9.21


#imported data
fish_data = read.csv("data/Gaeta_etal_CLC_data1.csv")

library(dplyr)

fish_data_cat = fish_data %>% 
  mutate(length_cat = ifelse(length > 200, "big", "small"))

fish_data_cat = fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small"))

fish_data_cat = fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "large", "small")