#' reverse_complement
#'
#' This function takes a character string of DNA and produces a character string of reverse complement DNA

#' @export

reverse_complement <- function(DNA) {
  comp <- list('A','C','T','G')
  names(comp) <- c('T','G','A','C')
  DNA <- data.frame(rev(unlist(strsplit(DNA, ""))))
  DNA$x <- comp[as.vector(DNA$rev.unlist.strsplit.DNA.......)]
  paste(DNA$x, collapse = "")
}
