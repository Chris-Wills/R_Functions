#' genomic_lambda
#'
#' This function takes a vector of P-values, Z-scores or Chi-squared statistics and estimates the genomic inflation factor by converting to a chi-squared statistic and dividing the observed median by the median of a chi-squared distribution on 1df.
#' @param data Vector of P-values, Z-scores or Chi-squared statistics
#' @param input Set the data input type: 'P' - P-values, 'Z' - Z-scores or 'chi' - Chi-squared statistics.

#' @export

"genomic_lambda" <- function(data, input) {
  data <- data[!is.na(data)]
  out <- list()
  if (input == "P") {
    data_chi <- qchisq(data, 1, lower.tail=FALSE)
    out$lambda <- median(data_chi, na.rm=TRUE)/qchisq(0.5,1)
  }
  else if (input == 'Z'){
    out$lambda <- median(data^2, na.rm=TRUE)/qchisq(0.5,1)
  }
  else if (input == 'chi') {
    out$lambda <- median(data, na.rm=TRUE)/qchisq(0.5,1)
  }
  else {
    stop("'input' should be either 'P', 'Z' or 'chi'!")
  }
  out
}
