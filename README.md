
# Flutter Demo – URL Launcher & HTTP GET

Demo Flutter cơ bản cho môn **Lập trình Mobile**, sử dụng **Flutter + Dart**, minh họa:

- 🌐 URL Launcher (mở website bên ngoài)
- 📡 HTTP GET (gọi API và hiển thị dữ liệu)

---

## 🧰 Công nghệ sử dụng

- Flutter
- Dart
- Android Studio
- Package:
  - `url_launcher`
  - `http`

---

## 📁 Cấu trúc thư mục chính

```

lib/
├── main.dart
└── view/
└── home_view.dart

````

---

## 🚀 Cách chạy project

### 1️⃣ Clone project

```bash
git clone <repo_url>
cd untitled
````

---

### 2️⃣ Cài dependency

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

## 🧪 Chức năng demo

### 🌐 URL Launcher

* Bấm nút **"Mở Website Flutter"**
* Ứng dụng mở trang:
  [https://flutter.dev](https://flutter.dev)

### 📡 HTTP GET

* Bấm nút **"Gọi API GET"**
* Ứng dụng gửi request GET tới API:

```
https://jsonplaceholder.typicode.com/posts/1
```

* Hiển thị dữ liệu (`title`) trả về từ server

---

## ⚠️ Lưu ý

* API sử dụng là **API giả lập miễn phí** để phục vụ học tập
* Nếu chạy trên **Windows desktop**, cần bật **Developer Mode**
* Chạy trên **Android Emulator** sẽ ổn định nhất

---

## 📌 Mục đích project

* Minh họa cách Flutter:

    * mở liên kết bên ngoài
    * gọi API bằng phương thức GET
* Phục vụ demo, thuyết trình, học tập Flutter cơ bản

---


## ✅ CHECKLIST TRƯỚC KHI PUSH GITHUB

✔️ Có `README.md`  
✔️ Chạy được `flutter pub get`  
✔️ App chạy OK trên emulator / web  
✔️ Không commit `build/`  
✔️ Có `.gitignore` Flutter mặc định  

---

## 📌 DÒNG CHỮ HIỆN RA LÀ GÌ?

Dòng này:

```
sunt aut facere repellat provident occaecati excepturi optio reprehenderit
```

👉 **KHÔNG phải lỗi**
👉 **KHÔNG phải chữ ngẫu nhiên**
👉 **LÀ DỮ LIỆU TRẢ VỀ TỪ API (HTTP GET)**

---

## 🌐 NGUỒN CỦA DỮ LIỆU

Bạn đang gọi API:

```
https://jsonplaceholder.typicode.com/posts/1
```

API này trả về **JSON** như sau:

```json
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae..."
}
```

👉 Trong code bạn có dòng:

```dart
title = data["title"];
```

➡️ **App chỉ lấy trường `title`** để hiển thị

---

## 🧠 VẬY NÓ CÓ NGHĨA LÀ GÌ?

* Đây là **tiếng Latin giả**
* Dùng để **test / demo**
* Không mang ý nghĩa nội dung thực tế

📌 Gọi là:

> **Dummy Data** / **Mock Data**

---

## 🎤 TRẢ LỜI SAO KHI THẦY HỎI?

### Câu trả lời CHUẨN – ĂN ĐIỂM:

> “Đây là dữ liệu giả lập trả về từ API dùng cho mục đích demo HTTP GET. Ứng dụng lấy trường `title` từ JSON và hiển thị lên giao diện.”

💯 **Câu này đúng sách, đúng kỹ thuật**

---

## ❓ TẠI SAO KHÔNG PHẢI TIẾNG VIỆT?

👉 Vì:

* API là **quốc tế**
* Mục đích là **test kỹ thuật**
* Không test nội dung

---

## 🔥 NẾU MUỐN HIỂN THỊ RÕ HƠN (KHÔNG BẮT BUỘC)

Bạn có thể đổi hiển thị thành:

```dart
title = "GET thành công!\nTiêu đề: ${data["title"]}";
```

Hoặc hiển thị thêm:

```dart
"User ID: ${data["userId"]}\nID: ${data["id"]}\nTitle: ${data["title"]}"
```

---

## ✅ KẾT LUẬN NGẮN GỌN

✔️ Dòng chữ đó = **kết quả GET API**
✔️ Không phải lỗi
✔️ Chứng minh app gọi API thành công
✔️ Demo của bạn **ĐẠT**

---



