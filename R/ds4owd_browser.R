#' ds4owd_browser: Data on visits to the DS4OWD website by browser
#'
#' This dataset contains information on visits to the DS4OWD website by browser used.
#'
#' @format A tibble with 17 rows and 6 variables
#' \describe{
#'   \item{browser}{Browser used to accesss the DS4OWD website}
#'   \item{pageviews}{Number of pages viewed}
#'   \item{visitors}{Total number of unique visitors}
#'   \item{visit_duration}{Duration of visit (seconds)}
#'   \item{visits}{Number of non-unique visits to the website}
#'   \item{bounce_rate}{Percentage of users "bouncing" off website. A bounce is when a visitor spends less than 30 seconds on the website}
#' }
"ds4owd_browser"
