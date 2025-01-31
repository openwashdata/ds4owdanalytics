#' publishing_metadata: Publishing Metadata
#'
#' Metadata on packages published directly as a result of DS4OWD.
#'
#' @format A tibble with 34 rows and 14 variables
#' \describe{
#'   \item{id}{Identifier of dataset}
#'   \item{pkg_name}{Name of the package}
#'   \item{maintainer}{Github ID of maintainer}
#'   \item{source}{Source of data}
#'   \item{difficulty}{Difficult of cleaning data}
#'   \item{status}{Current status}
#'   \item{description}{Description of data package}
#'   \item{location}{Location of data in the package}
#'   \item{date_published}{Date of publication}
#'   \item{link_github}{Link to github repo}
#'   \item{link_pkg_website}{Link to package website}
#'   \item{doi}{Zenodo DOI of package}
#'   \item{temporal_coverage}{Temporal coverage of data}
#'   \item{keywords}{Keywords to identify data}
#' }
"publishing_metadata"
