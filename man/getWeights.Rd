\name{getWeights}
\alias{getWeights}
\title{Calculate weights from latitude}
\usage{
getWeights(x)
}
\arguments{
  \item{x}{a Raster* object}
}
\value{
a numeric vector of weights
}
\description{
Calculate weights using the cosine of latitude to
compensate for area distortion of non-projected lat/lon
data
}
\examples{
data("australiaGPCP")
wghts <- getWeights(australiaGPCP)
wghts.rst <- australiaGPCP[[1]]
wghts.rst[] <- wghts

opar <- par(mfrow = c(1,2))
plot(australiaGPCP[[1]], main = "data")
plot(wghts.rst, main = "weights")
par(opar)
}

