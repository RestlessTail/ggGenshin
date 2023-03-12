# ggGenshin
a collection of ggplot2 color scales

ggGenshin is a package inspired by ggsci and content creator 阿昆的科研日常 of bilibili. The package provides a collection of ggplot2 color scales with similar interfaces to ggsci.

## Installation
Paste the code to the R console to install ggGenshin from GitHub.

```R
devtools::install_github("RestlessTail/ggGenshin")
```

## Usage
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

## Gallary
### Albedo

```R
scale_color_albedo()
scale_fill_albedo()
```

![Albedo1](./examples/out/albedo1.png)
![Albedo2](./examples/out/albedo2.png)

### Alhaitham

```R
scale_color_alhaitham()
scale_fill_alhaitham()
```

![Alhaitham1](./examples/out/alhaitham1.png)
![Alhaitham2](./examples/out/alhaitham2.png)

### Ayaka

```R
scale_color_ayaka()
scale_fill_ayaka()
```

![Ayaka1](./examples/out/ayaka1.png)
![Ayaka2](./examples/out/ayaka2.png)

### Bennett

```R
scale_color_bennett()
scale_fill_bennett()
```

![Bennett1](./examples/out/bennett1.png)
![Bennett2](./examples/out/bennett2.png)

### Collei

```R
scale_color_collei()
scale_fill_collei()
```

![Collei1](./examples/out/collei1.png)
![Collei2](./examples/out/collei2.png)

### Diona

```R
scale_color_diona()
scale_fill_diona()
```

![Diona1](./examples/out/diona1.png)
![Diona2](./examples/out/diona2.png)

### Dori

```R
scale_color_dori()
scale_fill_dori()
```

![Dori1](./examples/out/dori1.png)
![Dori2](./examples/out/dori2.png)

### Faruzan

```R
scale_color_faruzan()
scale_fill_faruzan()
```

![Faruzan1](./examples/out/faruzan1.png)
![Faruzan2](./examples/out/faruzan2.png)

### Ganyu

```R
scale_color_ganyu()
scale_fill_ganyu()
```

![Ganyu1](./examples/out/ganyu1.png)
![Ganyu2](./examples/out/ganyu2.png)

### Itto

```R
scale_color_itto()
scale_fill_itto()
```

![Itto1](./examples/out/itto1.png)
![Itto2](./examples/out/itto2.png)

### Jean

```R
scale_color_jean()
scale_fill_jean()
```

![Jean1](./examples/out/jean1.png)
![Jean2](./examples/out/jean2.png)

### Jin

```R
scale_color_jin()
scale_fill_jin()
```

![Jin1](./examples/out/jin1.png)
![Jin2](./examples/out/jin2.png)

### Kazuha

```R
scale_color_kazuha()
scale_fill_kazuha()
```

![Kazuha1](./examples/out/kazuha1.png)
![Kazuha2](./examples/out/kazuha2.png)

### Keqing

```R
scale_color_keqing()
scale_fill_keqing()
```

![Keqing1](./examples/out/keqing1.png)
![Keqing2](./examples/out/keqing2.png)

### Klee

```R
scale_color_klee()
scale_fill_klee()
```

![Klee1](./examples/out/klee1.png)
![Klee2](./examples/out/klee2.png)

### Kokomi

```R
scale_color_kokomi()
scale_fill_kokomi()
```

![Kokomi1](./examples/out/kokomi1.png)
![Kokomi2](./examples/out/kokomi2.png)

### Miko

```R
scale_color_miko()
scale_fill_miko()
```

![Miko1](./examples/out/miko1.png)
![Miko2](./examples/out/miko2.png)

### Nahida

```R
scale_color_nahida()
scale_fill_nahida()
```

![Nahida1](./examples/out/nahida1.png)
![Nahida2](./examples/out/nahida2.png)

### Nilou

```R
scale_color_nilou()
scale_fill_nilou()
```

![Nilou1](./examples/out/nilou1.png)
![Nilou2](./examples/out/nilou2.png)

### Noelle

```R
scale_color_noelle()
scale_fill_noelle()
```

![Noelle1](./examples/out/noelle1.png)
![Noelle2](./examples/out/noelle2.png)

### Razor

```R
scale_color_razor()
scale_fill_razor()
```

![Razor1](./examples/out/razor1.png)
![Razor2](./examples/out/razor2.png)

### Sayu

```R
scale_color_sayu()
scale_fill_sayu()
```

![Sayu1](./examples/out/sayu1.png)
![Sayu2](./examples/out/sayu2.png)

### Shenhe

```R
scale_color_shenhe()
scale_fill_shenhe()
```

![Shenhe1](./examples/out/shenhe1.png)
![Shenhe2](./examples/out/shenhe2.png)

### Shogun

```R
scale_color_shogun()
scale_fill_shogun()
```

![Shogun1](./examples/out/shogun1.png)
![Shogun2](./examples/out/shogun2.png)

### Sucrose

```R
scale_color_sucrose()
scale_fill_sucrose()
```

![Sucrose1](./examples/out/sucrose1.png)
![Sucrose2](./examples/out/sucrose2.png)

### Tao

```R
scale_color_tao()
scale_fill_tao()
```

![Tao1](./examples/out/tao1.png)
![Tao2](./examples/out/tao2.png)

### Tighnari

```R
scale_color_tighnari()
scale_fill_tighnari()
```

![Tighnari1](./examples/out/tighnari1.png)
![Tighnari2](./examples/out/tighnari2.png)

### Venti

```R
scale_color_venti()
scale_fill_venti()
```

![Venti1](./examples/out/venti1.png)
![Venti2](./examples/out/venti2.png)

### Xiangling

```R
scale_color_xiangling()
scale_fill_xiangling()
```

![Xiangling1](./examples/out/xiangling1.png)
![Xiangling2](./examples/out/xiangling2.png)

### Xiao

```R
scale_color_xiao()
scale_fill_xiao()
```

![Xiao1](./examples/out/xiao1.png)
![Xiao2](./examples/out/xiao2.png)

### Yoimiya

```R
scale_color_yoimiya()
scale_fill_yoimiya()
```

![Yoimiya1](./examples/out/yoimiya1.png)
![Yoimiya2](./examples/out/yoimiya2.png)

### Zhongli

```R
scale_color_zhongli()
scale_fill_zhongli()
```

![Zhongli1](./examples/out/zhongli1.png)
![Zhongli2](./examples/out/zhongli2.png)

