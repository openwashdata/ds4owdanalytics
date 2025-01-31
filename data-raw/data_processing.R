# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame

# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(readxl)
library(openxlsx)

# Read data --------------------------------------------------------------------
course_participation <- read_csv(here::here("data-raw", "course_participation_anonymized.csv"))
ds4owd_browser <- read_csv(here::here("data-raw", "ds4owd_website_browser_data.csv"))
ds4owd_country <- read_csv(here::here("data-raw", "ds4owd_website_country_data.csv"))
ds4owd_source <- read_csv(here::here("data-raw", "ds4owd_website_source_data.csv"))
ds4owd_timeseries <- read_csv(here::here("data-raw", "ds4owd_website_timeseries_data.csv"))
locations <- read_csv(here::here("data-raw", "locations.csv"))
postsurvey <- read_csv(here::here("data-raw", "postsurvey.csv"))
presurvey <- read_csv(here::here("data-raw", "presurvey.csv"))
publishing_metadata <- read_csv(here::here("data-raw", "publishing_metadata.csv"))

data_list <- list(
  course_participation = course_participation,
  ds4owd_browser = ds4owd_browser,
  ds4owd_country = ds4owd_country,
  ds4owd_source = ds4owd_source,
  ds4owd_timeseries = ds4owd_timeseries,
  locations = locations,
  postsurvey = postsurvey,
  presurvey = presurvey,
  publishing_metadata = publishing_metadata
)

# Tidy data --------------------------------------------------------------------
## Already tidy.

# Export Data ------------------------------------------------------------------
usethis::use_data(course_participation, overwrite = TRUE)
usethis::use_data(ds4owd_browser, overwrite = TRUE)
usethis::use_data(ds4owd_country, overwrite = TRUE)
usethis::use_data(ds4owd_source, overwrite = TRUE)
usethis::use_data(ds4owd_timeseries, overwrite = TRUE)
usethis::use_data(locations, overwrite = TRUE)
usethis::use_data(postsurvey, overwrite = TRUE)
usethis::use_data(presurvey, overwrite = TRUE)
usethis::use_data(publishing_metadata, overwrite = TRUE)


for (data_name in names(data_list)) {
  data <- data_list[[data_name]]
  fs::dir_create(here::here("inst", "extdata"))
  readr::write_csv(data,
                   here::here("inst", "extdata", paste0(data_name, ".csv")))
  openxlsx::write.xlsx(data,
                       here::here("inst", "extdata", paste0(data_name, ".xlsx")))
}
