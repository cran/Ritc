\name{residNDH11}
\alias{residNDH11}
\title{Residual function for fitting ITC heat data to one-to-one binding model}
\description{
This is the residual function required by the \code{nls.lm} function from the \code{minpack.lm} package. 
}
\usage{
residNDH11(p = list(K = 1e+06, DH = -20000, HD = 0.1, N = 0.5), 
NDH0, q = list(P0 = 0.01, L0 = 0, Asyr = 0.2, V0 = 1.4195), injV1)
}

\arguments{
  \item{p}{This is the list of fitting parameters with initial values:

 	K: the binding constant in 1/M;

	DH: the binding enthalpy in cal/mole;

	HD: heat of dilution in ucal for each injection;

	N: the binding stoichiometry ratio, ligand/protein;

}
  \item{NDH0}{Vector of integrated injection heat measured by ITC instrument}
  \item{q}{This is a list of ITC experimental parameters:

	P0: protein concentration in cell in mM (the binding partner in cell even if it is not a protein);

	L0: ligand concentration in cell in mM (the binding partner in syringe even if it is not ligand);

	Asyr: ligand cocentration in syringe in mM (the binding partner in syringe even if it is not ligand);

	V0: the volume of the ITC cell in ml;

}
  \item{injV1}{A vector of injection volumes in ul of each ITC injection}
}


\value{A vector of the residual heat for each ITC injection, or the differences between the experimental heat and the calculated heat using the binding modela and the given values of the fitting parameters}

\keyword{ Isothermal Titration Calorimetry (ITC)}

