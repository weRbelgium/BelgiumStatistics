# BelgiumMaps: Maps about Belgium

This suite of R package allows R users to easily have data available containing geographical information about Belgium. It contains data available as part of OpenStreetMap (https://www.openstreetmap.org), functions to extract and recode data of the Global Administrative Area (http://gadm.org) as well as data available as part of the  Atlas Numérique de Belgique (UCL: http://www.atlas-belgique.be/cms/index.php?page=fonds)

## Packages

There are 3 packages available in this part of the repository

1. **BelgiumMapsOpenStreetMap**: released under the Open Database License 1.0. http://opendatacommons.org/licenses/odbl/1-0/. You may use the data for any purpose, but you have to acknowledge OpenStreetMap as the data source.

2. **BelgiumMapsGADM**: maps only available for academic use and other non-commercial use

3. **BelgiumMapsAtlas**: maps only available for academic use and other non-commercial use

## Installation

The R package is currently only available through github. There are no plans to put these packages on CRAN as the data are too big for the CRAN policy and the text is available in UTF-8 instead of ASCII (which is the preferred encoding at CRAN).


To install the latest version from github:
```
install.packages('devtools')
devtools::install_github("jwijffels/StatisticsBelgium/BelgiumMaps", subdir = "BelgiumMapsOpenStreetMap")
```

## Documentation of the BelgiumMapsOpenStreetMap package

This package contains data extracted from http://download.geofabrik.de/europe/belgium.html on 2015/11/03 with OpenStreetMap data up to 2015-11-02T22:22:02Z.

The belgium-latest.osm.pbf file was imported with osm2pgsql in PostGIS and converted to a shapefile with pgsql2shp to obtain shape files of polygons of administrative boundaries of administrative levels 2, 4, 6, 7, 8, 9. More information about administrative levels in OpenStreetMap: http://wiki.openstreetmap.org/wiki/Tag:boundary%3Dadministrative

```
library(BelgiumMapsOpenStreetMap)
library(sp)
data(BE_OSM_ADMIN) 
plot(BE_OSM_ADMIN)
```
