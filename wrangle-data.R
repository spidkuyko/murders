library(tidyverse)
murders <- read.csv("data/murders.csv")
head(murders)
murders <- murders %>% 
  mutate(region = factor(region), rate = total/population*10^5)
save(murders, file="rda/murders.rda")

