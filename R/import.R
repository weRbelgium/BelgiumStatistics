



#' Download and reads in a zip file with information available at Statistics Belgium
#'
#' Download and reads in a zip file with information available at Statistics Belgium
#'
#' @param path character string with the path to the file to read
#' @param download logical indicating to download the file
#' @param download_to character string with the path to the directory where the file will be downloaded
#' @param encoding character with the encoding to assume for the file. Defaults 'UTF-8'. Only options are 'UTF-8', 'Latin-1' or 'unknown'
#' @param ... other arguments passed on to fread, except for na.strings and sep which are set to c('NA', '') and '|' respectively
#' @return 
#' a data.frame
#' @export
#' @seealso \code{\link[data.table]{fread}}
#' @examples
#' \dontrun{
#' x <- be_reader(path = "http://statbel.fgov.be/nl/binaries/TF_BIRTHS_tcm325-271723.zip") 
#' }
be_reader <- function(path, download=TRUE, download_to=tempdir(), encoding = "UTF-8", ...){
  if(download){
    newpath <- file.path(download_to, basename(path))
    path <- download.file(url = path, destfile = newpath)
    path <- newpath
  }
  #   x <- read.table(Hmisc::getZip(path), header = TRUE, sep="|", stringsAsFactors=FALSE, 
  #                   check.names=FALSE, encoding = "UTF-8", ...)
  #   colnames(x) <- iconv(colnames(x), from = "UTF-8", to = "ASCII", sub="")
  x <- data.table::fread(sprintf("unzip -p %s", path), encoding = encoding, 
                         na.strings = c("NA", ""), sep="|", ...)
  x <- data.table::setDF(x)
  if(!encoding %in% c("unknown")){
    colnames(x) <- iconv(colnames(x), from = encoding, to = "ASCII", sub="")  
  }
  x
}