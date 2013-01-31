\name{data_inputparam1}
\alias{data_inputparam1}
\docType{data}
\title{An example set of input parameter data for the function \code{fititcdata}}
\description{
This is a group of nine ITC parameters organized in a dataframe. 

The first is the file name of the csv file exported from Origin7 data sheet

The second group of four is experimental set parameters including

	P0: protein concentration in cell in mM (the binding partner in cell even if it is not a protein)

	L0: ligand concentration in cell in mM (the binding partner in syringe even if it is not ligand)

	Asyr: ligand cocentration in syringe in mM (the binding partner in syringe even if it is not ligand)

	V0: the volume of the ITC cell in ml

The third group of four is estimates of the fitting parameters including

	K: the binding constant in 1/M

	DH: the binding enthalpy in cal/mole

	N: the binding stoichiometry ratio, ligand/protein

	HD: heat of dilution in ucal for each injection

It is the content of the inputparam.txt file in the extdata folder: 

file_name, B110711CD4.CSV

P0,  0.00159

L0, 0

Asyr, 0.0181

V0, 1.4347

K, 3E7

DH, -65000

HD, 0.05

N, 0.9

}
\usage{data(data_inputparam1)}
\format{
  A data frame with 9 observations on the following 2 variables.
  \describe{
    \item{\code{V1}}{a character vector of parameter names}
    \item{\code{V2}}{a character vector of parameter values}
  }
}

\examples{data(data_inputparam1)}
\keyword{datasets}
