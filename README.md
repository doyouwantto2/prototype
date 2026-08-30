# Các thư mục chính
```text
📁assets: Thư mục lưu hình ảnh chung
📁contracts: Thư mục lưu trữ smart contracts 
📁core: Thư mục lưu mã nguồn front end để tương tác
📁diagrams: Thư mục lưu biểu đồ của drawio
📁docs: Thư mục lưu các bản nháp
📁paper: Báo cáo kỹ thuật 
📁simulation: Nơi thực hiện các mô phỏng 
📁storage: Nơi lưu thông tin chung giữa core, contracts và simulation
```

## Vai trò của các thư mục:
```text
📁core: Thư mục chứa dự án bao gồm FE và BE. 

- Đây là nơi ta tương tác với backend để mô phỏng các thread để bàn luận trong các buổi phân xử.

📁contracts: Thư mục lưu trữ smart contracts. 

- Ta sẽ không deploy trên main net mà sử dụng test net. 

- Sử dụng 10 tài khoản được cấp bởi anvil để tương tác thực tế.

📁simulation: Tạo môi trường giả lập để dự đoán hành vi của các tác tử với những điều kiện cho trước.

- Sử dụng python và mô hình hóa các sự kiện.

- Tác tử đều có quyền lực ngang nhau nhưng khác nhau ở chiến lược.

📁paper: Nơi triển khai ý tưởng trước khi được thử nghiệm.
```
