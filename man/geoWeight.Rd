\name{geoWeight}
\alias{geoWeight}
\title{Geographic weighting}
\usage{
geoWeight(x)
}
\arguments{
  \item{x}{a Raster* object}
}
\value{
a weighted Raster* object
}
\description{
The function performs geographic weighting using the cosine
of latitude to compensate for area distortion of
non-projected lat/lon data
}
\examples{
data(vdendool)

wgtd <- geoWeight(vdendool)

opar <- par(mfrow = c(1,2))
plot(vdendool[[1]], main = "original")
plot(wgtd[[1]], main = "weighted")
par(opar)
}

