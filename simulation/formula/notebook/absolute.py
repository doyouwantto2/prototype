import matplotlib
matplotlib.use("Agg")

import matplotlib.pyplot as plt
import numpy as np

L = 100
P = 0.6

x_axis = np.linspace(-L, L, 10000)

r = L * np.sqrt(P) / (np.sqrt(P) + np.sqrt(1 - P))

y_axis = 1 - np.abs(x_axis) / r

plt.axhline(0, linestyle="--", color="orange")
plt.plot(x_axis, y_axis)

plt.xlim(-L, L)

plt.savefig("../assets/absolute.png", dpi=300, bbox_inches="tight")
