\name{mixreg}
\alias{mixreg}
\title{
Fit a mixture of linear regressions.
}
\description{
Estimates the parameters for a mixture of linear regressions, assuming
Gaussian errors, using the EM algorithm.
}
\usage{
mixreg(x, y, ncomp=2, intercept=TRUE, eq.var=FALSE,
       theta.start=NULL, itmax=1000, eps=1e-06, verb=TRUE,
       digits=7, max.try=5, data.name=NULL)
}
\arguments{
\item{x}{
A matrix of predictors for each of the regression models in the
mixture.  It should NOT include an initial column of 1s.  If there is
only one predictor, x may be a vector.
}
\item{y}{
The vector of responses for the regression models.
}
\item{ncomp}{
The number of components in the mixture.
}
\item{intercept}{
Logical argument specifying whether the linear regressions should
have intercepts fitted.
}
\item{eq.var}{
Logical argument specifying whether the error variance should be the
same for all components, or each component should be allowed
a different error variance.
}
\item{theta.start}{
A list giving starting values for the estimation procedure.  Each
component of the list is in turn a list with components beta
(vector of linear coefficients), sigsq (variance) and lambda
(mixing probability).  If eq.var is TRUE, then it is sensible
to have all the starting values of sigsq equal, but this is not
strictly necessary.  If theta.start is not specified, starting
values are generated randomly.  This is NOT recommended.
}
\item{itmax}{
The maximum number of EM steps to be undertaken.
}
\item{eps}{
A value specifying the convergence criterion for the EM algorithm.
If the maximum absolute value of the change in the parameters is
less than eps the algorithm is considered to have converged.
}
\item{verb}{
Logical argument; if verb is TRUE then details of the progress
of the algorithm are printed out at each EM step.
}
\item{digits}{
The number of digits to which the details are printed out, when
verb is TRUE.
}
\item{max.try}{
If the algorithm encounters a singularity in the likelihood
(as may occur when eq.var is FALSE) the algorithm is restarted
using new (randomly generated) starting values.  The restart
is attempted a maximum of max.try times.
}
\item{data.name}{
A character string specifying a name associated with the data
being analyzed, for identification purposes.
}}
\value{
A list, of class mixreg, with components

\item{parmat}{
The parameters of the fitted model arranged as a matrix, each
row corresponding to one component of the mixture.
}
\item{theta}{
The parameters of the fitted model as a list, each entry of
the list being itself a list (like those in theta.start) corresponding
to one component of the mixture.
}
\item{log.like}{
The log likelihood of the fitted model, based on Gaussian errors.
}
\item{aic}{
The Akaike Information Criterion value for the fitted model;
aic is equal to -2 * log.like + 2*M where M is the number of
parameters in the model.
}
\item{intercept}{
The intercept argument of the call to mixreg.
}
\item{eq.var}{
The eq.var argument of the call to mixreg.
}
\item{bnms}{
A vector of names associated with the linear components of the
regression models.  The names are formed from the column names of the
argument x if these exist; otherwise they are "beta1", "beta2", \dots.
The name "Int" is prepended if intecept is TRUE.
}
\item{nsteps}{
The number of steps the EM algorithm took to converge.
}
\item{converged}{
Logical value indicating whether the algorithm did converge or
stopped because it reach the itmax EM step.
}
\item{data.name}{
The data.name argument if supplied; otherwise is formed as
"name-of-y.on.name-of-x".
}}
\details{
Even if eq.var is TRUE, each component of theta still has its own sigsq
component.  The values of these will all be equal however if eq.var
is TRUE.
}
\references{
Turner, T. R.  (2000) Estimating the rate of spread of a viral infection
of potato plants via mixtures of regressions.  Appl. Statist. vol. 49,
Part 3, pp. 371 -- 384.

Dempster, A. P., Laird, N. M., and Rubin, D. B.  Maximum likelihood
from incomplete data via the EM algorithm, J. Royal Statist. Soc. B,
vol. 39, pp. 1--22, 1977.
}
\seealso{
\link{bootcomp}, \link{cband}, \link{covmix}, \link{plot.cband},
\link{plot.mresid}, \link{qq.mix}, \link{resid.mix}
}
\examples{
data(aphids)
x   <- aphids$n.aphids
y   <- aphids$n.inf
TS  <- list(list(beta=c(3.0,0.1),sigsq=16,lambda=0.5),
            list(beta=c(0.0,0.0),sigsq=16,lambda=0.5))
fit <- mixreg(x,y,ncomp=2,theta.start=TS,data.name='aphids')
cvm <- covmix(fit,x,y)
cbd <- cband(fit,cvm,x,y)
plot(cbd)
r <- resid.mix(fit,x,y)
plot(r)
r <- resid.mix(fit,x,y,std=TRUE)
qq.mix(r)
}
% Converted by Sd2Rd version 1.21.
\keyword{models}
\keyword{regression}
