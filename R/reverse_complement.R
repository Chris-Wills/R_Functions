#' reverse_complement
#'
#' This function takes a character string of DNA and produces a character string of reverse complement DNA

#' @export

reverse_complement <- function(DNA) {
  rev <- c('A','C','T','G')
  names(rev) <- c('T','G','A','C')
  DNA <- data.frame(rev(unlist(strsplit(DNA, ""))))
  X <- vector(mode="character", length=nrow(DNA))
    for (i in 1:length(DNA)) {
      x <- rev[DNA$rev.unlist.strsplit.DNA.......]
  }
  paste(x, collapse = "")
}






