\name{betaScores}
\alias{betaScores}
\title{Calculate the beta scores for normalized rank vector.}
\usage{betaScores(r)
}
\description{Calculate the beta scores for normalized rank vector.}
\details{Takes in a vector with values in [0, 1]. It sorts the values to get the order
statistics and calculates p-values for each of the order statistics. These are based 
on their expected distribution under the null hypothesis of uniform distribution. 

In RRA algorithm context the inputs are supposed to be normalized ranks. However, 
p-values in general follow the uniform distribution, therefore it can be used with any 
kind of p-value vectors, to see if there are more small values than expected. 

The NA values are removed before calculation and all results take into account only 
existing values.}
\value{The functions returns a vector of p-values, that correspond to the sorted
input vector. The NA-s are pushed to the end.}
\references{Kolde et al "Robust Rank Aggregation for gene list integration and 
meta-analysis" (in preparation)}
\author{Raivo Kolde <rkolde@gmail.com>}
\arguments{\item{r}{vector of values in [0, 1]}
}
\examples{betaScores(c(runif(15)))
betaScores(c(runif(10), rbeta(5, 1, 50)))}

