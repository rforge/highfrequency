\name{rMPV}
\alias{rMPV}
\title{
Realized multipower variation (MPV), an estimator of integrated power variation. 
}

\description{
 
Function returns the rMPV, defined in Andersen et al. (2012).

Assume there is \eqn{N} equispaced returns in period \eqn{t}. Let \eqn{r_{t,i}} be a return (with \eqn{i=1, \ldots,N}) in period \eqn{t}.

Then, the rMPV is given by
\deqn{
\mbox{rMPV}_{N}(m,p)= d_{m,p} \frac{N^{p/2}}{N-m+1} \sum_{i=1}^{N-m+1}|r_{t,i}|^{p/m} \ldots |r_{t,i+m-1}|^{p/m}
}

in which

\eqn{d_{m,p}= \mu_{p/m}^{-m}}:

\eqn{m}: the window size of return blocks;

\eqn{p}: the power of the variation;

and \eqn{m} > \eqn{p/2}.
}

\usage{
rMPV(rdata, m= 2, p=2, align.by= NULL, align.period= NULL, makeReturns= FALSE,...)
}

\arguments{
  \item{rdata}{a zoo/xts object containing all returns in period t for one asset.}
  \item{m}{the window size of return blocks. 2 by default.}
  \item{p}{the power of the variation. 2 by default.}
  \item{align.by}{a string, align the tick data to "seconds"|"minutes"|"hours"}
  \item{align.period}{an integer, align the tick data to this many [seconds|minutes|hours].}  
  \item{makeReturns}{boolean, should be TRUE when rdata contains prices instead of returns. FALSE by  default.} 
  \item{...}{additional arguments.}
}

\value{
numeric
}

\references{
Andersen, T. G., D. Dobrev, and E. Schaumburg (2012). Jump-robust volatility estimation using nearest neighbor truncation. Journal of Econometrics, 169(1), 75- 93.
}

\author{
Giang Nguyen, Jonathan Cornelissen and Kris Boudt
}

\examples{
data(sample_tdata)
rMPV(sample_tdata$PRICE, m=2, p=3, align.by= "minutes", align.period=5,makeReturns= TRUE)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ highfrequency }
\keyword{ rMPV }
