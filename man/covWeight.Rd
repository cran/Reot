\name{covWeight}
\alias{covWeight}
\title{Create a weighted covariance matrix}
\usage{
covWeight(y, weights, ...)
}
\arguments{
  \item{y}{a matrix (e.g. as returned by
  \code{\link{getValues}})}

  \item{weights}{a numeric vector of weights. For lat/lon
  data this can be produced with \code{\link{getWeights}}}

  \item{...}{additional arguments passed to
  \code{\link{cov.wt}}}
}
\value{
see \code{\link{cov.wt}}
}
\description{
Create a weighted covariance matrix
}
\seealso{
\code{\link{cov.wt}}
}

