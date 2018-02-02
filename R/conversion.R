#'Convert unit from metric to Japanese jo.
#'
#'@param squareMeter square meter
#'
#'@return square_measure in Japanese jo
#'
#'@export
convertSquareMeterToJapaneseJo <- function(squareMeter) {
    return(squareMeter/3.3/2)
}

#'Convert unit from Japanese jo to metric.
#'
#'@param jo square measure in Japanese jo
#'
#'@return square_measure in metric
#'
#'@export
convertJoToSquareMeter <- function(jo) {
    return(jo * 2 * 3.3)
}
