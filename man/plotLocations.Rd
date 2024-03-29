\name{plotLocations}
\alias{plotLocations}
\title{Plot the locations of the base points}
\usage{
plotLocations(eot.obj, ...)
}
\arguments{
  \item{eot.obj}{an EOT object as returned by
  \code{\link{eot}}}

  \item{...}{further arguments to be passed to
  \code{\link{spplot}}}
}
\description{
Simple plotting routine to visualise the location of all
identified base points colour coded according to eot mode
(1 to n).
}
\examples{
data(vdendool)

# claculate 4 leading modes
modes <- eot(pred = vdendool, resp = NULL, n = 4, reduce.both = FALSE,
             standardised = FALSE, print.console = TRUE)

plotLocations(modes)
}

