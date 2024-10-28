# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)
library(tidyverse)
library(countrycode)

# Read data --------------------------------------------------------------------
data_in <- read.xlsx("HDR23-24_Statistical_Annex_HDI_Trends_Table.xlsx", startRow=5,
                     skipEmptyCols=TRUE)
# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here
# Update column names
worldhdi <- data_in |>
  rename(
    hdi_rank = "HDI.rank",
    country = "Country",
    hdi_1990 = "1990",
    hdi_2000 = "2000",
    hdi_2010 = "2010",
    hdi_2015 = "2015",
    hdi_2019 = "2019",
    hdi_2020 = "2020",
    hdi_2021 = "2021",
    hdi_2022 = "2022",
    rank_change_2015_2022 = "2015-2022",
    avg_growth_1990_2000 = "1990-2000",
    avg_growth_2000_2010 = "2000-2010",
    avg_growth_2010_2022 = "2010-2022",
    avg_growth_1990_2022 = "1990-2022"
  )

# Drop unused columns
worldhdi <- worldhdi |>
  select(!(c("X4", "a")))

# Remove rows that separate countries according to HDI tiers
worldhdi <- worldhdi |>
  filter(if_any(-country, ~ !is.na(.)))

# Replace .. with NA
worldhdi <- worldhdi |>
  mutate(across(everything(), ~ ifelse(. == "..", NA, .)))

# Add HDI tiers as a column (Very High (0.8 - 1), High (0.7 - 0.799), Medium (0.55 - 0.699), Low (0 - 0.549)
worldhdi <- worldhdi |>
  mutate(tier_hdi = case_when(
    hdi_2022 >= 0.8 ~ "Very High",
    hdi_2022 >= 0.7 & hdi_2022 < 0.8 ~ "High",
    hdi_2022 >= 0.55 & hdi_2022 < 0.7 ~ "Medium",
    hdi_2022 < 0.55 ~ "Low",
    is.na(hdi_2022) ~ NA_character_
  ))


# Add iso3c column
worldhdi <- worldhdi |>
  mutate(iso3c = countrycode::countrycode(country, origin = "country.name", destination = "iso3c"))

worldhdi <- worldhdi |>
  mutate(across(
    .cols = -c(country, iso3c, tier_hdi),
    .fns = as.numeric
  ))

# Export data ------------------------------------------------------------------
usethis::use_data(worldhdi, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(worldhdi,
                 here::here("inst", "extdata", paste0("worldhdi", ".csv")))
openxlsx::write.xlsx(worldhdi,
                     here::here("inst", "extdata", paste0("worldhdi", ".xlsx")))
