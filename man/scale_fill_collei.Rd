% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Collei.r
\name{scale_fill_collei}
\alias{scale_fill_collei}
\title{scale_fill_collei}
\usage{
scale_fill_collei(discrete = TRUE, alpha = 1, reverse = FALSE, ...)
}
\arguments{
\item{discrete}{if true, returns a discrete palette; if false, returns a continuous color palette.}

\item{alpha}{the alpha value of each color}

\item{reverse}{invert the color sequence}

\item{...}{passed to the discrete_scale or scale_fill_gradientn}
}
\value{
a ggplot color scale
}
\description{
Mimicking the scale_fill_XXX function, it returns a ggplot color scale
}
\examples{
scale_fill_collei()
scale_fill_collei(FALSE)
scale_fill_collei(alpha = 0.5)
scale_fill_collei(FALSE, alpha = 0.7, reverse = TRUE)
}
