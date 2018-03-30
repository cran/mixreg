\name{mixreg-internal}
\alias{aux1}
\alias{aux2}
\alias{aux3}
\alias{bootSam}
\alias{dirSum}
\alias{gfun}
\alias{hatfun}
\alias{info1}
\alias{info2}
\alias{initRand}
\alias{parUin}
\alias{simmix}

\title{Internal mixreg functions}
\description{
  Internal mixreg functions.
}
\usage{
aux1(gma,k,l)
aux2(t11,t12,t13,t21,t22,t23,t31,t32,t33)
aux3(m,ind)
bootSam(mu,resid,prob)
dirSum(...)
gfun(x,y,theta)
hatfun(x,g)
info1(x,y,theta,gma)
info2(x,y,theta,gma)
initRand(x,y,K,intercept)
parUin()
simmix(theta,intercept,x) 
}

\details{
  These are usually not to be called by the user.
}
\author{Rolf Turner
  \email{r.turner@auckland.ac.nz}
  \url{http://www.stat.auckland.ac.nz/~rolf}
}
\keyword{internal}
