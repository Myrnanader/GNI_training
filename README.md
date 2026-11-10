# 📱 Flutter & Dart Internship Portfolio (NGI Training)

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Provider](https://img.shields.io/badge/State_Management-Provider-blue?style=for-the-badge)](https://pub.dev/packages/provider)
[![ScreenUtil](https://img.shields.io/badge/Responsive-ScreenUtil-orange?style=for-the-badge)](https://pub.dev/packages/flutter_screenutil)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Windows-green?style=for-the-badge)]()

**A comprehensive showcase of projects, practical tasks, and fundamental problem sets completed during the Mobile Application Development Internship.**

[Explore Projects](#-projects-overview) • [Repository Structure](#-repository-structure) • [Tech Stack](#-technologies--packages) • [Author](#-author)

</div>

---

## 📌 Overview

This repository documents the learning journey, hands-on tasks, and capstone applications completed during the **NGI Mobile Development Internship**. The curriculum covers the complete spectrum of mobile development: starting from core **Dart programming** and **Object-Oriented Programming (OOP)** paradigms, advancing through responsive **Flutter UI/UX implementations**, state management with **Provider**, and culminating in a full **Food Delivery Mobile Application** translated from Figma designs.

---

## 🚀 Projects Overview

### 1. 🍕 Food Delivery App — Final Capstone Project (`/final_project`)
An end-to-end, pixel-perfect Food Delivery application built following professional Figma specifications and enterprise architecture patterns.
* **Architecture:** Modular, feature-first structure (`core/`, `features/onboarding`, `features/auth`, `features/home`, `features/product`).
* **Key Features:**
  * **Onboarding & Authentication:** Smooth getting-started walkthrough and sleek login interface.
  * **Food Catalog & Discovery:** Categorized menus (Burgers, Pizza, Beverages, etc.), popular items section, and searchable item feeds.
  * **Interactive Product Details:** Dynamic item showcase, nutritional / attribute tags, real-time quantity selector, and animated add-to-cart controls.
  * **Pixel-Perfect Responsiveness:** Scaled dynamically across multiple screen sizes using `flutter_screenutil`.
  * **Typography & Design System:** Custom `Inter` font family integration and unified centralized theming.

---

### 2. ☕ Coffee House Application (`/coffe`)
A modern e-commerce mobile application designed for ordering coffee drinks and bakery items.
* **State Management:** Integrated `Provider` (`CartController`) managing cart states, item increments, decrements, and live subtotal calculations.
* **Features:**
  * Categorized menu browsing with custom product cards.
  * Dedicated interactive **Cart Screen** with item management.
  * Complete **Checkout & Order Summary** breakdown with taxes and subtotals.
  * High-fidelity vector iconography powered by `flutter_svg`.

---

### 3. 👟 Sneaker / Footwear Store App (`/store_app`)
A stylish footwear e-commerce application focusing on dynamic animations and rich interactive product exploration.
* **Key Features:**
  * **360° Interactive Viewer:** `Shoe360Viewer` component allowing immersive product inspection.
  * **Multi-Angle Gallery:** Thumbnail selectors and full-view hero gallery transitions.
  * **Custom Responsive Engine:** Custom layout utility (`R.init()`) calculating adaptive dimensions dynamically.
  * **Modern Storefront:** Floating bottom cart actions, tag labels, and discount badges.

---

### 4. ✈️ Travel Auth Suite (`/login_task`)
A production-ready authentication and user onboarding flow.
* **Screens:** Sign In, Sign Up, and Forgot Password screens.
* **Highlights:**
  * Clean `AuthScaffold` wrapper ensuring visual consistency.
  * Reusable validated form text fields (`AppTextField`) with toggleable password visibility.
  * Modern typography powered by `google_fonts`.
  * Centralized named route navigation (`AppRoutes`).

---

### 5. 👤 Profile & Service Showcase (`/profile_screen`)
A user profile and portfolio interface demonstrating complex layout composition and Flutter animation primitives.
* **Key Features:**
  * Interactive statistics row (Projects, Reviews, Followers).
  * Services grid highlighting core offerings with custom status badges.
  * Smooth page transitions using Flutter's **`Hero`** animation widget.

---

### 6. 💧 Little Drop Onboarding (`/welcome_screen`)
An elegant welcome screen emphasizing brand identity and initial user acquisition.
* **Features:** Clean vector illustration layout, prominent action CTA buttons, and social sign-in integrations (Google, Facebook).

---

### 7. 🎨 Splash Screen Practice (`/pract1`)
A foundational project focusing on splash screen styling, branding alignment, and custom reusable button widgets.

---

### 8. 🎯 Dart Fundamentals & OOP Mastery (`/dart`)
A structured collection of algorithms, data structures, and Object-Oriented design exercises:
* **Basics & Control Flow:** Bill calculation, delivery pricing models, password validation, and an interactive **ATM Machine simulation** (`atm.dart`).
* **Collections & Functions:** Shopping cart calculations (`cart.dart`), student map records (`student_map.dart`), and array/list algorithm challenges.
* **OOP Models & Principles:**
  * Encapsulation, inheritance, abstraction, and polymorphism.
  * Specialized classes: `BankAccount`, `Employee` (salary & bonus calculations), `Car`, `Book`, `Product`, `Rectangle`.
  * **Delivery Management System:** Hierarchical delivery architecture (`Delivery`, `FoodDelivery`, `ProductDelivery`).
  * Method overriding and polymorphism tasks (`method_overriding.dart`, `payment.dart`).

---

## 📂 Repository Structure

```text
NGI_training/
├── final_project/           # Capstone: Food Delivery Application
│   ├── assets/              # Images, icons, and custom fonts (Inter)
│   └── lib/
│       ├── app/             # Application entry, themes, and route configurations
│       ├── core/            # Common constants, themes, and reusable widgets
│       └── features/        # Feature-driven modules (auth, home, onboarding, product)
├── coffe/                   # Coffee House App with Provider State Management
│   ├── assets/              # Coffee images and SVG icons
│   └── lib/                 # Models, screens, state (CartController), and widgets
├── store_app/               # Sneaker Store with 360° product viewer and gallery
│   └── lib/                 # Responsive utilities, product details, and showcase screens
├── login_task/              # Authentication Suite (Login, Sign Up, Forgot Password)
│   └── lib/                 # Auth screens, shared widgets, and route configurations
├── profile_screen/          # User Profile screen with Hero transitions and services
│   └── lib/                 # Profile headers, stats widgets, and service cards
├── welcome_screen/          # "Little Drop" Onboarding & Social Login UI
│   └── lib/                 # Welcome screens, social buttons, and illustrations
├── pract1/                  # Practical Session: Splash screen & button components
│   └── lib/                 # Splash UI and foundational widgets
└── dart/                    # Dart language problems & OOP design challenges
    ├── basics/              # Basic Dart syntax, bills, and data validation
    ├── control/             # ATM simulation and control statements
    ├── functions/           # Function definitions and mapping logic
    ├── lists/               # List operations, shopping cart, and search algorithms
    ├── loops/               # Looping exercises and counters
    └── oop/                 # Object-Oriented Programming models, tasks & systems
```

---

## 🛠️ Technologies & Packages

| Category | Technologies / Libraries |
| :--- | :--- |
| **Language** | [Dart](https://dart.dev/) (Null-safety, OOP) |
| **Framework** | [Flutter](https://flutter.dev/) (Material 3) |
| **State Management** | [Provider](https://pub.dev/packages/provider) |
| **Responsive Design** | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil), Custom Viewport Utilities |
| **Typography & Assets** | [google_fonts](https://pub.dev/packages/google_fonts), [flutter_svg](https://pub.dev/packages/flutter_svg), [cupertino_icons](https://pub.dev/packages/cupertino_icons) |
| **Architecture** | Feature-First Architecture, Clean Code Principles, Separation of Concerns |

---

## 👩‍💻 Author

**Myrna Nader**
* GitHub: [@Myrnanader](https://github.com/Myrnanader)
* Repository: [NGI_training](https://github.com/Myrnanader/NGI_training)

---

<div align="center">
⭐ <i>Thank you for reviewing my internship training portfolio!</i> ⭐
</div>

