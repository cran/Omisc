% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cholcors.R
\name{cholcors}
\alias{cholcors}
\title{cholcors}
\usage{
cholcors(X, use = "everything")
}
\arguments{
\item{X}{A matrix of data.}

\item{use}{the missing data type to use for the correlation. Default is R's default "everything".}
}
\value{
This function returns the cholesky decomposition of the correlation matrix of the data
}
\description{
cholcors
}
\examples{
X<-stats::rnorm(100)
Y<-stats::rnorm(100)+X
Z<-cbind(X,Y)
cholcors(Z)
}
