#' Maps of Belgium extracted from OpenStreetMap
#' 
#' Maps of Belgium extracted from OpenStreetMap
#'
#' @name BelgiumMapsOpenStreetMap-package 
#' @aliases BelgiumMapsOpenStreetMap BelgiumMapsOpenStreetMap-package
#' @docType package 
#' @importFrom stringi stri_extract
#' @examples
#' ## Administrative areas
#' data(BE_OSM_ADMIN)
#' str(as.data.frame(BE_OSM_ADMIN))
#' 
#' library(sp)
#' plot(BE_OSM_ADMIN)
#' plot(subset(BE_OSM_ADMIN, TAG.admin.level %in% "2"))
#' plot(subset(BE_OSM_ADMIN, TAG.admin.level %in% "4"))
#' plot(subset(BE_OSM_ADMIN, TAG.admin.level %in% "6"))
#' plot(subset(BE_OSM_ADMIN, TAG.admin.level %in% "7"))
#' plot(subset(BE_OSM_ADMIN, TAG.admin.level %in% "8"))
#' plot(subset(BE_OSM_ADMIN, TAG.admin.level %in% "9"))
#' 
#' ## Other datasets
#' data(BE_OSM_PLACES)
#' data(BE_OSM_POINTS)
#' data(BE_OSM_RAILWAYS)
#' data(BE_OSM_ROADS)
#' data(BE_OSM_WATERWAYS)
#' data(BE_OSM_LANDUSE)
#' str(as.data.frame(BE_OSM_LANDUSE))
#' plot(BE_OSM_RAILWAYS)
#' plot(BE_OSM_WATERWAYS)
#' plot(subset(BE_OSM_ROADS, type %in% c("motorway", "primary")))
#' str(as.data.frame(BE_OSM_ROADS))
NULL
