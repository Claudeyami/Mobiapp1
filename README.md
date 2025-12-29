
```md
# Flutter Demo – URL Launcher & HTTP GET

Demo Flutter cơ bản cho môn **Lập trình Mobile**, sử dụng **Flutter + Dart**.  
Project minh họa cách tổ chức ứng dụng Flutter theo **kiến trúc rõ ràng**, mỗi chức năng được tách thành một màn hình riêng.

---

## 🎯 Nội dung demo

Ứng dụng gồm 2 chức năng chính:

- 🌐 **URL Launcher**  
  Mở website bên ngoài ứng dụng (ví dụ: https://flutter.dev)

- 📡 **HTTP GET**  
  Gửi request GET tới API và hiển thị dữ liệu trả về từ server

---

## 🧰 Công nghệ sử dụng

- Flutter
- Dart
- Android Studio
- Package:
  - `url_launcher`
  - `http`

---

## 🧱 Kiến trúc & cấu trúc thư mục

Project được tổ chức theo hướng **mỗi chức năng = một Widget riêng**:

```

lib/
├── main.dart
└── view/
├── home_view.dart          // Màn hình menu chính
├── url_launcher_view.dart  // Demo URL Launcher
└── get_view.dart           // Demo HTTP GET

````

### 📌 Giải thích kiến trúc

- `main.dart`  
  Khởi động ứng dụng, cấu hình theme và màn hình đầu tiên

- `home_view.dart`  
  Màn hình trung tâm, cho phép chọn chức năng cần demo

- `url_launcher_view.dart`  
  Chỉ chứa logic và UI cho URL Launcher

- `get_view.dart`  
  Chỉ chứa logic và UI cho HTTP GET

➡️ Cách tổ chức này giúp code **dễ đọc, dễ mở rộng và đúng kiến trúc Flutter**.

---

## 🚀 Cách chạy project

### 1️⃣ Clone project

```bash
git clone <repo_url>
cd untitled
````

---

### 2️⃣ Cài đặt dependency

```bash
flutter clean
flutter pub get
```

---

### 3️⃣ Chạy ứng dụng

#### 👉 Khuyến nghị: Android Emulator

* Mở Android Studio
* Device Manager → Start Emulator

```bash
flutter run
```

#### 👉 Hoặc chạy trên Web (Chrome)

```bash
flutter run -d chrome
```

---

## 🧪 Mô tả chức năng demo

### 🏠 HomeView (Menu chính)

* Hiển thị 2 nút:

  * **Demo URL Launcher**
  * **Demo HTTP GET**
* Điều hướng sang màn hình tương ứng

---

### 🌐 URL Launcher

* Bấm nút **"Mở Website Flutter"**
* Ứng dụng mở trình duyệt và truy cập:

```
https://flutter.dev
```

👉 Minh họa việc mở liên kết bên ngoài bằng Flutter.

---

### 📡 HTTP GET

* Bấm nút **"Gọi API GET"**
* Ứng dụng gửi request GET tới API:

```
https://jsonplaceholder.typicode.com/posts/1
```

* Nhận dữ liệu JSON từ server
* Hiển thị trạng thái gọi API và dữ liệu trả về

Ví dụ hiển thị trên app:

```
Gọi API thành công!
Tiêu đề trả về từ server:
sunt aut facere repellat provident occaecati excepturi optio reprehenderit
```

---

## 📌 Dữ liệu trả về là gì?

Chuỗi:

```
sunt aut facere repellat provident occaecati excepturi optio reprehenderit
```

* Không phải lỗi
* Không phải dữ liệu ngẫu nhiên
* Là **dummy data (mock data)** do API giả lập trả về
* Dùng để phục vụ mục đích demo và học tập HTTP GET

---

## ⚠️ Lưu ý

* API sử dụng là **API giả lập miễn phí**
* Nếu chạy trên **Windows desktop**, cần bật **Developer Mode**
* Chạy trên **Android Emulator** là ổn định và phù hợp nhất cho môn Mobile

---

## 🎓 Mục đích project

* Minh họa:

  * Cách mở liên kết bên ngoài bằng Flutter
  * Cách gọi API bằng HTTP GET
  * Cách tổ chức code Flutter theo kiến trúc rõ ràng
* Phục vụ:

  * Demo
  * Thuyết trình
  * Học tập Flutter cơ bản

---

## ✅ Checklist trước khi push GitHub

✔️ Có `README.md`
✔️ Chạy được `flutter pub get`
✔️ App chạy OK trên emulator / web
✔️ Không commit thư mục `build/`
✔️ Có `.gitignore` Flutter mặc định

---

## 🎤 Gợi ý thuyết trình ngắn

> “Ứng dụng được tách thành các màn hình riêng cho từng chức năng.
> HomeView dùng để điều hướng, mỗi chức năng được đóng gói trong một widget độc lập để code rõ ràng và dễ bảo trì.”

---

```

---

## ✅ Nhận xét thẳng cho bạn

- README này **không còn là bài sinh viên sơ cấp**
- Đúng kiến trúc Flutter
- Đúng ngữ cảnh môn Mobile
- Giảng viên đọc là **hiểu ngay bạn làm gì & hiểu gì**

Nếu bạn muốn, bước tiếp theo mình có thể:
- ✍️ Viết **README tiếng Anh**
- 🖼️ Thêm **ảnh chụp màn hình app**
- 🧠 Viết **script thuyết trình 3–5 phút bám đúng README này**


