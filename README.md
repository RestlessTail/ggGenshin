# ggGenshin
a collection of ggplot2 color scales

ggGenshin is a package inspired by ggsci and content creator 阿昆的科研日常 of bilibili. The package provides a collection of ggplot2 color scales, whose interfaces are similar to ggsci.

## Installation
Paste the code to R console to install ggGenshin from github.

```R
devtools::install_github("RestlessTail/ggGenshin")
```

## Usage
You can simply use `scale_color_XXX`/`scale_colour_XXX` or `scale_fill_XXX` to create palette as in ggsci. But parameters can be somewhat different.

```R
#p is a ggplot object
print(p + scale_color_albedo())
print(p + scale_colour_albedo())
print(p + scale_fill_albedo())
```

Each palette of ggGenshin has both discrete and continuous version. ggGenshin returns a discrete palette by default. Use `discrete = FALSE`

```R
#p is a ggplot object
print(p + scale_color_albedo(discrete = FALSE))
print(p + scale_colour_albedo(discrete = FALSE))
print(p + scale_fill_albedo(discrete = FALSE))
```

`palette` is not available in ggGenshin. Use `alpha` to set transparency and use `reverse` to reverse the palette.

```R
#p is a ggplot object
print(p + scale_color_albedo(alpha = 0.8))
print(p + scale_colour_albedo(alpha = 0.8, reverse = TRUE))
print(p + scale_fill_albedo(alpha = 0.8))
print(p + scale_fill_albedo(alpha = 0.8, reverse = TRUE))
```

`pal_XXX` and `rgb_XXX` are also available in ggGenshin. Use the two functions to export colors.

```R
pal_albedo()(10) #create 10 colors
pal_albedo(alpha = 0.5)(10)
pal_albedo(alpha = 0.7, reverse = TRUE)(10)

rgb_albedo(10) #create 10 colors
rgb_albedo(n = 10, alpha = 0.5) #create 10 colors
rgb_albedo(n = 10, alpha = 0.7, reverse = TRUE)
```

Use `ggGenshin::keys()` for available palettes.

```R
ggGenshin::keys()
```
