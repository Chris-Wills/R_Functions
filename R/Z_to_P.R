#' Z-Score to P-value
#'
#' This function takes a vector of Z-scores and produces a vector of P-values

#' @export

convert.z.score<-function(z, one.sided=NULL) {
  if(is.null(one.sided)) {
    pval = pnorm(-abs(z));
    pval = 2 * pval
  } else if(one.sided=="-") {
    pval = pnorm(z);
  } else {
    pval = pnorm(-z);
  }
  return(pval);
}
