\name{resid.mix}
\alias{resid.mix}
\title{
Calculate the residuals of a mixture of linear regressions.
}
\description{
Calculates the residuals from each component of the mixture
and the matrix of probabilities that each observation was generated
by each component.
}
\usage{
resid.mix(object, x, y, std=FALSE)
}
\arguments{
\item{object}{
List describing the fitted mixture of regressions as returned by
mixreg.
}
\item{x}{
The matrix of predictors to which the mixture has been fitted.
If there is only one predictor then x may be a vector.
}
\item{y}{
The vector of observed values to which the mixture has been fitted.
}
\item{std}{
Logical argument; if TRUE then the residuals are standardized
(by dividing them by their estimated standard deviation).
}}
\value{
A list (of class "mresid") with components

\item{resid}{
The residuals of the model in a matrix.  The k-th column of
this matrix is the vector of residuals from the k-th component
of the model.
}
\item{gamma}{
The matrix of probabilities that each observation was generated
by each component
}
\item{x}{
The x argument of the call to resid.mix
}
\item{y}{
The y argument of the call to resid.mix
}}
\details{
The calculation of the estimated standard deviations of the
residuals is a little bit complicated since each component of
the model is fitted using weighted regression in a setting in
which the weights are NOT the reciprocals of error variances.
See the reference below for more detail.
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
\link{bootcomp}, \link{cband}, \link{covmix}, \link{mixreg},
\link{plot.cband}, \link{plot.mresid}, \link{qq.mix}
}
\examples{
#See \link{mixreg} for examples.
}
% Converted by Sd2Rd version 1.21.
\keyword{models}
\keyword{regression}
