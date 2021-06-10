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
  
  # IMPORTANT: any new CRAN package dependency that's used only in the .Rmd
  # files must be called once below, to prevent CRAN warnings (CRAN will
  # check if all packages in `Depends` are used at least once within the
  # functions in the `R` folder.)
  if (FALSE){ # <---------------- code in here is never to be called, of course.
    dendextend::fac2num(factor(3:5))
    heatmaply::BrBG(5)                # for heatmaply
    ggplot2::aes()                    # for ggplot2
    plotly::api()                     # for plotly
    DT::JS()                          # for DT
    htmltools::a()                    # for htmltools
    htmlwidgets::JS()                 # for htmlwidgets
    pkgdown::as_pkgdown()             # for pkgdown
    knitr::all_labels()               # for knitr
  }
  
  # Now to install the required Bioconductor packages
  bioc.args$pkgs <- c("AnnotationDbi",
                      "KEGGREST",
                      "GO.db")
  
  do.call(BiocManager::install, bioc.args)
}
