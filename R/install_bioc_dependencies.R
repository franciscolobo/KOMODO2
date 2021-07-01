#' Install Bioconductor dependencies
#'
#' This function installs the latest versions of all Bioconductor packages
#' (listed in the `Suggests` fields of DESCRIPTION). It is **essential** that 
#' the Bioconductor dependencies be installed for CALANGO to work properly.
#' It uses `BiocManager::install()` for installing Bioconductor
#' packages. Further arguments to this function are passed as a list.
#'
#' @param bioc.args list containing further arguments to be passed
#' down to `BiocManager::install()`.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   install_bioc_dependencies()
#' }
#' 
#' @return No return value, called for side effects.

install_bioc_dependencies <- function(bioc.args = list()){
  # ================== Sanity checks ==================
  assertthat::assert_that(is.list(bioc.args))
  
  # Install the required Bioconductor packages
  message("\nInstalling AnnotationDbi, KEGGREST and GO.db from BioConductor ", 
          BiocManager::version(), " (if needed)")
  bioc.args$pkgs <- c("AnnotationDbi",
                      "KEGGREST",
                      "GO.db")
  bioc.args$ask = TRUE
  
  do.call(BiocManager::install, bioc.args)
}
