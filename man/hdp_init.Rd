% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hdp_init.R
\name{hdp_init}
\alias{hdp_init}
\title{Initialise a hdpState object}
\usage{
hdp_init(ppindex, cpindex, hh, alphaa, alphab)
}
\arguments{
\item{ppindex}{Index (or indices) of the parental process(es) for the initial DPs.
The 'top' DP should have parent process '0' (the base Dirichlet distribution).}

\item{cpindex}{Index (or indices) of the concentration parameter(s) for the initial DPs.}

\item{hh}{Parameters of the base Dirichlet distribution (like psuedocounts across categories).
Must be a vector with length equal to the number of data item categories.}

\item{alphaa}{Shape hyperparameters for the gamma priors over the DP concentration parameters.}

\item{alphab}{Rate hyperparameters for the gamma priors over the DP concentration parameters.}
}
\value{
A hdpState object with the initial HDP structure. See \code{\link{hdpState-class}}
}
\description{
Initialise a hdpState object with one or more DP nodes and their parent relationships,
the parameters of the base Dirichlet distribution, and a set of hyperparameters
for the gamma priors over the DP concentration parameters. Further DP nodes can
be added with \code{\link{hdp_adddp}}, and further concentration parameters can
be added with \code{\link{hdp_addconparam}}. Data is assigned via \code{\link{hdp_setdata}}.
When initialised, the DP nodes are 'heldout' (not available for posterior sampling)
and will need to be activated (see \code{\link{dp_activate}}). Finally, the posterior
sampling process (a Gibbs sampler) is run via \code{\link{hdp_posterior}}.
}
\examples{
# initialise a HDP with just one 'top' DP node off the base distribution,
# a uniform Dirichlet base distribution over six possible data categories,
# and three possible concentration parameters to be shared across the HDP tree
# (top DP using conparam number 1), each with hyperparameters (1,2).
hdp_init(ppindex=0, cpindex=1, hh=rep(1, 6), alphaa=rep(1, 3), alphab=rep(2, 3))

# initialise a HDP with one 'top' DP node off the base distribution,
# AND two children DP nodes off that parent. The two children DPs share a different
# concentration parameter (hyperparameters are (2, 0.5)).
hdp_init(ppindex=c(0, 1, 1), cpindex=c(1, 2, 2), hh=rep(1, 6), alphaa=rep(2, 2), alphab=rep(0.5, 2))
}
\seealso{
\code{\link{hdp_quick_init}}, \code{\link{hdp_prior_init}},
 \code{\link{hdp_addconparam}}, \code{\link{hdp_adddp}},
 \code{\link{hdp_setdata}}, \code{\link{dp_activate}}, \code{\link{hdp_posterior}}
}

