gingr <img src="gingerbread-man.png" align="right" />
============================================
Material calculator to make gingerbread stuff...

Overview
--------
This function will calculate the amount of material required to make a gingerbread related structure of any size! Want to make a life size model of an ant? We got you covered. Want to recreate the **MOON**?! **BRING IT ON, SUCKER!** Want to make a normal, *boring* gingerbread house? Sure, fine... It can do that too, I guess... 

Installation
------------
The easiest way to obtain this package is to install `devtools` and pull the package contents directly from GitHub.

``` r
# Development version from GitHub
# install.packages('devtools')

devtools::install_github('btmonier/gingr')
```

Usage
-----
 All you need to enter is the unit area your mega structure will cover and it will give you an output of what you need with respective units.
 
 ```r
 library(gingr)
 
 gingr(area = 1200, units = 'in', structure = 'MEGA FORTRESS')
 ```
 
Getting help
------------

For additional information on these functions, please see the given documentation in the `gingr` package by adding the `?` help operator before any of the given functions in this package or by using the `help()` function. 
