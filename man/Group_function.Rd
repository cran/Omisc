% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Grouping_function.R
\name{Group_function}
\alias{Group_function}
\title{Grouping_function}
\usage{
Group_function(
  data = NULL,
  x,
  levels,
  func = mean,
  center = FALSE,
  nested = TRUE,
  append = FALSE,
  funcName = "Mean"
)
}
\arguments{
\item{data}{a data frame with the x and level variables included. Default is NULL.}

\item{x}{If data = NULL a dataframe of scores to have the function applied to. If data != NULL, a  vector of string(s) naming the variable(s) in data to use.}

\item{levels}{If data = NULL, a dataframe of grouping variables. If data != NULL, a vector of strings naming the variables in data to use. levels should be ordered from the highest level to the lowest. Group and case identifiers should be unique, if they are not unique, cases with non-unique identifiers will be grouped together.}

\item{func}{A function to apply at each group. Default is mean.}

\item{center}{If set to true variables will be group/person mean centered. Note that the grand mean remains unchanged by this operation. If this output is to be passed directly to Parallel_Tree the grand mean should be set to 0.}

\item{nested}{Are level variables nested? Default is TRUE. If set to FALSE means will be calculated for level variable independently. FALSE may be useful in cases of crossed designs. Note that if data are nested but all identifiers are unique both within and across groups nested = FALSE and nested = TRUE will return the same result.}

\item{append}{If set to true, the original data will be returned along with all created variables.}

\item{funcName}{Provides way to name function used. This is used when creating names for created variables. Default is "Mean".}
}
\value{
This function returns a dataframe with variables labeled according to the level at which the function was applied. Assumed function is mean, and all variables are labeled accordingly. If an alternative function is used labels should be manually changed to reflect function used.
}
\description{
originally from the ParallelTree package. If data argument is Null, takes a variable "x" and a matrix or dataframe of level identifiers (e.g., mother and then child IDs). Level variables should be included in order from highest level to the lowest. Listwise deletes missing data. Otherwise grabs variables from entered dataframe
Group_function
}
\examples{

#the ChickWeight data is from base R
#nested is set to false because Chick and Time are crossed
Means_Chick<-Group_function(data=ChickWeight,x="weight", levels =c("Diet","Chick","Time"),
nested = FALSE, append=TRUE)
}
