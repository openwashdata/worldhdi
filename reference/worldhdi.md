# worldhdi: Human Development Index trends for countries and aggregates, 1990-2022

Human Development Index (HDI) trends for 195 countries and territories
and 15 UNDP aggregates (development groups, regions and the world), from
the UNDP Human Development Report 2023/2024. HDI values are given for
1990, 2000, 2010 and 2015, and yearly from 2019 to 2022. 193 countries
carry an HDI rank for 2022; the Democratic People's Republic of Korea
and Monaco and the aggregates carry none.

## Usage

``` r
worldhdi
```

## Format

A data frame with 210 rows and 17 variables

- hdi_rank:

  World rank in the Human Development Index as of 2022

- country:

  Name of the country, territory or UNDP aggregate

- hdi_1990:

  HDI in 1990

- hdi_2000:

  HDI in 2000

- hdi_2010:

  HDI in 2010

- hdi_2015:

  HDI in 2015

- hdi_2019:

  HDI in 2019

- hdi_2020:

  HDI in 2020

- hdi_2021:

  HDI in 2021

- hdi_2022:

  HDI in 2022

- rank_change_2015_2022:

  Change in HDI rank from 2015 to 2022

- avg_growth_1990_2000:

  Average annual HDI growth between 1990 and 2000, in percent

- avg_growth_2000_2010:

  Average annual HDI growth between 2000 and 2010, in percent

- avg_growth_2010_2022:

  Average annual HDI growth between 2010 and 2022, in percent

- avg_growth_1990_2022:

  Average annual HDI growth between 1990 and 2022, in percent

- tier_hdi:

  HDI tier in 2022 as defined by UNDP: Very High (0.800 and above), High
  (0.700 to 0.799), Medium (0.550 to 0.699), Low (below 0.550)

- iso3c:

  ISO 3166-1 alpha-3 country code; missing for the aggregates

## Source

Obtained from the UNDP Human Development Report 2023/2024 Statistical
Annex, HDI trends table
(<https://hdr.undp.org/data-center/documentation-and-downloads>),
published under the Creative Commons Attribution 3.0 IGO licence.

## Examples

``` r
# The ten countries with the highest HDI in 2022
head(worldhdi[order(-worldhdi$hdi_2022), c("country", "hdi_2022", "tier_hdi")], 10)
#>                   country hdi_2022  tier_hdi
#> 1             Switzerland    0.967 Very High
#> 2                  Norway    0.966 Very High
#> 3                 Iceland    0.959 Very High
#> 4  Hong Kong, China (SAR)    0.956 Very High
#> 5                 Denmark    0.952 Very High
#> 6                  Sweden    0.952 Very High
#> 7                 Germany    0.950 Very High
#> 8                 Ireland    0.950 Very High
#> 9               Singapore    0.949 Very High
#> 10              Australia    0.946 Very High
```
