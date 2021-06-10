#' Retrieve data files from the Github repository
#'
#' This script retrieves relevant data files from the CALANGO project
#' folder. It will copy the data into a folder containing
#' directories related to dictionary files, Gene Ontology annotation
#' files, tree files, etc.
#'
#' If the `target.dir` provided does not exist it is created
#' (recursively) by the function.
#'
#' @param target.dir path to the folder where the files will be saved (
#' accepts relative and absolute paths)
#' @param unzip The unzip method to be used. See the documentation of
#' \code{utils::unzip()} for details.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   CALANGO::retrieve_data_files(target.dir = "./data_folder")
#' }
#' 
#' @return No return value, called for side effects.

retrieve_data_files <- function(target.dir,
                                unzip  = getOption("unzip")){

  # ================== Sanity checks ==================
  assertthat::assert_that(is.character(target.dir),
                          length(url) == 1)

  if(!dir.exists(target.dir)){
    dir.create(target.dir, recursive = TRUE)
  } else {
    filelist <- dir(target.dir, full.names = TRUE)
    unlink(filelist, recursive = TRUE, force = TRUE)
  }

  utils::unzip(system.file("data_files/Examples.zip", package = "CALANGO"),
               unzip = unzip,
               exdir = target.dir)
  unlink(paste0(target.dir, "/__MACOSX"), recursive = TRUE, force = TRUE)

  invisible(TRUE)
}
