# ggGenshinPy
a collection of matplotlib color maps

ggGenshinPy provides color maps of Matplotlib with the same color scheme as ggGenshin.

## Installation
Use `pip` to install ggGenshinPy from:

```shell
pip install git+https://github.com/RestlessTail/ggGenshin@master-python
```

## Usage
Import `colormap` module of ggGenshinPy.

```python
import colormap from ggGenshinPy as ggg
```

Use `cmapXXX` method to create a Matplotlib colormap object. ggGenshinPy returns a linear segmented colormap by default. Use `listed = True` to create a listed colormap.

```python
# create a linear segmented colormap
plt.bar(range(4), range(1, 5), color = ggg.cmapSayu(listed = True)(range(4)))
# create a listed colormap
plt.imshow(heatmapDat, cmap = ggg.cmapYoimiya())
```

