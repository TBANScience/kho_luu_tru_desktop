library(tidyverse)
library(here)

tv_tab <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean = mean(tvhours,na.rm = T))

write_csv(tv_tab,here("abc.csv"))
