#!/usr/bin/python3 
import matplotlib.pyplot as plt
import ggGenshinPy.colormap as ggg

discrete = [15, 10, 25, 20]
continuous = ([0.3, 1.5, 6.3, 5.3], [5.3, 9.6, 2.4, 6.7], [2.5, 7.6, 4.9, 4.3], [3.4, 9.0, 6.7, 0.6], [2.2, 5.3, 4.8, 9.8])

plt.subplot(1, 2, 1)
plt.bar(range(4), range(1, 5), color = ggg.cmapSayu(True)(range(4)))
plt.subplot(1, 2, 2)
plt.imshow(continuous, cmap = ggg.cmapYoimiya())
plt.show()
