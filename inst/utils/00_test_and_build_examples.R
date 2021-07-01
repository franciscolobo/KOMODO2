inputfiles <- dir("./inst/data_files/parameters/", full.names = TRUE)

# run for all specs files
for (i in seq_along(inputfiles)){
  cat("\nProcessing example", i, "of", length(inputfiles), "\n")
  defs <- run_CALANGO(inputfiles[i], cores = parallel::detectCores() - 1)
}
