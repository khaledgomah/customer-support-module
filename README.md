# 📱 Customer Support Module (Flutter + GetX)

A standalone module designed to provide a fully functional customer support experience. Built with **Flutter** and **GetX**, this module allows users to chat in real time, browse FAQs, and reach out via various communication channels.

---

## 🚀 Features

- 💬 Real-time chat with Firebase Firestore  
- 📖 Expandable FAQ system with categorized questions  
- 🤖 Call Center Simulation via interactive dialog with service options  
- ☎️ Contact via phone, email, WhatsApp, Facebook, Instagram  
- 🎨 Light/Dark theme support  
- ✅ MVVM architecture using GetX  
- 🧹 Clean folder structure  
- 🔍 Fully analyzed with `dart_code_metrics` — no issues

---

## 🧠 Architecture

This module follows the **MVVM architecture** using **GetX**, where logic, UI, and data are separated for better scalability and maintainability.

```
lib/
├── core/                    # Shared resources (constants, themes, custom widgets)
│   ├── constants/           # AppStrings, AppColors, AppValues, etc.
│   ├── widgets/             # Reusable UI components
│   └── services/ (optional) # Helper classes or platform integrations
│
├── data/
│   └── models/              # Model classes (e.g., ChatMessage, FAQ, UserModel)
│
├── modules/
│   └── customer_support/
│       ├── bindings/        # GetX bindings (dependency injection per screen/module)
│       ├── controllers/     # Business logic / ViewModels (GetxControllers)
│       ├── views/           # UI Screens (stateless widgets using GetView)
│
├── routes/
│   └── app_routes.dart      # Centralized route names
│
└── main.dart                # App entry point and Firebase initialization
```

### 🔄 MVVM Breakdown (with GetX):

| Layer        | Description |
|--------------|-------------|
| **Model**    | Plain Dart classes (e.g. `FAQ`, `UserModel`) that define the data structure. |
| **View**     | UI components using `StatelessWidget` or `GetView<T>`. No business logic inside. |
| **ViewModel**| Implemented as `GetxController`, contains all logic and reactive state. |
| **Binding**  | Injects dependencies using `Get.lazyPut()` and links controller to view. |

### ✅ Example: `FAQ` Screen

- **Model:** `FAQ` class (question, answer, category)
- **View:** `FAQView` (`GetView<HelpFaqController>`)
- **ViewModel:** `HelpFaqController` (handles filters, search, selection)
- **Binding:** `HelpFaqBinding`

### ⚡ Why this structure?

- 🧩 Reusable and testable logic  
- 🧠 Separation of UI and business logic  
- 💥 Easy scaling for large apps or multi-modules  
- 🔄 GetX gives reactive and modular structure out-of-the-box

---

## 🛠 Tech Stack

| Tool              | Description                       |
|-------------------|-----------------------------------|
| Flutter           | UI Framework                      |
| GetX              | State management, routing, DI     |
| Firebase Firestore| Real-time database                |
| url_launcher      | Open external apps (phone, email) |
| postimg           | Save image online                 |

---

## 📦 Installation

```bash
# 1. Get dependencies
flutter pub get

# 2. Configure Firebase (required)
# - Add google-services.json to android/app
# - Ensure firebase_options.dart exists and initialized in main.dart

# 3. Run the app
flutter run
```

---

## 📸 Screenshots
![Screenshot_1751116670](https://github.com/user-attachments/assets/0583ff58-610f-4dd7-a5ec-aed0b34e1baf)
![Screenshot_1751116631](https://github.com/user-attachments/assets/31cf6dc9-e96b-43a0-a0bc-6f0e78eaaefe)
![Screenshot_1751116764](https://github.com/user-attachments/assets/899f70e2-93eb-4437-a92b-297581db1941)
![Screenshot_1751116788](https://github.com/user-attachments/assets/dafb9f5a-80bd-49bc-aac5-174f05ea1c54)

|

---

## 📌 Notes

- No authentication implemented — a static `userId` is used for simulation.
- Easily extendable with Firebase Auth or any backend system.
- The code is modular and scalable, following MVVM using GetX (`GetView`, `Controller`, `Binding`, `Service`).

---

## ✅ Code Quality

This project was analyzed with [`dart_code_metrics`](https://pub.dev/packages/dart_code_metrics)

```
✔ No issues found
```

---

## 🙌 Author

Made with ❤️ by **Khaled Gomah**  
📧 khaledgomah10@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/khaled-gomah-360067227)  
🔗 [GitHub](https://github.com/khaledgomah)

---

## 📄 License

This project is for educational/demo purposes.  
Feel free to fork and use it as part of your own apps.
