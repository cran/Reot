\name{deseason}
\alias{deseason}
\title{Create seasonal anomalies}
\usage{
deseason(data, cycle.window = 12, ...)
}
\arguments{
  \item{data}{a RasterStack}

  \item{cycle.window}{the window for the creation of the
  anomalies}

  \item{...}{currently not used}
}
\value{
a deseasoned RasterStack
}
\description{
The function calculates anomalies of a RasterStack by
supplying a suitable seasonal window. E. g. to create
monthly anomalies of a raster stack of 12 layers per year,
use \code{cycle.window = 12}.
}
\examples{
data("australiaGPCP")

aus.dsn <- deseason(australiaGPCP, 12)

opar <- par(mfrow = c(1,2))
plot(australiaGPCP[[1]], main = "original")
plot(aus.dsn[[1]], main = "deseasoned")
par(opar)
}
\seealso{
\code{\link{anomalize}}, \code{\link{denoise}}
}

