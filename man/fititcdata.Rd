\name{fititcdata}
\alias{fititcdata}
\encoding{UTF-8}
\title{Fit and plot ITC data}
\description{
  The \code{fititcdata} function reads in integrated Isothermal Titration Calorimetry (ITC) data as exported from Origin, experimental and fitting parameters from input text files, fit the data to a one-to-one binding model, and plot the data and fitting results in an exported pdf file and esp file. The pdf file contains the plotted diagram and the numeric parameters below the diagram, while the esp file contains only the diagram. 
}
\usage{
fititcdata(x, y)
}

\arguments{
  \item{x}{a character string of the name of the text file in csv format that has the input data.}
  \item{y}{a character string of the partial name of the output files that will be attached with "0.pdf" and "1.eps".}
}
\details{
The input file contains the input parameters for ITC fitting to one to one binding model. This file is read in as a csv file. An example file "inputparam.txt" is provided in the ‘extdata’ subdirectory (folder). Keep the format when modifying.

Nine lines of data in three groups should be listed in the file:

The first group is one line, for the file name of the csv file exported from Origin7.

The second group is experimental set parameters including

	P0: protein concentration in cell in mM (the binding partner in cell even if it is not a protein)

	L0: ligand concentration in cell in mM (the binding partner in syringe even if it is not ligand)

	Asyr: ligand cocentration in syringe in mM (the binding partner in syringe even if it is not ligand)

	V0: the volume of the ITC cell in ml

The third group is estimates of the fitting parameters including

	K: the binding constant in 1/M

	DH: the binding enthalpy in cal/mole

	N: the binding stoichiometry ratio, ligand/protein

	HD: heat of dilution in ucal for each injection

The following 9 non-blank lines are the content of the inputparam.txt file: 
file_name, B110711CD4.CSV

P0,  0.00159

L0, 0

Asyr, 0.0181

V0, 1.4347

K, 3E7

DH, -65000

HD, 0.05

N, 0.9

The output file name should not be the same as existing file names, otherwise it will be overwritten. This can happen especially when calling the function repeatly with the same second argument. 

}
\value{
A vector of the fitting coefficients with names:
\code{"K"  "DH" "HD" "N"}
}
\references{
Freire, E. 1998 Statistical thermodynamic linkage between conformational and binding equilibria. \emph{Adv. Protein Chem} \bold{51}, 255-279.

Tellinghuisen, J. 2007 Calibration in isothermal titration calorimetry: heat and cell volume from heat of dilution of NaCl(aq). \emph{Anal. Biochem} \bold{360}, 47-55.

Elzhov,T.V., Mullen, K.M. 2010 CRAN - package minpack.lm
}
\author{Yingyun Liu}

\seealso{\code{\link{nls.lm}}, \code{\link{itcONE11}} }
\examples{
data(data_inputparam1);
data(data_origin1);

## using the loaded data to generate the input parameter file
write.table(data_inputparam1, "inputparam2.txt", quote=FALSE, 
col.names=FALSE, row.names=FALSE, sep=", ");

## using the loaded data to generate an Origin7 data file as input
write.csv(data_origin1, "B110711CD4.CSV", quote=FALSE, row.names=FALSE)

## perform fitting 
param0 <- fititcdata(x = "inputparam2.txt", y = "itcout");
}

\keyword{Isothermal Titration Calorimetry (ITC)}
\keyword{regression}
