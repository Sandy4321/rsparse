#' @import methods
#' @import Matrix
#' @importFrom stats rnorm
#' @import data.table
#' @import Rcpp
#' @import futile.logger
#' @useDynLib rsparse

.onAttach = function(libname, pkgname) {
  omp_threads = omp_thread_count()
  if(interactive())
    packageStartupMessage(sprintf("Setting OpenMP threads number to %d. \nCan be adjusted by setting `options(\"rsparse_omp_threads\" = N_THREADS)`", omp_threads))
  options("rsparse_omp_threads" = omp_threads)
}
