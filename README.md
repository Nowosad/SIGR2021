
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SIGR2021

<!-- badges: start -->
<!-- badges: end -->

# the SIGR2021 Summer School

Dates: 2021-06-27 - 2021-07-02

Location: <https://www.openstreetmap.org/#map=11/45.9115/-1.2737>

## Our schedule

### Tuesday 29 afternoon - GIS and mapping - 2H

A lecture on the GIS and mapping ecosystem of R

### Wednesday 30 morning - GIS and mapping - 3H

A workshop on GIS and mapping with R

### Friday 2 morning - Image processing and all things raster - 3H

[A workshop on image processing and raster analysis with R (raster,
terra, stars)](workshop2/workshop2.html)

## Prerequisites

We assume attendees have good knowledge of spatial data and some
experience with writing code.

In terms of software we will use R and assume that attendees have a
recent version, R (&gt;= 4.0.0). Check this as follows:

``` r
R.version
#>                _                           
#> platform       x86_64-pc-linux-gnu         
#> arch           x86_64                      
#> os             linux-gnu                   
#> system         x86_64, linux-gnu           
#> status                                     
#> major          4                           
#> minor          0.4                         
#> year           2021                        
#> month          02                          
#> day            15                          
#> svn rev        80002                       
#> language       R                           
#> version.string R version 4.0.4 (2021-02-15)
#> nickname       Lost Library Book
```

The `major          4` bit says that you are on a recent version of R
(older versions of R may work but this cannot be guranteed).

You should also have up-to-date versions of numerous R packages for
working with spatial data. You can install these as follows (the output
says which version of each package is installed, we plan to teach the
material based on the latest version currently on CRAN, e.g. `sf 1.0-1`,
which, described as `'sf' from a cran remote, the SHA1 (1.0-0)` in the
output below):

``` r
# install the remotes package, we will use it to install subsequent packages
install.packages("remotes")
```

``` r
# create a character vector containing the names of the packages to install:
pkgs = c(
  "sf",
  "spData",
  "terra",
  "tmap",
  "stars",
  "dplyr",
  "spDataLarge",
  "gstat",
  "raster",
  "fields",
  "mapsf"
)
# Install the packages with the following command
# (will not reinstall packages already installed)
remotes::install_cran(pkgs)
#> Skipping install of 'sf' from a cran remote, the SHA1 (1.0-0) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'spData' from a cran remote, the SHA1 (0.3.10) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'terra' from a cran remote, the SHA1 (1.3-4) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'tmap' from a cran remote, the SHA1 (3.3-2) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'stars' from a cran remote, the SHA1 (0.5-3) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'dplyr' from a cran remote, the SHA1 (1.0.7) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Installing 1 packages: spDataLarge
#> Installing package into '/home/robin/R/x86_64-pc-linux-gnu-library/4.0'
#> (as 'lib' is unspecified)
#> Warning: package 'spDataLarge' is not available for this version of R
#> 
#> A version of this package for your version of R might be available elsewhere,
#> see the ideas at
#> https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
#> Skipping install of 'gstat' from a cran remote, the SHA1 (2.0-7) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'raster' from a cran remote, the SHA1 (3.4-13) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'fields' from a cran remote, the SHA1 (12.3) has not changed since last install.
#>   Use `force = TRUE` to force installation
#> Skipping install of 'mapsf' from a cran remote, the SHA1 (0.2.0) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

Furthermore, we will install a couple of packages that are not available
on CRAN as follows:

``` r
remotes::install_github("Nowosad/spDataLarge")
#> Using github PAT from envvar GITHUB_PAT
#> Skipping install of 'spDataLarge' from a github remote, the SHA1 (1b70c8bb) has not changed since last install.
#>   Use `force = TRUE` to force installation
remotes::install_github("Nowosad/supercells")
#> Using github PAT from envvar GITHUB_PAT
#> Skipping install of 'supercells' from a github remote, the SHA1 (48c4c6f9) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

Much of the material is based on the book Geocomputation with R. To
install packages needed to reproduce the book (and many of the packages
needed for the course) run the following command:

``` r
remotes::install_github("geocompr/geocompkg")
```
