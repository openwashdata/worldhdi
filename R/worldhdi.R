#' worldhdi: Human Development Index trends for countries and aggregates, 1990-2022
#'
#' Human Development Index (HDI) trends for 195 countries and territories and 15 UNDP aggregates (development groups, regions and the world), from the UNDP Human Development Report 2023/2024. HDI values are given for 1990, 2000, 2010 and 2015, and yearly from 2019 to 2022. 193 countries carry an HDI rank for 2022; the Democratic People's Republic of Korea and Monaco and the aggregates carry none.
#'
#' @format A data frame with 210 rows and 17 variables
#' \describe{
#'   \item{hdi_rank}{World rank in the Human Development Index as of 2022}
#'   \item{country}{Name of the country, territory or UNDP aggregate}
#'   \item{hdi_1990}{HDI in 1990}
#'   \item{hdi_2000}{HDI in 2000}
#'   \item{hdi_2010}{HDI in 2010}
#'   \item{hdi_2015}{HDI in 2015}
#'   \item{hdi_2019}{HDI in 2019}
#'   \item{hdi_2020}{HDI in 2020}
#'   \item{hdi_2021}{HDI in 2021}
#'   \item{hdi_2022}{HDI in 2022}
#'   \item{rank_change_2015_2022}{Change in HDI rank from 2015 to 2022}
#'   \item{avg_growth_1990_2000}{Average annual HDI growth between 1990 and 2000, in percent}
#'   \item{avg_growth_2000_2010}{Average annual HDI growth between 2000 and 2010, in percent}
#'   \item{avg_growth_2010_2022}{Average annual HDI growth between 2010 and 2022, in percent}
#'   \item{avg_growth_1990_2022}{Average annual HDI growth between 1990 and 2022, in percent}
#'   \item{tier_hdi}{HDI tier in 2022 as defined by UNDP: Very High (0.800 and above), High (0.700 to 0.799), Medium (0.550 to 0.699), Low (below 0.550)}
#'   \item{iso3c}{ISO 3166-1 alpha-3 country code; missing for the aggregates}
#' }
#' @source Obtained from the UNDP Human Development Report 2023/2024 Statistical Annex, HDI trends table (\url{https://hdr.undp.org/data-center/documentation-and-downloads}), published under the Creative Commons Attribution 3.0 IGO licence.
#' @examples
#' # The ten countries with the highest HDI in 2022
#' head(worldhdi[order(-worldhdi$hdi_2022), c("country", "hdi_2022", "tier_hdi")], 10)
"worldhdi"
