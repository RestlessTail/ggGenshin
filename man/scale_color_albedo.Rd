% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Albedo.r
\name{scale_color_albedo}
\alias{scale_color_albedo}
\title{scale_color_albedo}
\usage{
scale_color_albedo(discrete = TRUE, alpha = 1, reverse = FALSE, ...)
}
\arguments{
\item{discrete}{if true, returns a discrete palette; if false, returns a continuous color palette.}

\item{alpha}{the alpha value of each color}

\item{reverse}{invert the color sequence}

\item{...}{passed to the discrete_scale or scale_color_gradientn}
}
\value{
a ggplot color scale
}
\description{
Mimicking the scale_color_XXX function, it returns a ggplot color scale
}
\examples{
scale_color_albedo()
scale_color_albedo(FALSE)
scale_color_albedo(alpha = 0.5)
scale_color_albedo(FALSE, alpha = 0.7, reverse = TRUE)
}
