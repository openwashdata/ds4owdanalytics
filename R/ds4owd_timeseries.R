#' ds4owd_timeseries: Timeseries data on website traffic
#'
#' Timeseries data on website traffic to the DS4OWD website
#'
#' @format A tibble with 468 rows and 6 variables
#' \describe{
#'   \item{date}{Date of data collection}
#'   \item{pageviews}{Number of pages viewed}
#'   \item{visitors}{Total number of unique visitors}
#'   \item{visit_duration}{Duration of visit (seconds)}
#'   \item{visits}{Number of non-unique visits to the website}
#'   \item{bounce_rate}{Percentage of users "bouncing" off website. A bounce is when a visitor spends less than 30 seconds on the website}
#' }
"ds4owd_timeseries"
