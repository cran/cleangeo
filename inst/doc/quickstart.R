## ---- eval=FALSE--------------------------------------------------------------
#  remotes::install_github("eblondel/cleangeo")

## -----------------------------------------------------------------------------
library(cleangeo)

## -----------------------------------------------------------------------------
file <- system.file("extdata", "example.shp", package = "cleangeo")

require(sf)
sf <- sf::st_read(file)
sp <- as(sf, "Spatial")

## -----------------------------------------------------------------------------
report <- clgeo_CollectionReport(sp)
clgeo_SummaryReport(report)

## -----------------------------------------------------------------------------
sp.clean <- clgeo_Clean(sp)


## -----------------------------------------------------------------------------
report.clean <- clgeo_CollectionReport(sp.clean)
clgeo_SummaryReport(report.clean)


