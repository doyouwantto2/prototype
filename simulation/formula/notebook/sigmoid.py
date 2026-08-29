import matplotlib
matplotlib.use("Agg")

import matplotlib.pyplot as plt
import numpy as np

L = 20000
k = 5000

x_axis = np.linspace(-L, L, 10000)

y_axis = L * np.tanh(x_axis / k)

plt.plot(x_axis, y_axis)

plt.xlim(-L, L)
plt.ylim(-L, L)

plt.axhline(0, linestyle="--", color="orange")
plt.axvline(0, linestyle="--", color="orange")

plt.savefig("../assets/sigmoid.png", dpi=300, bbox_inches="tight")
