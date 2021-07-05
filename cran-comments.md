## Changes and notes
* Resubmitting after addressing points raised by Julia Haider:
    * _Please ensure that you do not use more than 2 cores in your examples, vignettes, etc., e.g. inst/utils/00_test_and_build_examples.R_: Done (removed all development scripts in `/inst/utils` from packaged version).
* Resubmitting after addressing points raised by Uwe Ligges:
    * _Not more than 5 MB for a CRAN package, please._: Done (removed large data file and updated retrieve function to allow user to download from project repository)
* Resubmitting after addressing points raised by Gregor Seyer:
    * _If there are references describing the methods in your package, please add these in the description field of your DESCRIPTION file_: Done (no linkable references yet, but soon to be deposited to BioRxiv. Will upload a minor update once the link is available)
    * _Please add \value to .Rd files regarding exported methods and explain the functions results in the documentation_: Done
    * _You write information messages to the console that cannot be easily suppressed. (...) Instead of `print()`/`cat()` rather use `message()`/`warning()` or `if(verbose)cat(..)` (or maybe `stop()`) if you really have to write text to the console._: Done (changed all `cat()` calls to `message()`)
    * _Please ensure that your functions do not write by default or in your examples/vignettes/tests in the user's home filespace (including the package directory and getwd()). This is not allowed by CRAN policies. In your examples/vignettes/tests you can write to tempdir()._: Done (changed all examples to use `tempdir()`)
* Initial release. 

## R CMD check results  
* 0 errors | 0 warnings | 0 notes ; R CMD check succeeded

## Test environments
* macOS:
    * `devtools::check()`: R version 4.1.0 (2021-05-18), Platform: x86_64-apple-darwin17.0 (64-bit), Running under: macOS Big Sur 10.16 (local)
    * MacOS-latest (release): <https://github.com/fcampelo/CALANGO/actions>
    
* Linux:
    * Ubuntu 20.04 release and devel:  <https://github.com/fcampelo/CALANGO/actions>
    
* Windows:
    * R version 4.1.0 (2021-05-18) using platform: x86_64-w64-mingw32 (64-bit) (`devtools::check_win_release()`)
    * R Under development (unstable) (2021-02-13 r80000); Platform: x86_64-w64-mingw32 (64-bit) (`devtools::check_win_release()`)
    * R version 4.0.5 (2021-03-31) using platform: x86_64-w64-mingw32 (64-bit)) (`devtools::check_win_oldrelease()`)
