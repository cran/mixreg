\name{covmix}
\alias{covmix}
\title{
Calculate the covariance matrix of the parameter estimates for a
mixture of regressions.
}
\description{
Produces an estimate of the covariance matrix of the parameter
estimates for a fitted mixture of linear regressions, by inverting
the observed Fisher information matrix.
}
\usage{
covmix(object, x, y)
}
\arguments{
\item{object}{
Object describing the fitted mixture of regressions, as returned
by mixreg.
}
\item{x}{
A matrix of predictors for each of the regression models in the
mixture.  It should NOT include an initial column of 1s.  If there is
only one predictor, x may be a vector.
}
\item{y}{
The vector of responses for the regression models.
}}
\value{
The estimated covariance matrix.
}
\details{
If different variances are allowed amongst the components, the
parameters are taken in the order beta.1, sigsq.1, lambda.1, \dots,
beta.K, sigsq.K for a K component model --- lambda.K is redundant and
hence omitted.  If equal variances are assumed, the parameters are
taken in the order beta.1, lambda.1, \dots, beta.K, sigsq.


In the foregoing beta refers to the linear coefficients, sigsq to
the variance, and lambda to the mixing probability.
}
\author{Rolf Turner
  \email{r.turner@auckland.ac.nz}
  \url{http://www.stat.auckland.ac.nz/~rolf}
}
\references{
Turner, T. R.  (2000) Estimating the rate of spread of a viral infection
of potato plants via mixtures of regressions.  Appl. Statist. vol. 49,
Part 3, pp. 371 -- 384.

Louis, T. A.  Finding the observed information matrix when using the
EM algorithm, J. R. Statist. Soc. B, vol. 44, pp. 226 -- 233, 1982.
}
\seealso{
\link{bootcomp}, \link{cband}, \link{mixreg}, \link{plot.cband},
\link{plot.mresid}, \link{qq.mix}, \link{resid.mix}
}
\examples{
#See \link{mixreg} for examples.
}
% Converted by Sd2Rd version 1.21.
\keyword{models}
\keyword{regression}
