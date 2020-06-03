#' Z-Score to P-value
#'
#' This function takes a vector of Z-scores and produces a vector of P-values for a one-sided or two-sided test.
#' @param z A vector of Z-scores.
#' @param one.sided Defaults to two sided test. Set to '+' for one sided test of Z-scores greater than expected, or '-' for less than expected.
#'

#' @export

convert.z.score<-function(z, one.sided=FALSE) {
  if(one.sided == FALSE) {
    pval = pnorm(-abs(z))
    pval = 2 * pval
  } else if(one.sided=="-") {
    pval = pnorm(z)
  } else {
    pval = pnorm(-z)
  }
  pval
}





