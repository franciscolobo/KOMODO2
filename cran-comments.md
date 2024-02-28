## Changes and notes
* Regular maintenance update: 
    * fixed minor bug that resulted in common file path errors in Windows

## R CMD check results  
* Duration: 42.5s
* 0 errors | 0 warnings | 1 note ; R CMD check succeeded
* the note refers to:
> installed size is  5.4Mb
>    sub-directories of 1Mb or more:
>      doc   4.5Mb

This is due to the extensive documentation.

## Test environments
* macOS:
    * macOS 11.6.4 (R 4.1.3): <https://github.com/fcampelo/CALANGO/actions>
    * macOS 10.16 (R 4.1.0): using `devtools::check()`
    
* Linux:
    * Ubuntu 20.04.4 (R 4.1.3 and devel): <https://github.com/fcampelo/CALANGO/actions>
    
* Windows:
    * Microsoft Windows Server 2022 - 10.0.20348 (R 4.1.3): <https://github.com/fcampelo/CALANGO/actions>
    * Microsoft Windows Windows 10 Enterprise v.20H2 (R 4.2.0): using `devtools::check()`
    * x86_64-w64-mingw32/x64 (64-bit) Running under: Windows 10 x64 (build 19044)
