library(tidyverse)
raw <- read_csv("raw-data/LUMA-raw.csv")

m <- tibble(
  Months = rep(unique(raw$Months), each = 30),
  Month = rep(c(1,5,9,2,6,10,3,7,11,4,8,12), each = 10)
)

all <- raw %>% 
  full_join(m, relationship = "many-to-many") %>%  
  distinct() %>%
  arrange(Months, Month)
