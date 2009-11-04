\name{plot.cband}
\alias{plot.cband}
\title{
Plot confidence bands for a mixture of regressions.
}
\description{
Plots the fitted lines and confidence and prediction bands as
calculated by cband, for a mixture of regressions on one variable.
}
\usage{
\method{plot}{cband}(x, cbands=TRUE, pbands=TRUE, xlab=NULL, ylab=NULL,
           main=NULL, \dots)
}
\arguments{
\item{x}{
An object specifying the fitted lines and confidence and
prediction bands, as produced by cband.
}
\item{cbands}{
Logical argument specifying whether to plot the confidence bands.
}
\item{pbands}{
Logical argument specifying whether to plot the prediction bands.
}
\item{xlab}{
Character string specifying a label for the x-axis; defaults to "x".
}
\item{ylab}{
Character string specifying a label for the y-axis; defaults to "y".
}
\item{main}{
Character string specifying a title for the plot; if it is not
specified a default title is formed.  If no title at all is desired,
specify main="".
}
\item{\dots}{
Optional extra arguments; not currently used.
}
}
\section{Side Effects}{
A plot is produced in whatever device is currently open.
}
\details{
This function is a "method" for plot.  Note that a simple plot
of the fit may be produced by specifying both cbands=FALSE and pbands=FALSE.
}
\seealso{
\link{bootcomp}, \link{cband}, \link{covmix}, \link{mixreg},
\link{plot.mresid}, \link{qq.mix}, \link{resid.mix}
}
\examples{
#See \link{mixreg} for examples.
}
% Converted by Sd2Rd version 1.21.
\keyword{models}
\keyword{regression}
