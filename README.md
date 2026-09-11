# 📓 Notes App

A sleek, modern, and highly responsive Notes Application built with **Flutter**. This project demonstrates a strong adherence to **Clean Architecture**, reactive state management, and seamless local data persistence, wrapped in a premium dark-themed UI.

---

## ✨ Features

*   **📝 Complete CRUD Operations:** Effortlessly create, read, update, and delete personal notes.
*   **🔍 Live Search Functionality:** A dedicated, independent search view with real-time filtering and a clean empty state for unmatched queries (Zero UI blocking).
*   **🎨 Dynamic Color Picker:** Customize each note with a unique color indicator from a predefined beautiful palette.
*   **🌙 Premium Dark Theme:** A visually pleasing dark mode interface utilizing custom `GradientScaffold` for a modern, neon-accented aesthetic.
*   **⚡ Blazing Fast Storage:** Instantaneous data read/write operations powered by Hive NoSQL database.
*   **📅 Auto Date Formatting:** Notes are automatically timestamped using the `intl` package (e.g., *12 Sep 2026*).

---

## 📸 Screenshots

| Home Workspace | Search View | Add New Note | Edit Note |
| :---: | :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/7733220a-1f61-4943-affa-de6f2ece2ff5" width="200"> | <img src="https://github.com/user-attachments/assets/e0ff6be7-c5fb-4c2d-8d42-ab3d793b70cb" width="200"> | <img src="https://github.com/user-attachments/assets/6e55cfe2-5cde-4d4a-bf94-d23799def85d" width="200"> | <img src="https://github.com/user-attachments/assets/4e2c3454-5638-4577-a8ba-98f7fcee124f" width="200"> |

---

## 🛠️ Tech Stack & Architecture

This application was engineered with scalability and maintainability in mind, utilizing industry-standard packages and patterns:

*   **Framework:** [Flutter](https://flutter.dev/) (SDK ^3.10.8)
*   **State Management:** [Flutter Bloc / Cubit](https://pub.dev/packages/flutter_bloc)
    *   Implemented multiple independent Cubits (`NotesCubit`, `AddNoteCubit`) to ensure **Separation of Concerns (SoC)** and prevent unnecessary UI rebuilds.
*   **Local Storage:** [Hive](https://pub.dev/packages/hive) & [Hive Flutter](https://pub.dev/packages/hive_flutter)
    *   Utilized TypeAdapters (`NoteModelAdapter`) for efficient, schema-based local data caching.
*   **Architecture Pattern:** Feature-first approach separating `views`, `widgets`, `cubits`, and `models`.

---

## 📂 Folder Structure

```text
lib/
│
├── cubits/             # State management logic (NotesCubit, AddNoteCubit)
├── models/             # Data models and Hive TypeAdapters
├── views/              # Main screens (NotesView, SearchView, EditNoteView)
├── widgets/            # Reusable UI components (CustomAppBar, NoteItem, etc.)
├── constants.dart      # Global app constants (Color palette)
├── simple_bloc_observer.dart # Bloc state transition logger
└── main.dart           # App entry point & dependencies initialization
