

# library -----------------------------------------------------------------

library(tidyverse)
library(here)
library(birdnetTools)

# load data ---------------------------------------------------------------

audioMoth_NG4_1 <- birdnet_combine("H:/2025_curonian_national_park_output/NG4_0512_0610_sd25")

audioMoth_NG4_2 <- birdnet_combine("H:/2025_curonian_national_park_output/NG4_0613_0707_sd15")


audioMoth_NG6_1 <- birdnet_combine("H:/2025_curonian_national_park_output/NG6_0512_0610_sd05")

audioMoth_NG6_2 <- birdnet_combine("H:/2025_curonian_national_park_output/NG6_0613_0708_sd34")


audioMoth_ST11_1 <- birdnet_combine("H:/2025_curonian_national_park_output/ST11_0512_0609_sd32")

audioMoth_ST11_2 <- birdnet_combine("H:/2025_curonian_national_park_output/ST11_0613_0708_sd42")



audioMoth_NG7_1 <- birdnet_combine("H:/2025_curonian_national_park_output/NG7_0508_0609_sd50")

audioMoth_NG7_2 <- birdnet_combine("H:/2025_curonian_national_park_output/NG7_0613_0711_sd38")

save(audioMoth_NG7_1,
     file = here("data", 
                 "BirdNET_output_combined", 
                 "AudioMoth_NG7_1.rda"))

save(audioMoth_NG7_2,
     file = here("data", 
                 "BirdNET_output_combined", 
                 "AudioMoth_NG7_2.rda"))




curonian_2025 <- birdnet_combine("H:/2025_curonian_national_park_output")

save(curonian_2025,
     file = here("data", 
                 "BirdNET_output_combined", 
                 "2025_curonian.rda"))


# for cormorant -----------------------------------------------------------

load(here("data", "BirdNET_output_combined", "AudioMoth_NG4_1.rda"))
load(here("data", "BirdNET_output_combined", "AudioMoth_NG4_2.rda"))
load(here("data", "BirdNET_output_combined", "AudioMoth_NG6_1.rda"))
load(here("data", "BirdNET_output_combined", "AudioMoth_NG6_2.rda"))


data_all <- audioMoth_NG4_1 %>%
  bind_rows(audioMoth_NG4_2) %>%
  bind_rows(audioMoth_NG6_1) %>%
  bind_rows(audioMoth_NG6_2) %>%
  bind_rows(audioMoth_ST11_1) %>%
  bind_rows(audioMoth_ST11_2) %>%
  bind_rows(audioMoth_NG7_1) %>%
  bind_rows(audioMoth_NG7_2) %>%
  birdnet_add_datetime() %>%
  mutate(site = case_when(
    grepl("NG4", `Begin Path`) ~ "NG4",
    grepl("NG6", `Begin Path`) ~ "NG6",
    grepl("ST11", `Begin Path`) ~ "ST11",
    grepl("NG7", `Begin Path`) ~ "NG7",
    TRUE ~ "unknown"
  ))


high_cormorant_fig <- data_all %>%
  birdnet_filter(species = "Great Cormorant", threshold = 0.1) %>%
  filter(site == "NG4") %>%
  birdnet_heatmap() +
    ggplot2::scale_fill_viridis_c(
    option = "A",
    direction = -1,
    limits = c(0, 250),
    oob = scales::squish) 

ggsave(plot = high_cormorant_fig,
       filename = here("docs", "figures", "high_cormorant_fig.png"),
       width = 15,
       height = 9,
       units = "cm",
       dpi = 300)



low_cormorant_fig <- data_all %>%
  birdnet_filter(species = "Great Cormorant", threshold = 0.1) %>%
  filter(site == "NG6") %>%
  birdnet_heatmap() +
  ggplot2::scale_fill_viridis_c(option = "A",
                                direction = -1,
                                limits = c(0, 250),
                                oob = scales::squish) +
  theme(legend.position = "none")

ggsave(plot = low_cormorant_fig,
       filename = here("docs", "figures", "low_cormorant_fig.png"),
       width = 15,
       height = 9,
       units = "cm",
       dpi = 300)


# activity of cormorant and heron in high intensity site ------------------

# high_cormorant_seasonal <- data_all %>%
#   birdnet_filter(species = "Great Cormorant", threshold = 0.1) %>%
#   filter(site == "NG4") %>%
#   group_by(date) %>%
#   summarize(daily_det = n()) %>%
#   ggplot() +
#   geom_smooth(aes(x = date, y = daily_det)) +
#   theme_bw()
# 
# high_heron_seasonal <- data_all %>%
#   birdnet_filter(species = "Gray Heron", threshold = 0.1) %>%
#   filter(site == "NG4") %>%
#   group_by(date) %>%
#   summarize(daily_det = n()) %>%
#   ggplot() +
#   geom_smooth(aes(x = date, y = daily_det)) +
#   theme_bw()

high_cormorant_daily <- data_all %>%
  birdnet_filter(species = c("Great Cormorant", "Gray Heron"), threshold = 0.1) %>%
  filter(site == "NG4") %>%
  count(hour, `Common Name`, name = "hourly_det") %>%
  group_by(`Common Name`) %>%
  mutate(normalized_det = (hourly_det - min(hourly_det)) / (max(hourly_det) - min(hourly_det))) %>%
  ungroup() %>%
  
  ggplot(aes(x = hour, y = normalized_det, 
             group = `Common Name`, 
             colour = `Common Name`)) +
  #geom_point() +
  geom_smooth(aes(group = `Common Name`), method = "gam", formula = y ~ s(x, bs = "cc"),
              linewidth = 1.5, alpha = 0.4) +
  scale_colour_manual(values = c("Great Cormorant" = "#EE9A49",
                                 "Gray Heron"      = "#53868B")) +
  labs(x = "Hour of day",
       y = "Normalized detections") +
  theme_bw() +
  theme(legend.position = "none")
  
high_cormorant_daily

ggsave(plot = high_cormorant_daily,
       filename = here("docs", "figures", "high_cormorant_daily.png"),
       width = 8,
       height = 6,
       units = "cm",
       dpi = 300)

# activity of cormorant and heron in low intensity site -------------------

# low_cormorant_seasonal <- data_all %>%
#   birdnet_filter(species = "Great Cormorant", threshold = 0.1) %>%
#   filter(site == "ST11") %>%
#   group_by(date) %>%
#   summarize(daily_det = n()) %>%
#   ggplot() +
#   geom_smooth(aes(x = date, y = daily_det)) +
#   theme_bw()
# 
# low_heron_seasonal <- data_all %>%
#   birdnet_filter(species = "Gray Heron", threshold = 0.1) %>%
#   filter(site == "ST11") %>%
#   group_by(date) %>%
#   summarize(daily_det = n()) %>%
#   ggplot() +
#   geom_smooth(aes(x = date, y = daily_det)) +
#   theme_bw()

low_cormorant_daily <- data_all %>%
  birdnet_filter(species = c("Great Cormorant", "Gray Heron"), threshold = 0.1) %>%
  filter(site == "NG6") %>%
  count(hour, `Common Name`, name = "hourly_det") %>%
  group_by(`Common Name`) %>%
  mutate(normalized_det = (hourly_det - min(hourly_det)) / (max(hourly_det) - min(hourly_det))) %>%
  ungroup() %>%
  
  ggplot(aes(x = hour, y = normalized_det, 
             group = `Common Name`, 
             colour = `Common Name`)) +
  #geom_point() +
  geom_smooth(aes(group = `Common Name`), method = "gam", formula = y ~ s(x, bs = "cc"),
              linewidth = 1.5, alpha = 0.4) +
  scale_colour_manual(values = c("Great Cormorant" = "#EE9A49",
                                 "Gray Heron"      = "#53868B")) +
  labs(x = "Hour of day",
       y = "Normalized detections") +
  theme_bw() +
  theme(legend.position = "none")

low_cormorant_daily

ggsave(plot = low_cormorant_daily,
       filename = here("docs", "figures", "low_cormorant_daily.png"),
       width = 8,
       height = 6,
       units = "cm",
       dpi = 300)




# create maps -------------------------------------------------------------

library(sf)
library(ggspatial)

points_sf <- read_csv(here("data", "GoogleMyMaps", "Coronian_ARU_map", 
                           "curonian national park_google maps.csv")) %>%
  st_as_sf(wkt = "WKT", crs = 4326)

ggplot() +
  annotation_map_tile(type = "cartolight", zoom = 9) +
  geom_sf(data = points_sf, colour = "#EE9A49", size = 3) +
  coord_sf(expand = FALSE) +
  labs(x = "Longitude", y = "Latitude") +
  theme_bw() +
  theme(
    axis.title = element_text(size = 16),
    axis.text = element_text(size = 12),
    axis.title.x = element_text(margin = margin(t = 10)),
    axis.title.y = element_text(margin = margin(r = 10))
  )





