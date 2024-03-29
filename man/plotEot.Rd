\name{plotEot}
\alias{plotEot}
\title{Plot the results of eot}
\usage{
plotEot(eot.obj, eot = 1, pred.prm = "rsq", resp.prm = "r",
  show.eot.loc = FALSE, anomalies = TRUE, add.map = TRUE,
  times.vec = NULL, arrange = c("wide", "long"),
  clr = colorRampPalette(rev(brewer.pal(9, "Spectral")))(1000), ...)
}
\arguments{
  \item{eot.obj}{an EOT object as returned by
  \code{\link{eot}}}

  \item{eot}{numeric. the mode to be plotted}

  \item{pred.prm}{the parameter of the predictor to be
  plotted.\cr Can be any of "r", "rsq", "rsq.sums", "p",
  "int" or "slp"}

  \item{resp.prm}{the parameter of the response to be
  plotted.\cr Can be any of "r", "rsq", "rsq.sums", "p",
  "int" or "slp"}

  \item{show.eot.loc}{logical. If \code{TRUE} a grey circle
  will be drawn in the predictor image to indicate the
  location of the mode}

  \item{anomalies}{logical. If \code{TRUE} a reference line
  will be drawn a 0 in the EOT time series}

  \item{add.map}{logical. If \code{TRUE} country outlines
  will be added to the predictor and response images}

  \item{times.vec}{an (optional) time series vector of the
  considered EOT calculation to be shown as the x-axis in
  the time series plot}

  \item{arrange}{whether the final plot should be arranged
  in "wide" or "long" format}

  \item{clr}{an (optional) color palette for displaying of
  the predictor and response fields}

  \item{...}{further arguments to be passed to
  \code{\link[raster]{spplot}}}
}
\description{
This is the standard plotting routine for the results of
\code{\link{eot}}. Three panels will be drawn i) the
predictor domain, ii) the response domain, iii) the time
series at the identified base point
}
\examples{
data(vdendool)

# claculate 2 leading modes
modes <- eot(pred = vdendool, resp = NULL, n = 2, reduce.both = FALSE,
             standardised = FALSE, print.console = TRUE)

# default settings
plotEot(modes)

# showing the loction of the mode
plotEot(modes, eot = 1, show.eot.loc = TRUE)

# changing parameters
plotEot(modes, eot = 1, show.eot.loc = TRUE,
        pred.prm = "r", resp.prm = "p")

# change plot arrangement
plotEot(modes, eot = 1, show.eot.loc = TRUE, arrange = "long")
}

