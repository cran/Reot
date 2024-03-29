\name{EotCycle}
\alias{EotCycle}
\title{Calculate a single EOT}
\usage{
EotCycle(pred, resp, resp.eq.pred = F, n = 1, standardised, orig.var,
  write.out, path.out, names.out, type, print.console, ...)
}
\arguments{
  \item{pred}{a ratser stack used as predictor}

  \item{resp}{a RasterStack used as response. If
  \code{resp} is \code{NULL}, \code{pred} is used as
  \code{resp}}

  \item{resp.eq.pred}{logical. Whether predictor and
  response stack are the same}

  \item{n}{the number of EOT modes to calculate}

  \item{standardised}{logical. If \code{FALSE} the
  calculated r-squared values will be multiplied by the
  variance}

  \item{orig.var}{original variance of the response domain}

  \item{write.out}{logical. If \code{TRUE} results will be
  written to disk using \code{path.out}}

  \item{path.out}{the file path for writing results if
  \code{write.out} is \code{TRUE}. Defaults to current
  working directory}

  \item{names.out}{optional prefix to be used for naming of
  results if \code{write.out} is \code{TRUE}}

  \item{type}{the type of the link function. Defaults to
  \code{'rsq'} as in original proposed method from
  \cite{Dool2000}. If set to \code{'ioa'} index of
  agreement is used instead}

  \item{print.console}{logical. If \code{TRUE} some details
  about the calculation process will be output to the
  console}

  \item{...}{not used at the moment}
}
\description{
EotCycle() calculates a single EOT and is controlled by the
main eot() function
}

