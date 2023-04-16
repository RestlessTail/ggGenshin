# ggGenshin
a collection of Genshin-styled color schemes

ggGenshin is a package inspired by ggsci and content creator 阿昆的科研日常 of bilibili. The package provides a collection palettes in the style of Genshin and has both R (ggplot2) and Python (Matplotlib) interfaces.

## TODOs
+ Balanced palette: palettes better suited for heat map and feature plot etc.
	* Progress: <progress value = '0' max = '100'></progress>0%.

## Installation
### R
Paste the code to the R console to install ggGenshin from GitHub.

```R
devtools::install_github("RestlessTail/ggGenshin")
```

### Python
Use pip to install ggGenshinPy from GitHub:

```shell
pip install git+https://github.com/RestlessTail/ggGenshin@master-python
```

## Usage
### R
You can use `scale_color_XXX`/`scale_colour_XXX` or `scale_fill_XXX` to create a palette like in ggsci. But parameters can be somewhat different.

```R
#p is a ggplot object
print(p + scale_color_albedo())
print(p + scale_colour_albedo())
print(p + scale_fill_albedo())
```

Each palette of ggGenshin has both discrete and continuous versions. ggGenshin returns a discrete palette by default. Use `discrete = FALSE` to create a continuous palette.

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
rgb_albedo(n = 10, alpha = 0.5)
rgb_albedo(n = 10, alpha = 0.7, reverse = TRUE)
```

Use `ggGenshin::keys()` for available palettes.

```R
ggGenshin::keys()
```

### Python
Import `colormap` module of ggGenshinPy.

```python
import ggGenshinPy.colormap as ggg
```

Use `cmapXXX` method to create a Matplotlib colormap object. ggGenshinPy returns a linear segmented colormap by default. Use `listed = True` to create a listed colormap.

```python
# import Matplotlib
import matplotlib.pyplot as plt

# create a listed colormap
plt.bar(range(4), range(1, 5), color = ggg.cmapSayu(listed = True)(range(4)))

# create a linear segmented colormap
heatmapDat = ([0.3, 1.5, 6.3, 5.3], [5.3, 9.6, 2.4, 6.7], [2.5, 7.6, 4.9, 4.3], [3.4, 9.0, 6.7, 0.6], [2.2, 5.3, 4.8, 9.8])
plt.imshow(heatmapDat, cmap = ggg.cmapYoimiya())
```

Use `keys()` for available palettes.

```R
ggg.keys()
```

