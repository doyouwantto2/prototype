import matplotlib
matplotlib.use("Agg")

import matplotlib.pyplot as plt
import numpy as np

x_axis = np.linspace(-20000, 20000, 10000)

k = 5000
sigmoid = 1 / (1 + np.exp(-x_axis / k))

y_axis = 40000 * sigmoid - 20000

plt.plot(x_axis, y_axis)
plt.xlim(-20000, 20000)
plt.ylim(-20000, 20000)

plt.axhline(0, linestyle="--", color="orange")

plt.savefig("sigmoid.png", dpi=300, bbox_inches="tight")
