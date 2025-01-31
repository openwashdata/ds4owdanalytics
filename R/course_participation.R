#' course_participation: Participation in the Course
#'
#' Sessions attended and participated in, for the course (anonymized)
#'
#' @format A tibble with 734 rows and 5 variables
#' \describe{
#'   \item{duration_minutes}{Minutes spent in the session}
#'   \item{guest}{Whether the user is a guest or not. The course instructor and their notetaker is not a guest}
#'   \item{date}{Date of the session}
#'   \item{session}{Session number}
#'   \item{anonymized_name}{Anonymized hash of the name as an identifier}
#' }
"course_participation"
