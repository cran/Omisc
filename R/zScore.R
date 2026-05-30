#' zScore
#'
#' @param X vector to be converted to z scores
#' @param times exponent controlling the denominator scaling
#'
#' @return Returns a vector of z scores
#' @export
#'
#' @examples X<-c(1:10)
#' zScore(X, times=1)
zScore<-function(X, times){
  X<-(X-mean(X))/sqrt(((length(X)**(times-1))*sum((X-mean(X))**2))/(length(X)**times-1))
  return(X)
}
