\name{cband}
\alias{cband}
\title{
Calculate confidence and prediction bands for mixtures of one-variable
regressions.
}
\description{
Produces confidence and prediction bands, two-sided or upper or
lower, for the lines fitted in a model consisting of a mixture of
one-variable regressions.
}
\usage{
cband(object, cov.mat, x, y, alpha=0.05, xlen=100, plotit=FALSE,
      type=NULL)
}
\arguments{
\item{object}{
Object describing the fitted mixture of regressions, as returned
by mixreg.
}
\item{cov.mat}{
The estimated covariance matrix of the parameter estimates of the
fit, as returned by covmix.
}
\item{x}{
The vector of predictors for each of the regression models in the
mixture.  Only one-dimensional predictors are permitted here.
}
\item{y}{
The vector of responses for the regression models.
}
\item{alpha}{
One minus the confidence level for the confidence and prediction
bands; e.g. alpha = 0.05 for 95\% confidence.
}
\item{xlen}{
The number of points to be plotted in the band envelopes.  The
x-values of the points will be equi-spaced from min(x) to max(x).
}
\item{plotit}{
Logical argument indicating whether to plot the fitted model
and confidence bands.
}
\item{type}{
Character argument specifying the type of band.  Must have one
of the values "both", "upper", or "lower".  Defaults to "both".
}}
\value{
A list (of class "cband") with components

\item{theta}{
The parameter list from object (as returned by mixreg).
}
\item{intercept}{
The logical value from object indicating whether intercepts were fitted.
}
\item{x}{
The argument x of the call to cband.
}
\item{y}{
The argument y of the call to cband.
}
\item{xf}{
The equispaced sequence of values from min(x) to max(x) at which the
values of the band envelopes were calculated.
}
\item{bnds}{
A list with one entry for each component of the mixture.  Each entry
is a matrix with 4 columns (lower and upper confidence, lower and upper
prediction bounds) if type is "both", or with 2 columns (confidence
bounds, prediction bounds) if type is "upper" or "lower".
}}
\section{Side Effects}{
If plotit is TRUE a plot of the fit and the confidence and prediction
bands is produced in whatever device is currently open.
}
\details{
The prediction bands are conditional in that the associated probability
is condtional upon the associated observation being generated by
the relevant component of the mixture.
}
\author{Rolf Turner
  \email{r.turner@auckland.ac.nz}
  \url{http://www.stat.auckland.ac.nz/~rolf}
}
\references{
Turner, T. R.  (2000) Estimating the rate of spread of a viral infection
of potato plants via mixtures of regressions.  Appl. Statist. vol. 49,
Part 3, pp. 371 -- 384.
}
\seealso{
\link{bootcomp}, \link{covmix}, \link{mixreg}, \link{plot.cband},
\link{plot.mresid}, \link{qqMix}, \link{residMix}
}
\examples{
#See \link{mixreg} for examples.
}
% Converted by Sd2Rd version 1.21.
\keyword{models}
\keyword{regression}
