% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Tighnari.r
\name{rgb_tighnari}
\alias{rgb_tighnari}
\title{rgb_tighnari}
\usage{
rgb_tighnari(n = 12, alpha = 1, reverse = FALSE)
}
\arguments{
\item{n}{the number of colors generated}

\item{alpha}{the alpha value of each color}

\item{reverse}{invert the color sequence}
}
\value{
a vector of hexadecimal colors
}
\description{
Mimicking the rgb_XXX function in the ggsci package, it returns a vector of hexadecimal colors.
}
\examples{
rgb_tighnari()
rgb_tighnari(10)
rgb_tighnari(n = 10, alpha = 0.5)
rgb_tighnari(n = 20, alpha = 0.7, reverse = TRUE)
}
