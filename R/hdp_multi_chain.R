#' Gather multiple independent posterior sampling chains for the same HDP
#'
#' @param chain_list A list of hdpSampleChain objects for the same data and HDP
#'  structure, but run with different random seeds.
#' @return A hdpSampleMulti object
#' @seealso \code{\link{hdp_posterior}}
#' @export

hdp_multi_chain <- function(chain_list){

  if (class(chain_list) != "list" |
        any(sapply(chain_list, class) != "hdpSampleChain")) {
    stop("chain_list must be a list of hdpSampleChain objects")
  }

  ans <- new("hdpSampleMulti",
             chains = chain_list,
             numcomp = as.integer(NULL),
             prop.ex = as.numeric(NULL),
             comp_cos_merge = as.numeric(NULL),
             comp_categ_counts = list(),
             comp_dp_counts = list(),
             comp_categ_distn= list(),
             comp_dp_distn= list())

  # check validity and return
  if (!validObject(ans)) warning("Not a valid hdpSampleMulti object.")
  return(ans)

}
