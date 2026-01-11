

# library -----------------------------------------------------------------

library(tidyverse)
library(here)
library(birdnetTools)

# load data ---------------------------------------------------------------

cormorant_AudioMoth_NG4_1 <- birdnet_combine("H:/2025_curonian_national_park_output/NG4_0512_0610_sd25")

cormorant_AudioMoth_NG4_2 <- birdnet_combine("H:/2025_curonian_national_park_output/NG4_0613_0707_sd15")

save(cormorant_AudioMoth_NG4_1,
     file = here("data", 
                 "BirdNET_output_combined", 
                 "2025_cormorant_AudioMoth_NG4_1.rda"))

save(cormorant_AudioMoth_NG4_2,
     file = here("data", 
                 "BirdNET_output_combined", 
                 "2025_cormorant_AudioMoth_NG4_2.rda"))



# for cormorant -----------------------------------------------------------

load(here("data", "BirdNET_output_combined", "2025_cormorant_AudioMoth_NG4_1.rda"))
load(here("data", "BirdNET_output_combined", "2025_cormorant_AudioMoth_NG4_2.rda"))

cormorant_audiomoth <- cormorant_AudioMoth_NG4_1 %>%
  bind_rows(cormorant_AudioMoth_NG4_2) %>%
  birdnet_filter(species = "Great Cormorant") %>%
  birdnet_heatmap()

ggsave(cormorant_audiomoth,
       filename = here("docs", "figures", "cormorant_audiomoth_heatmap.png"),
       width = 10,
       height = 6)

