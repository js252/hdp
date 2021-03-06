% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aaa-generics-output.R
\docType{methods}
\name{hdp_extract_components}
\alias{hdp_extract_components}
\alias{hdp_extract_components,hdpSampleChain-method}
\alias{hdp_extract_components,hdpSampleMulti-method}
\title{Extract major components from the raw clusters}
\usage{
hdp_extract_components(x, cos.merge = 0.9, redo = TRUE)

\S4method{hdp_extract_components}{hdpSampleChain}(x, cos.merge)

\S4method{hdp_extract_components}{hdpSampleMulti}(x, cos.merge = 0.9,
  redo = TRUE)
}
\arguments{
\item{x}{hdpSampleChain or hdpSampleMulti object}

\item{cos.merge}{Merge components with cosine similarity above this threshold (default 0.90)}

\item{redo}{Logical. If true - constituent chains with previously calculated components
will be re-calculated. Only used for hdpSampleMulti.}
}
\value{
A hdpSampleChain or hdpSampleMulti object updated with component information
}
\description{
If prior components included via \code{\link{hdp_prior_init}}, they will be
preserved by \code{hdp_extract_components} and prefixed with "P".
Any new components in this case are prefixed with "N".
}
\section{Methods (by class)}{
\itemize{
\item \code{hdpSampleChain}: Extract components for hdpSampleChain

\item \code{hdpSampleMulti}: Extract components for hdpSampleMulti
}}
\examples{
hdp_extract_components(mut_example_chain)
}
\seealso{
\code{\link{hdp_posterior}}, \code{\link{hdp_multi_chain}},
 \code{\link{plot_comp_size}}, \code{\link{plot_comp_distn}},
 \code{\link{plot_dp_comp_exposure}}
}

