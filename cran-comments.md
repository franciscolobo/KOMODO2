## Changes and notes
* Maintenance updates: 
    - Minor internal changes to ensure compatibility with *dendextend* v1.15.2 
    and *taxize* v1.0.
    - Changed naming standard of report plots to increase Windows compatibility: 
      file names of correlation plots and boxplots now use "_" rather than ":"
    - Removed input attribute `url` from function *retrieve_data_files()*. This 
    does not break existing code - if `url` is passed it will just be ignored.
* Added a single convenience function to help users retrieve 
an associated *Perl* script for data preparation directly from the R prompt, 
without having to download it from the Github repository.
* Minor changes in README and documentation updates.

## R CMD check results  
* 0 errors | 0 warnings | 0 notes ; R CMD check succeeded

## Test environments
* macOS:
    * `devtools::check()`: R version 4.1.0 (2021-05-18), Platform: x86_64-apple-darwin17.0 (64-bit), Running under: macOS 11.4 Big Sur (local)
    * MacOS 11.6.1 (release): <https://github.com/fcampelo/CALANGO/actions>
    
* Linux:
    * Ubuntu 20.04.3 (release and devel):  <https://github.com/fcampelo/CALANGO/actions>
    
* Windows:
    * Microsoft Windows Server 2019 (release): <https://github.com/fcampelo/CALANGO/actions>
