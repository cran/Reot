\name{lagalize}
\alias{lagalize}
\title{Create lagged RasterStacks}
\usage{
lagalize(data.pred, data.resp, lag = NULL, freq = 12, ...)
}
\arguments{
  \item{data.pred}{a RasterStack (to be cut from tail)}

  \item{data.resp}{a RasterStack (to be cut from
  beginning)}

  \item{lag}{the desired lag (in the native frequency of
  the stacks)}

  \item{freq}{the frequency of the RasterStacks}

  \item{...}{currently not used}
}
\value{
a list with the two RasterStacks lagged by \code{lag}
}
\description{
The function is used to produce lagged RasterStacks. The
second is cut from the beginning, the first from the tail
to ensure equal output lengths (provided that input lengths
were equal).
}
\examples{
data(pacificSST)
data(australiaGPCP)

# lag GPCP by 4 months
lagged <- lagalize(pacificSST, australiaGPCP, lag = 4, freq = 12)
lagged[[1]][[1]] #check names to see date of layer
lagged[[2]][[1]] #check names to see date of layer
}

