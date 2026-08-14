import math
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

# -------------------- HẰNG SỐ MẶC ĐỊNH (THEO ĐƯỜNG MÀU CAM) --------------------
DEFAULT_MEDIAN = 0.0
DEFAULT_MAX_SCORE = 80.0      # Đỉnh chuông vừa phải
DEFAULT_SIGMA = 47.0          # Rộng, nhưng không quá bẹt
DEFAULT_PENALTY = 0.08        # Phạt nhẹ, xuống âm từ từ

# -------------------- HÀM ĐÁNH GIÁ --------------------
def score_based_on_distance(x: float, 
                            median: float = DEFAULT_MEDIAN, 
                            max_score: float = DEFAULT_MAX_SCORE, 
                            sigma: float = DEFAULT_SIGMA, 
                            penalty: float = DEFAULT_PENALTY) -> float:
    """
    Tính điểm dựa trên khoảng cách từ x đến median.
    - max_score: điểm tối đa khi x == median.
    - sigma: độ rộng (càng lớn, đường cong càng bẹt).
    - penalty: hệ số phạt tuyến tính (càng lớn, càng xuống âm nhanh).
    """
    d = abs(x - median)
    gaussian_part = max_score * math.exp(- (d ** 2) / (2 * sigma ** 2))
    linear_penalty = penalty * d
    return gaussian_part - linear_penalty

# -------------------- HÀM TIỆN ÍCH CHO LỚP ADJUDICATE / VOTE --------------------
def evaluate_reputation(vote_value: float, median: float = DEFAULT_MEDIAN) -> float:
    """
    Tính điểm danh tiếng cho một phiếu bầu dựa trên khoảng cách đến median.
    Dùng các hằng số mặc định (theo đường màu cam).
    """
    return score_based_on_distance(vote_value, median=median)

# -------------------- VẼ ĐỒ THỊ (CHỈ MỘT ĐƯỜNG) --------------------
x_vals = np.linspace(-200, 200, 800)
y_vals = [score_based_on_distance(x) for x in x_vals]

plt.figure(figsize=(10, 6))
plt.plot(x_vals, y_vals, color='orange', linewidth=2, 
         label=f'max={DEFAULT_MAX_SCORE}, σ={DEFAULT_SIGMA}, p={DEFAULT_PENALTY}')

# Đường tham chiếu
plt.axhline(0, color='black', linewidth=0.8, linestyle='--', alpha=0.7)
plt.axvline(0, color='red', linestyle='--', linewidth=1, alpha=0.7, label='Median = 0')

# Đánh dấu một số điểm để thấy giá trị
for x_val in [-150, -100, -50, 0, 50, 100, 150]:
    y_val = score_based_on_distance(x_val)
    plt.scatter(x_val, y_val, color='blue', s=30, zorder=5)
    plt.annotate(f'({x_val}, {y_val:.1f})', (x_val, y_val), textcoords="offset points", 
                 xytext=(5,5), fontsize=8, rotation=0)

plt.title('Hàm đánh giá với tham số theo đường màu cam (rộng, âm vừa phải)')
plt.xlabel('Giá trị x')
plt.ylabel('Điểm số')
plt.xlim(-200, 200)
plt.grid(True, alpha=0.3)
plt.legend()
plt.savefig('score_plot_cam.png', dpi=150)
print("Đã lưu biểu đồ thành score_plot_cam.png")
