airtemps <- c(212, 30.3, 78, 32) # air temps in F

celsius1 <- (airtemps[1] - 32)*5/9
celsius2 <- (airtemps[2] - 32)*5/9
celsius3 <- (airtemps[3] - 32)*5/9

fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}

#' celsius * 9/5 + 32
#'
#'Convert Celsius temperatures to Fahrenheit
#'
#' @param celsius The temperature in Celsius
#'
#' @return The temperature in Fahr
#' @export
#'
#' @examples
celsius_to_fahr <- function(celsius){
  fahr <- (celsius *9/5 + 32)
  return(fahr)
}

celsius1 <- fahr_to_celsius(airtemps[1])
celsius2 <- fahr_to_celsius(airtemps[2])
celsius3 <- fahr_to_celsius(airtemps[3])

fahr1 <- celsius_to_fahr(celsius1)
fahr2 <- celsius_to_fahr(celsius2)
fahr3 <- celsius_to_fahr(celsius3)

airtemps_c <- fahr_to_celsius(airtemps)
airtemps_f <- celsius_to_fahr(airtemps_c)

airtemps == airtemps_f


convert_temps <- function(fahr){
  celsius <- (fahr - 32) * 5/9
  kelvin <- celsius + 273.15
  temps <- data.frame(fahr = fahr,
                      celsius = celsius, 
                      kelvin = kelvin)
  return(temps)
}

temps_all <- convert_temps(airtemps)
