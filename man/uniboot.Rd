% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uniboot.R
\name{uniboot}
\alias{uniboot}
\title{Univariate Bootstrap}
\usage{
uniboot(
  data,
  B = 1000,
  groups = NULL,
  keepgroups = F,
  size = 1,
  HIcor = NULL,
  samplefrom = "group",
  use = "everything",
  standardized = T
)
}
\arguments{
\item{data}{The data frame to be resampled}

\item{B}{The number of bootstrap samples.}

\item{groups}{A grouping variable name}

\item{keepgroups}{Should the grouping variable be kept in the final datasets?}

\item{size}{The size of the bootstrap sample to be returned. Should be as a proportion and must be evenly divided into nrow(data).}

\item{HIcor}{If a hypothesis imposed correlation matrix is to be used, this argument takes a list of hypothesized correlation matrices. IT MUST BE A LIST OF ONE OR MORE MATRICES. Multiple matrices can be entered in the case of grouped data (one for each group). If the nil-null correlation is to be used an identity matrix can be entered here (the same size as the appropriate correlation matrix).}

\item{samplefrom}{Takes one of either "group" or "whole". When doing bootstrapping of grouped data this tells uniboot if the whole sample should be used as the sampling frame for each group (whole), or not (group). "group" should be used unless it is believed that all groups share the same underlying marginal distribution for each variable (e.g., the same mean and variance in the case of normally distributed data).}

\item{use}{The missing data method for cor. Default is R's default "everything".}

\item{standardized}{should the resampled data be standardized? The default is TRUE. This is computationally more efficient (the data are standardized as a step during the diagonalization procedure).}
}
\value{
A list of bootstrap samples
}
\description{
WARNING: This function can't be used with data that is already fed through the RK function. The correlation matrix will not be positive definite.
}
\examples{
data<-TestData()
X<-uniboot(data,1000)
}
