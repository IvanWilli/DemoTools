% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interp_coh.R
\name{shift_census_ages_to_cohorts}
\alias{shift_census_ages_to_cohorts}
\title{shift census populations to match single year cohorts}
\usage{
shift_census_ages_to_cohorts(
  pop,
  age,
  date,
  censusYearOpt = "frac",
  OAG = TRUE
)
}
\arguments{
\item{pop}{numeric vector. Population counts in age groups, presumably from a census with an exact reference date.}

\item{age}{integer vector. Lower bound of single age groups}

\item{date}{Either a \code{Date} class object or an unambiguous character string in the format \code{"YYYY-MM-DD"}.}

\item{censusYearOpt}{character or \code{NA}. Options include:
\itemize{
\item \code{"frac"} keep the partial cohort observed in the year of the census.
\item \code{"drop"} remove the partial cohort from the census year (and trim other outputs to match)
\item \code{"extrap"} inflate the partial cohort from the census year. Specifically we keep it the same as the input age 0.
\item \code{NA} return \code{NA} for the census year cohort size.
}}

\item{OAG}{logical. Is the highest age group an open age? If \code{TRUE}}
}
\description{
Matches the (single) ages of a census to single cohorts. For use in intercensal interpolations. Ages are potentially blended to match single cohort line assuming that the population in each age is uniformly distributed over the age group.
}
\examples{
pop <- seq(10000,100,length.out = 101)
age <- 0:100
d1 <- "2020-01-01"
d2 <- "2020-07-01"
d3 <- "2020-12-21"

shift_census_ages_to_cohorts(pop, age, d1)
shift_census_ages_to_cohorts(pop, age, d2)
shift_census_ages_to_cohorts(pop, age, d3)
shift_census_ages_to_cohorts(pop, age, 2020.5)
}
