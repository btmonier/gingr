% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\docType{class}
\name{Gingr-class}
\alias{Gingr-class}
\alias{Gingr}
\title{Class Gingr}
\usage{
Gingr(area, unit, structure = NA, ...)
}
\arguments{
\item{area}{the numerical area you need}

\item{unit}{the units you calculated the area in (in, ft, cm, m)}

\item{structure}{the type of gingerbread structure you wish to make}

\item{...}{additional parameters to pass through (WIP)}
}
\description{
Class \code{Gingr} defines a Gingr data set for constructing
   gingerbread-related things.

This function will calculate the amount of material required
   to make a gingerbread related structure of any size!
}
\details{
Using a propietary 'secret' formula of baking goods values
   (Monier et al. 20xx), this function will precisely calculate the
   necessary materials to make anything out of gingerbread. All you need
   to enter is the unit area your mega structure will cover and it will
   give you an output of what you need with respective units.
}
\examples{
Gingr(area = 500, unit = "in", structure = "House")

}
\author{
Brandon Monier, \email{brandon.monier@gmail.com}
}
