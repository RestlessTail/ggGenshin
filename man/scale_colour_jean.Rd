% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Jean.r
\name{scale_colour_jean}
\alias{scale_colour_jean}
\title{scale_colour_jean}
\usage{
scale_colour_jean(discrete = TRUE, alpha = 1, reverse = FALSE, ...)
}
\arguments{
\item{discrete}{if true, returns a discrete palette; if false, returns a continuous colour palette.}

\item{alpha}{the alpha value of each colour}

\item{reverse}{invert the colour sequence}

\item{...}{passed to the discrete_scale or scale_color_gradientn}
}
\value{
a ggplot colour scale
}
\description{
Mimicking the scale_colour_XXX function, it returns a ggplot colour scale
}
\examples{
scale_colour_jean()
scale_colour_jean(FALSE)
scale_colour_jean(alpha = 0.5)
scale_colour_jean(FALSE, alpha = 0.7, reverse = TRUE)
}
