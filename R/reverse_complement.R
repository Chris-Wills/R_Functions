#' reverse_complement
#'
#' This function takes a character string of IUPAC coded nucleotides and produces a character string of reverse complement DNA.
#' @param sequence A vector of IUPAC coded nucleotides.

#' @export

reverse_complement <- function(sequence) {
  comp <- list('A','C','T','G','Y','R','W','S','K','M','D','V','H','B','X','N','-')
  names(comp) <- c('T','G','A','C','R','Y','W','S','M','K','H','B','D','V','X','N','-')
  sequence <- data.frame(rev(unlist(strsplit(sequence, ""))))
  sequence$x <- comp[as.vector(sequence$rev.unlist.strsplit.sequence.......)]
  paste(sequence$x, collapse = "")
}

