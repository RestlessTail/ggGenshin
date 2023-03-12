#' pal_bennett
#'
#' Mimicking the pal_XXX function in the ggsci package, it returns a vector of hexadecimal colors.
#'
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#'
#' @importFrom grDevices col2rgb rgb
#'
#' @return a vector of hexadecimal colors
#' @export
#'
#' @examples
#' pal_bennett()(10)
#' pal_bennett(alpha = 0.5)(10)
#' pal_bennett(alpha = 0.5, reverse = TRUE)(20)
pal_bennett = function(alpha = 1, reverse = FALSE) {
	pal <- c("#48445F", "#E1D7C4", "#258279", "#E7AF30", "#B80200")
	pal_rgb = col2rgb(pal)
	return(function(x){
		vec = 1:x
		if(reverse){
			vec = rev(vec)
		}
		return(sapply(vec, function(y){
			len = length(pal)
			pos = y / x * len
			pos = ifelse(pos < 1, 1, ifelse(pos > len, len, pos))
			rgb = pal_rgb[, floor(pos)] + (pal_rgb[, ceiling(pos)] - pal_rgb[, floor(pos)]) * (pos - floor(pos))
			rgb = rgb / 255
			return(rgb(rgb[1], rgb[2], rgb[3], alpha))
		}))
	})
}

#' rgb_bennett
#'
#' Mimicking the rgb_XXX function in the ggsci package, it returns a vector of hexadecimal colors.
#'
#' @param n the number of colors generated
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#'
#' @return a vector of hexadecimal colors
#' @export
#'
#' @examples
#' rgb_bennett()
#' rgb_bennett(10)
#' rgb_bennett(n = 10, alpha = 0.5)
#' rgb_bennett(n = 20, alpha = 0.7, reverse = TRUE)
rgb_bennett = function(n = 12, alpha = 1, reverse = FALSE){
	return(pal_bennett(alpha = alpha, reverse = reverse)(n))
}

#' scale_color_bennett
#'
#' Mimicking the scale_color_XXX function, it returns a ggplot color scale
#'
#' @param discrete if true, returns a discrete palette; if false, returns a continuous color palette.
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#' @param ... passed to the discrete_scale or scale_color_gradientn
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#'
#' @return a ggplot color scale
#' @export
#'
#' @examples
#' scale_color_bennett()
#' scale_color_bennett(FALSE)
#' scale_color_bennett(alpha = 0.5)
#' scale_color_bennett(FALSE, alpha = 0.7, reverse = TRUE)
scale_color_bennett = function(discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
	if(discrete){
		return(discrete_scale("colour", "bennett", pal_bennett(alpha = alpha, reverse = reverse), ...))
	}
	else{
		return(scale_color_gradientn(colours = rgb_bennett(n = 512, alpha = alpha, reverse = reverse), ...))
	}
}

#' scale_colour_bennett
#'
#' Mimicking the scale_colour_XXX function, it returns a ggplot colour scale
#'
#' @param discrete if true, returns a discrete palette; if false, returns a continuous colour palette.
#' @param alpha the alpha value of each colour
#' @param reverse invert the colour sequence
#' @param ... passed to the discrete_scale or scale_color_gradientn
#'
#' @return a ggplot colour scale
#' @export
#'
#' @examples
#' scale_colour_bennett()
#' scale_colour_bennett(FALSE)
#' scale_colour_bennett(alpha = 0.5)
#' scale_colour_bennett(FALSE, alpha = 0.7, reverse = TRUE)
scale_colour_bennett = scale_color_bennett

#' scale_fill_bennett
#'
#' Mimicking the scale_fill_XXX function, it returns a ggplot color scale
#'
#' @param discrete if true, returns a discrete palette; if false, returns a continuous color palette.
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#' @param ... passed to the discrete_scale or scale_fill_gradientn
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#'
#' @return a ggplot color scale
#' @export
#'
#' @examples
#' scale_fill_bennett()
#' scale_fill_bennett(FALSE)
#' scale_fill_bennett(alpha = 0.5)
#' scale_fill_bennett(FALSE, alpha = 0.7, reverse = TRUE)
scale_fill_bennett = function(discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
	if(discrete){
		return(discrete_scale("fill", "bennett", pal_bennett(alpha = alpha, reverse = reverse), ...))
	}
	else{
		return(scale_fill_gradientn(colours = rgb_bennett(n = 512, alpha = alpha, reverse = reverse), ...))
	}
}
