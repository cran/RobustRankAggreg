% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregateRanks.R
\name{rhoScores}
\alias{rhoScores}
\title{Calculate rho scores}
\usage{
rhoScores(r, topCutoff = NA, exact = FALSE)
}
\arguments{
\item{r}{vector of values in [0, 1]}

\item{topCutoff}{a vector of cutoff values used to limit the number of elements in the 
input lists}

\item{exact}{indicator if exact p-values should be calculated (Warning: it is computationally unstable and does to give considerable gain)}
}
\value{
A rho score for the normalized rank vector.
}
\description{
Calculate Rho score for normalized rank vector
}
\details{
Takes in a vector with values in [0, 1]. Applies \code{\link{betaScores}} to the vector, takes the minimum of the beta scores and converts it to a valid p-value.
}
\examples{
 rhoScores(c(runif(15)))
 rhoScores(c(runif(10), rbeta(5, 1, 50)))

}
\references{
Raivo Kolde, Sven Laur, Priit Adler, Jaak Vilo, Robust rank aggregation for gene list integration and meta-analysis, Bioinformatics, 2012,, https://doi.org/10.1093/bioinformatics/btr709
}
\author{
Raivo Kolde <rkolde@gmail.com>
}
