library(tidyverse)
library(here)

tv_tab <- gss_cat %>% 
  filter( age < 30) %>%
  group_by(marital) %>% 
  summarise(mean = mean(tvhours,na.rm = T))

write_csv(tv_tab,here("abc.csv"))
