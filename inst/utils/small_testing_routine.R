# library(devtools)
# devtools::install_github("fcampelo/CALANGO")
#
# library(CALANGO)
# # Install/update Bioconductor package dependencies for CALANGO
# CALANGO::install_and_update_packages()
#
# # Download required files
# CALANGO::retrieve_data_files(target.dir = "./data_folder")
#
# defs <- "./data_folder/parameters_validation/parameters_gene2GO_Pan_proxy.txt"
# res  <- CALANGO::run_CALANGO(defs, cores = parallel::detectCores() - 1,
#                              render.report = FALSE)
#
# # Un-comment to remove the non-CRAN packages that were installed (if you want)
# # remove.packages(c("CALANGO", "AnnotationDbi", "KEGGREST", "GO.db"))
