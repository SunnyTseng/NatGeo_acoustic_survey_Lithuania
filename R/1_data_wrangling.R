

# library -----------------------------------------------------------------

library(tidyverse)
library(here)
library(birdnetTools)

# load data ---------------------------------------------------------------

curonian_output_combined <- birdnet_combine("D:/2025_curonian_national_park_output/NG4_0512_0610_sd25")

zuvintas_output_combined <- birdnet_combine("D:/2025_zuvintas_output")
vilnius_output_combined <- birdnet_combine("D:/2025_vilnius_output")
ventes_ragas_output_combined <- birdnet_combine("D:/2025_ventes_ragas_output")

save(here("data", "BirdNET_output_combined", "2025_curonian_output_combined.rda"), curonian_output_combined)





