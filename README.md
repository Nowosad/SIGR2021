
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SIGR2021

<!-- badges: start -->

<!-- badges: end -->

# the SIGR2021 Summer School

Dates: 2021-06-27 - 2021-07-02

Location: <https://www.openstreetmap.org/#map=11/45.9115/-1.2737>

## Important links

  - GitHub for any technical questions + sharing code
    <https://github.com/Nowosad/SIGR2021>
  - In the chat on
    [Slack](https://join.slack.com/t/geocomprworkspace/shared_invite/zt-sc7tqriq-9Q2rkveZwqCAQoBS3yqZNQ)
    (sign-in)
  - Feel free to post code here: <https://rustpad.io/#uFuBVH> (no
    sign-in)

## Our schedule

### Tuesday 29 afternoon - GIS and mapping - 2H

[A lecture on the GIS and mapping ecosystem of R](lecture/lecture.html)

### Wednesday 30 morning - GIS and mapping - 3H

[A workshop on GIS and mapping with R - part
1](workshop1/workshop1_rl.html)

### Friday 2 morning - Image processing and all things raster - 3H

[A workshop on image processing and raster analysis with R (raster,
terra, stars)](workshop2/workshop2.html)

## Prerequisites

We assume attendees have good knowledge of spatial data and some
experience with writing code.

In terms of software we will use R and assume that attendees have a
recent version, R (\>= 4.0.0). Check this as follows:

``` r
R.version
#>                _                           
#> platform       x86_64-redhat-linux-gnu     
#> arch           x86_64                      
#> os             linux-gnu                   
#> system         x86_64, linux-gnu           
#> status                                     
#> major          4                           
#> minor          0.5                         
#> year           2021                        
#> month          03                          
#> day            31                          
#> svn rev        80133                       
#> language       R                           
#> version.string R version 4.0.5 (2021-03-31)
#> nickname       Shake and Throw
```

The `major 4` bit says that you are on a recent version of R (older
versions of R may work but this cannot be guranteed).

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
```

Furthermore, we will install a couple of packages that are not available
on CRAN as follows:

``` r
remotes::install_github("Nowosad/spDataLarge")
remotes::install_github("Nowosad/supercells")
```

Much of the material is based on the book Geocomputation with R. To
install packages needed to reproduce the book (and many of the packages
needed for the course) run the following command:

``` r
remotes::install_github("geocompr/geocompkg")
```
