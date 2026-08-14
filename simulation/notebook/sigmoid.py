import math
import matplotlib
matplotlib.use('Agg')  
import matplotlib.pyplot as plt
import numpy as np

def sigmoid_symmetric(x: float, k: float = 0.0003) -> float:
    return 1000 * math.tanh(k * x)

x_vals = np.linspace(-20000, 20000, 1000)
y_vals = [sigmoid_symmetric(x, k=0.0003) for x in x_vals]

plt.figure(figsize=(8, 5))
plt.plot(x_vals, y_vals, label=r'$f(x) = 1000 \cdot \tanh(0.0001 \cdot x)$', color='b')

x_point = 500
y_point = sigmoid_symmetric(x_point, k=0.0003)
plt.scatter(x_point, y_point, color='red', s=100, zorder=5,
            label=f'x = {x_point}, f(x) = {y_point:.2f}')
plt.axvline(x_point, color='red', linestyle='--', linewidth=0.8, alpha=0.7)
plt.axhline(y_point, color='red', linestyle='--', linewidth=0.8, alpha=0.7)

plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.legend()

plt.savefig('sigmoid.png', dpi=150)
print("Đồ thị đã được lưu thành 'sigmoid.png'")
