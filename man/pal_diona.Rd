% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Diona.r
\name{pal_diona}
\alias{pal_diona}
\title{pal_diona}
\usage{
pal_diona(alpha = 1, reverse = FALSE)
}
\arguments{
\item{alpha}{the alpha value of each color}

\item{reverse}{invert the color sequence}
}
\value{
a vector of hexadecimal colors
}
\description{
Mimicking the pal_XXX function in the ggsci package, it returns a vector of hexadecimal colors.
}
\examples{
pal_diona()(10)
pal_diona(alpha = 0.5)(10)
pal_diona(alpha = 0.5, reverse = TRUE)(20)
}
