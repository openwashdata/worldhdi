#' worldhdi: Human Development Index 1990-2022
#'
#' Trends in Human Development Index worldwide by country from 1990-2022. Data is initially measured at a frequency of once every 10 years, then 5 years and then yearly from 2019 onwards.
#'
#' @format A tibble with 195 rows and 17 variables
#' \describe{
#'   \item{hdi_rank}{World Rank in Human Development Index as of 2022}
#'   \item{country}{Official name of the country}
#'   \item{hdi_1990}{HDI in 1990}
#'   \item{hdi_2000}{HDI in 2000}
#'   \item{hdi_2010}{HDI in 2010}
#'   \item{hdi_2015}{HDI in 2015}
#'   \item{hdi_2019}{HDI in 2019}
#'   \item{hdi_2020}{HDI in 2020}
#'   \item{hdi_2021}{HDI in 2021}
#'   \item{hdi_2022}{HDI in 2022}
#'   \item{rank_change_2015_2022}{Change in rank from 2015 to 2022}
#'   \item{avg_growth_1990_2000}{Average annual growth in country's HDI between 1990-2000}
#'   \item{avg_growth_2000_2010}{Average annual growth in country's HDI between 2000-2010}
#'   \item{avg_growth_2010_2022}{Average annual  growth in country's HDI between 2010-2022}
#'   \item{avg_growth_1990_2022}{Average annual  growth in country's HDI between 1990-2022}
#'   \item{hdi_tier}{HDI Tier as defined by UNDP {Very high [0.8-1.0), High [0.7 - 0.8), Medium [0.55-0.7), Low (<0.55)}}
#'   \item{iso3c}{ISO3 code for the country}
#' }
"worldhdi"
