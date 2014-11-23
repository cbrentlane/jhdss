complete <- function(directory,id=1:332) {
  filenames <- paste(directory, list.files(directory, pattern=".csv"), sep='/')
  data <- lapply(filenames, read.csv)
  comp <- lapply(data, complete.cases)
  nobs <- sapply(comp, sum)
  res <- data.frame(id, nobs)
  rownames(res) <- NULL
  return (res[id,])
}