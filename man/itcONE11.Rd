\name{itcONE11}
\alias{itcONE11}
\encoding{UTF-8}
\title{Simulate an ITC reaction with one to one binding model}
\description{
	The \code{itcONE11} function calculates the heat exchange for each ITC injection with a given reaction system and reaction parameters as input. Here a given reaction system should be two binding partners with known binding affinity and binding enthalpy. The two binding partners should bind to each other according to the one-to-one binding model, although the binding stoichiometry (N) can be adjusted to account for partial inactivity of one binding partner. 
}
\usage{
itcONE11(varpar = list(K = 1e+06, DH = -20000, HD = 0.1, N = 0.5), 
stapar = list(P0 = 0.01, L0 = 0, Asyr = 0.2, V0 = 1.4195), injV0)
}

\arguments{
  \item{varpar}{A list of four parameters:

	K, The binding constant, in 1/M, as in K=[AB]/[A]/[B];

	H, The binding enthalpy, in calories;

	HD, The dilution heat for each injection;

	N, The stoichiometry, or the fraction of protein being active in ITC cell;
	}
  \item{stapar}{A list of four parameters:

	P0, The initial protein concentration in ITC cell, in mM;

	L0, The initial ligand concentration in ITC cell, in mM;

	Asyr, The initial ligand concentration in syringe, in mM;

	V0, The volume of ITC cell, in ml;
	}
  \item{injV0}{A vector of injection volumes for each ITC injection, in ul}
}

\value{A vector of heat exchange per mole of injectant for each injection, in cal/mole}
\references{
Freire, E. 1998 Statistical thermodynamic linkage between conformational and binding equilibria. \emph{Adv. Protein Chem} \bold{51}, 255-279.

Tellinghuisen, J. 2007 Calibration in isothermal titration calorimetry: heat and cell volume from heat of dilution of NaCl(aq). \emph{Anal. Biochem} \bold{360}, 47-55.

}

\seealso{\code{\link{fititcdata}}, \code{\link{XMt_func}}}

\examples{
\dontrun{
a <- list(K = 1e7, DH = -23000, HD = 0.1, N = 0.9);

b <- list(P0 = 0.02, L0 = 0, Asyr = 0.2, V0 = 1.4195);

injv <- rep(10,30);

dh1 <- itcONE11(varpar=a, stapar=b, injV0=injv);
}
}

\keyword{Isothermal Titration Calorimetry (ITC)}
\keyword{Thermodynamics}
\keyword{Simulation}% __ONLY ONE__ keyword per line
