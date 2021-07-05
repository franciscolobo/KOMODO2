# library(devtools)
# devtools::install_github("fcampelo/CALANGO")
#
# library(CALANGO)
# # Install Bioconductor package dependencies for CALANGO
# CALANGO::install_bioc_dependencies()
#
# # Download required files
# CALANGO::retrieve_data_files(target.dir = "./data_folder")
#
# defs <- "./data_folder/parameters_validation/parameters_gene2GO_Pan_proxy.txt"
# res  <- CALANGO::run_CALANGO(defs, cores = 2,
#                              render.report = FALSE)
#
# # Un-comment to remove the non-CRAN packages that were installed (if you want)
# # remove.packages(c("CALANGO", "AnnotationDbi", "KEGGREST", "GO.db"))
