



#' Extract tag elements from the TAGS field of BE_OSM_ADMIN
#'
#' Extract tag elements from the TAGS field of BE_OSM_ADMIN
#'
#' @param x a character vector
#' @param tag a character string with the tag to extract
#' @return 
#' a character vector with the extracted tags values
#' @export
#' @examples
#' data(BE_OSM_ADMIN)
#' mytags <-  sapply(BE_OSM_ADMIN$TAGS, FUN=tag_extractor, tag = "ref:INS")
tag_extractor <- function(x, tag){
  stopifnot(is.character(x))
  regex <- ",name,.+|^\\{name,.+"
  regex <- sprintf(",%s,.+|^\\{%s,.+", tag, tag)
  x <- stri_extract(str=x, regex = regex, mode = "all")
  x <- gsub("^,|^\\{|}$", "", x)
  if(is.na(x)){
    return(x)
  }
  x <- strsplit(x, ",")[[1]][2]
  x <- gsub('^"', "", x)
  x <- gsub('"$', "", x)
  x
}
