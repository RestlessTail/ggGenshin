#' pal_diona
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
#' pal_diona()(10)
#' pal_diona(alpha = 0.5)(10)
#' pal_diona(alpha = 0.5, reverse = TRUE)(20)
pal_diona = function(alpha = 1, reverse = FALSE) {
	pal <- c("#393A53", "#DD9E5B", "#D58784", "#EDCAC6", "#B69480")
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

#' rgb_diona
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
#' rgb_diona()
#' rgb_diona(10)
#' rgb_diona(n = 10, alpha = 0.5)
#' rgb_diona(n = 20, alpha = 0.7, reverse = TRUE)
rgb_diona = function(n = 12, alpha = 1, reverse = FALSE){
	return(pal_diona(alpha = alpha, reverse = reverse)(n))
}

#' scale_color_diona
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
#' scale_color_diona()
#' scale_color_diona(FALSE)
#' scale_color_diona(alpha = 0.5)
#' scale_color_diona(FALSE, alpha = 0.7, reverse = TRUE)
scale_color_diona = function(discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
	if(discrete){
		return(discrete_scale("colour", "diona", pal_diona(alpha = alpha, reverse = reverse), ...))
	}
	else{
		return(scale_color_gradientn(colours = rgb_diona(n = 512, alpha = alpha, reverse = reverse), ...))
	}
}

#' scale_colour_diona
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
#' scale_colour_diona()
#' scale_colour_diona(FALSE)
#' scale_colour_diona(alpha = 0.5)
#' scale_colour_diona(FALSE, alpha = 0.7, reverse = TRUE)
scale_colour_diona = scale_color_diona

#' scale_fill_diona
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
#' scale_fill_diona()
#' scale_fill_diona(FALSE)
#' scale_fill_diona(alpha = 0.5)
#' scale_fill_diona(FALSE, alpha = 0.7, reverse = TRUE)
scale_fill_diona = function(discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
	if(discrete){
		return(discrete_scale("fill", "diona", pal_diona(alpha = alpha, reverse = reverse), ...))
	}
	else{
		return(scale_fill_gradientn(colours = rgb_diona(n = 512, alpha = alpha, reverse = reverse), ...))
	}
}
