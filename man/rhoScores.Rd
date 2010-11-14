\name{rhoScores}
\alias{rhoScores}
\title{Calculate Rho score for normalized rank vector...}
\usage{rhoScores(r, topCutoff=NA)
}
\description{Calculate Rho score for normalized rank vector}
\details{Takes in a vector with values in [0, 1]. Applies \code{\link{betaScores}} to the vector, takes the minimum of the beta scores and converts it to a valid p-value.}
\references{Kolde et al "Robust Rank Aggregation for gene list integration and 
meta-analysis" (in preparation)}
\author{Raivo Kolde <rkolde@gmail.com>}
\arguments{\item{r}{vector of values in [0, 1]}
\item{topCutoff}{a vector of cutoff values used to limit the number of elements in the 
input lists}
}
\examples{rhoScores(c(runif(15)))
rhoScores(c(runif(10), rbeta(5, 1, 50)))}

