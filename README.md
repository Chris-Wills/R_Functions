# WiTools
A collection of R functions I've written for genomic analyses

## Installation
``` r
devtools::install_github("Chris-Wills/R_Functions")
```
## Usage
``` r
library(WiTools)
```
## Functions
### Genomic Lambda
``` r
genomic_lambda(data, input)
```
This function takes a vector of P-values, Z-scores or Chi-squared statistics and estimates the genomic inflation factor by converting to a chi-squared statistic and dividing the observed median by the median of a chi-squared distribution on 1df. Use `input =` `"P"`, `"Z"` or `"chi"` to indicate the type of data passed to the function. 

### Z-score to P-value
``` r
convert.z.score<-function(z, one.sided=NULL)
```
Converts a vector of Z-scores to P-values, allows adjustment for one sided tests

### Reverse Complement
```r
reverse_complement(sequence)
```
This function takes a character string of IUPAC coded nucleotides and produces a character string of reverse complement DNA.

