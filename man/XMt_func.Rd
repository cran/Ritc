\name{XMt_func}
\alias{XMt_func}
\encoding{UTF-8}
\title{Calculation of concentrations of reaction components in ITC cell after each injection}
\description{
	The \code{XMt_func} function calculates concentrations of reaction components in ITC cell after each injection based on the input ITC parameters. The molar ratio of the two binding components after each injection is also calculated. This value is usually used as the x-axis in ITC plots. This function is used in ITC simulations and plots.
}
\usage{
XMt_func(stapar = list(P0 = 0.01, L0 = 0, Asyr = 0.2, 
V0 = 1.4195), injV0)
}

\arguments{
  \item{stapar}{A list of four parameters:

	P0, The initial protein concentration in ITC cell, in mM;

	L0, The initial ligand concentration in ITC cell, in mM;

	Asyr, The initial ligand concentration in syringe, in mM;

	V0, The volume of ITC cell, in ml;
	}
  \item{injV0}{A vector of injection volumes for each ITC injection, in ul}
}


\value{A list with three vectors: 
	\item{Mt}{vector of protein concentration in cell after each injection}
	\item{Xt}{vector of ligand concentration in cell after each injection}
	\item{XMt}{vector of molar ratio [ligand]/[protein] in cell after each injection}
}

\references{
Freire, E. 1998 Statistical thermodynamic linkage between conformational and binding equilibria. \emph{Adv. Protein Chem} \bold{51}, 255-279.

Tellinghuisen, J. 2007 Calibration in isothermal titration calorimetry: heat and cell volume from heat of dilution of NaCl(aq). \emph{Anal. Biochem} \bold{360}, 47-55.

}

\seealso{\code{\link{itcONE11}}}

\examples{
a <- list(P0=0.01, L0=0, Asyr=0.2, V0=1.4195);

injv <- rep(10,30);

dh2 <- XMt_func(stapar=a, injV0=injv);
}

\keyword{Isothermal Titration Calorimetry (ITC)}

