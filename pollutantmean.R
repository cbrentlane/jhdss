pollutantmean <- function(directory, pollutant, id=1:332) {
  y <- list.files(directory, full.names=TRUE)
  x <- data.frame()
  for (i in id) {
    x <- rbind(x, read.csv(y[i]))
  }
  polmean <- mean(x[[pollutant]], na.rm=TRUE)
  polmean
}