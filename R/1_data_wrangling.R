

# library -----------------------------------------------------------------

library(tidyverse)
library(here)
library(birdnetTools)

# load data ---------------------------------------------------------------

curonian_output_combined_mini <- birdnet_combine("D:/2025_curonian_national_park_output/5550_0512_0725_mini")



zuvintas_output_combined <- birdnet_combine("D:/2025_zuvintas_output")
vilnius_output_combined <- birdnet_combine("D:/2025_vilnius_output")
ventes_ragas_output_combined <- birdnet_combine("D:/2025_ventes_ragas_output")

save(curonian_output_combined,
     file = here("data", "BirdNET_output_combined"))

save(curonian_output_combined_mini,
     file = here("data", "BirdNET_output_combined", "2025_cormorant_SongMini.rda"))

# for cormorant -----------------------------------------------------------

cormorant_audiomoth <- curonian_output_combined %>%
  birdnet_filter(species = "Great Cormorant") %>%
  birdnet_heatmap()

cormorant_mini <- curonian_output_combined_mini %>%
  birdnet_filter(species = "Great Cormorant") %>%
  birdnet_heatmap()

