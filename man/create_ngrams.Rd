% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ngrams.R
\name{create_ngrams}
\alias{create_ngrams}
\title{Get All Possible N-Grams}
\usage{
create_ngrams(n, u, possible_grams = NULL)
}
\arguments{
\item{n}{\code{integer} size of n-gram.}

\item{u}{\code{integer}, \code{numeric} or \code{character} vector of all
possible unigrams.}

\item{possible_grams}{number of possible n-grams. If not \code{NULL} n-grams do not
contain information about position}
}
\value{
a character vector. Elements of n-gram are separated by dot.
}
\description{
Creates vector of all posible n_grams (for given \code{n}).
}
\details{
See Details section of \code{\link{count_ngrams}} for more
information about n-grams naming convention. The possible information about distance
must be added by hand (see examples).
}
\note{
Input data must be a matrix or data frame of numeric elements.
}
\examples{
#bigrams for standard aminoacids
create_ngrams(2, 1L:20)
#bigrams for standard aminoacids with positions, 10 amino acid long sequence, so
#only 9 bigrams can be located in sequence
create_ngrams(2, 1L:20, 9)
#bigrams for DNA with positions, 10 nucleotide long sequence, distance 1, so only 8 bigrams
#in sequence
#paste0 adds information about distance at the end of n-gram
paste0(create_ngrams(2, 1L:4, 8), "_0")
}

