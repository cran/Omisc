#' startparallel
#'
#' @param data data to pass to the clusters. Must be the name of the data in quotes
#'
#' @return NA
#' @importFrom parallel makeCluster detectCores clusterEvalQ clusterExport
#' @export
#'
#' @examples #data<-TestData()
#' #clust<-startparallel("data")
#' #endparallel(clust)
startparallel<-function(data){
  no_cores <- parallel::detectCores()-1
  clust <- parallel::makeCluster(no_cores)
  parallel::clusterEvalQ(clust, library(Omisc))
  parallel::clusterExport(clust, data)
  return(clust)
}
