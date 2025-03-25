\name{importorigin}
\alias{importorigin}
\encoding{UTF-8}
\title{ Import data from Origin7 ITC data sheet}
\description{
	The \code{importorigin} function imports integreted ITC data from csv files. The source csv files can be generated, for example, by exportation from spreadsheets generated after integration in Origin7 ITC module. 
}
\usage{importorigin(x)}

\arguments{
  \item{x}{a character string of the name of the text file in csv format exported from Origin7 ITC data sheet}
}

\value{
  A list with each column in the input file as one component. Elements in each component are converted to the \code{numeric} type. NAs are generated if non-numerical values are present. NAs at the end of each component are deleted. These components are in the list if imported from Origin7:
DH,INJV,Xt,Mt,XMt,NDH,B
  \item{DH}{heat exchange in mcals for each injection}
  \item{INJV}{injection volume in ul for each injection}
  \item{Xt}{ligand concentration in the ITC cell before each injection}
  \item{Mt}{protein concentration in the ITC cell before each injection}
  \item{XMt}{the molar ratio of ligand to protein in the ITC cell after each injection}
  \item{NDH}{heat exchange in cal/mole for each injection}
  \item{B}{heat exchange in cal/mole for each injection, fitting results from Origin7}
}
\references{MicroCal Inc. 1998 ITC Data Analysis in Origin Tutorial Guide, Version \bold{5.0}}

\note{Origin7 with ITC module is software from Microcal Inc.}

\seealso{\code{\link{itcONE11}} }

\examples{
\dontrun{
data(data_origin1);

## using the loaded data to generate an Origin7 data file as input
write.csv(data_origin1, "origin_data.csv", quote=FALSE, row.names=FALSE)

## import data
x1 <- importorigin("origin_data.csv");
}
}

\keyword{Isothermal Titration Calorimetry (ITC)}

