\name{nEot4Var}
\alias{nEot4Var}
\title{Number of EOTs needed for variance explanation}
\usage{
nEot4Var(eot.obj, var = 0.9)
}
\arguments{
  \item{eot.obj}{the object returned by \code{\link{eot}}}

  \item{var}{the minimum amount of variance explained by
  the modes}
}
\value{
an integer denoting the number of EOTs needed to explain
\code{var}
}
\description{
The function identifies the number of modes needed to
explain a certain amount of variance within the response
series.
}
\note{
This is a post-hoc function like \code{\link{plotEot}} and
\code{\link{plotLocations}}. This means that it needs an
object which was created with \code{\link{eot}}. Depending
on the potency of the identified EOTs, it may be necessary
to compute a high number of modes in order to be able to
explain a large enough part of the variance
}
\examples{
data(vdendool)

modes <- eot(pred = vdendool, resp = NULL, n = 5, reduce.both = FALSE,
             standardised = FALSE, print.console = TRUE)

### How many modes are needed to explain 40\% of variance?
nEot4Var(modes, 0.4)
}

