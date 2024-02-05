library(tidyverse)
load("rda/murders.rda")

murders %>% 
  mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) +
  theme(text = element_text(colour = "grey"),  
        plot.background = element_rect(fill = "#202020", 
                                       colour = "gray"), 
        panel.background = element_rect(fill = "#0F0F0F", 
                                        color = "darkgrey"), 
        panel.grid.major = element_line(colour = "#707070"), 
        panel.grid.minor = element_line(colour = "#707070"),
        axis.text = element_text(colour = "lightblue"), 
        axis.ticks =  element_line(colour = "lightblue")) +
  geom_bar(width = 0.5, 
           stat = "identity", 
           color = "#8080C0", 
           fill = "#8080C0") +
  coord_flip()

ggsave("figs/barplot.png")
