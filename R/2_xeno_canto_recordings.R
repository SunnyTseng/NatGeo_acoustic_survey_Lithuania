
library(tidyverse)
library(here)

data <- read_csv(here("data", "xeno_canto", "xenocanto.csv")) 



data_sunny <- data %>%
  filter(Recordist == "Sunny Tseng")

#how many recordings? 
nrow(data_sunny)
#how many species?
test <- data_sunny %>% 
  distinct(`Common name`) %>%
  nrow()



data_non_sunny <- data %>%
  filter(Recordist != "Sunny Tseng")

# how many recordings? 
nrow(data_non_sunny)
# how many species?
data_non_sunny %>%
  distinct(`Common name`) %>%
  nrow()


new_species <- data_sunny %>%
  distinct(`Common name`) %>%
  filter(!`Common name` %in% data_non_sunny$`Common name`)










