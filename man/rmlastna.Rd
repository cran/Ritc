\name{rmlastna}
\alias{rmlastna}
\title{Delete trailing NA values from a vector}

\description{If there are NA values at the end of a vector, this function deletes them and returns the rest of the vector. This is used to clean up the data imported from Origin7 data sheets. }

\usage{rmlastna(x)}

\arguments{  \item{x}{A vector} }


\value{A vector with a non-NA value as the last element}

\examples{
x <- rep(2, 20);

y <- rep(NA, 10);

z <- c(x, y);

zx <- rmlastna(z);
}

\keyword{ data cleaning }

