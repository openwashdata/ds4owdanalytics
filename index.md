# ds4owdanalytics

A data package published by [openwashdata](https://openwashdata.org).

The goal of ds4owdanalytics is to make dark data from the DS4OWD course
publicly available

## Installation

You can install the development version of ds4owdanalytics from
[GitHub](https://github.com/) with:

``` r

# install.packages("devtools")
devtools::install_github("openwashdata/ds4owdanalytics")
```

``` r

## Run the following code in console if you don't have the packages
## install.packages(c("dplyr", "knitr", "readr", "stringr", "gt", "kableExtra"))
library(dplyr)
library(knitr)
library(readr)
library(stringr)
library(gt)
library(kableExtra)
```

Alternatively, you can download the individual datasets as a CSV or XLSX
file from the table below.

1.  Click Download CSV. A window opens that displays the CSV in your
    browser.
2.  Right-click anywhere inside the window and select “Save Page As…”.
3.  Save the file in a folder of your choice.

| dataset | CSV | XLSX |
|:---|:---|:---|
| course_participation | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/course_participation.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/course_participation.xlsx) |
| ds4owd_browser | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_browser.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_browser.xlsx) |
| ds4owd_country | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_country.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_country.xlsx) |
| ds4owd_source | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_source.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_source.xlsx) |
| ds4owd_timeseries | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_timeseries.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/ds4owd_timeseries.xlsx) |
| locations | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/locations.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/locations.xlsx) |
| postsurvey | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/postsurvey.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/postsurvey.xlsx) |
| presurvey | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/presurvey.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/presurvey.xlsx) |
| publishing_metadata | [Download CSV](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/publishing_metadata.csv) | [Download XLSX](https://github.com/openwashdata/ds4owdanalytics/raw/main/inst/extdata/publishing_metadata.xlsx) |

## Data

The package provides access to multiple datasets. These are documented
in the reference guide.

``` r

library(ds4owdanalytics)
```

### course_participation

The dataset `course_participation` contains anonymized data about
participation in the online session for the DS4OWD course It has 734
observations and 5 variables

``` r

course_participation |> 
  head(3) |> 
  gt::gt() |>
  gt::as_raw_html()
```

| duration_minutes | guest |       date | session | anonymized_name                  |
|-----------------:|:------|-----------:|--------:|:---------------------------------|
|              195 | No    | 31.10.2023 |       1 | def38455859ad75e499820e9747f215d |
|              163 | Yes   | 31.10.2023 |       1 | 1eddec942ea3cca17a070e3fb1cfe61c |
|              159 | Yes   | 31.10.2023 |       1 | 9d0f4c5a7802b0aa5e67c0c12e30ccde |

For an overview of the variable names, see the following table.

| variable_name | variable_type | description |
|:---|:---|:---|
| duration_minutes | numeric | Minutes spent in the session |
| guest | character | Whether the user is a guest or not. The course instructor and their notetaker is not a guest |
| date | character | Date of the session |
| session | numeric | Session number |
| anonymized_name | character | Anonymized hash of the name as an identifier |

## Example

Examples can be found as a dashboard published at
<https://openwashdata.github.io/dashboard/dashboard.html>

## License

Data are available as
[CC-BY](https://github.com/openwashdata/%7B%7B%7Bpackagename%7D%7D%7D/blob/main/LICENSE.md).

## Citation

Please cite this package using:

``` r

citation("ds4owdanalytics")
#> To cite package 'ds4owdanalytics' in publications use:
#> 
#>   Dubey Y (2025). "ds4owdanalytics: DS4OWD Analytics."
#>   doi:10.5281/zenodo.14778963
#>   <https://doi.org/10.5281/zenodo.14778963>,
#>   <https://github.com/openwashdata/ds4owdanalytics>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Misc{dubey:2025,
#>     title = {ds4owdanalytics: DS4OWD Analytics},
#>     author = {Yash Dubey},
#>     year = {2025},
#>     doi = {10.5281/zenodo.14778963},
#>     url = {https://github.com/openwashdata/ds4owdanalytics},
#>     abstract = {Data collected from the Data Science for Open WASH Data (DS4OWD) course and the associated website and data publishing endeavour.},
#>     version = {0.1.0},
#>   }
```
