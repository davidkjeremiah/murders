library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "#4285F4", fill = "#4285F4") +
  coord_flip() +
  theme_minimal()

ggsave("figs/barplot.png")
