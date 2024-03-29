\name{cutStack}
\alias{cutStack}
\title{Shorten a RasterStack}
\usage{
cutStack(data, tail = TRUE, lag = NULL)
}
\arguments{
  \item{data}{a RasterStack}

  \item{tail}{logical. If \code{TRUE} the layers will be
  taken away from the end of the stack. If \code{FALSE}
  layers will be taken away from the beginning.}

  \item{lag}{the number of layers to take away.}
}
\value{
a RasterStack shortened by \code{lag} either from the
beginning or the end, depending on the specification of
\code{tail}
}
\description{
The function cuts a specified number of layers off a
RrasterStack in order to create lagged RasterStacks.
}
\examples{
data(australiaGPCP)

# 6 layers from the beginning
cutStack(australiaGPCP, tail = FALSE, lag = 6)
# 8 layers from the end
cutStack(australiaGPCP, tail = TRUE, lag = 8)
}

