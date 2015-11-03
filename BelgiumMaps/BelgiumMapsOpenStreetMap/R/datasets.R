
#' @name BE_OSM_ADMIN
#' @title BE_OSM_ADMIN: Administrative boundaries of Belgium based on OpenStreetMap
#' @description BE_OSM_ADMIN: SpatialPolygonsDataFrame with administrative boundaries of Belgium. Extracted on 2015/11/03. 
#' It contains polygons of all administrative boundaries (levels 2, 4, 6, 7, 8, 9). 
#' Polygons are stored in degrees latitude/longitude (EPSG:4326 WGS 84).
#' 
#' Mark that the OpenStreetMap data at administrative level 9 seems to be incomplete.
#' Markt also that several polygons can exist for the same boundary.
#' @docType data
#' @references \url{http://wiki.openstreetmap.org/wiki/Tag:boundary=administrative}, 
#' \url{http://download.geofabrik.de/europe/belgium.html}, 
#' \url{https://en.wikipedia.org/wiki/World_Geodetic_System}
#' @examples
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
NULL
