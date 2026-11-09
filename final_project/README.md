# 🍕 Doorstep — Food Delivery Mobile App (Final Capstone Project)

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![ScreenUtil](https://img.shields.io/badge/Responsive-ScreenUtil-orange?style=for-the-badge)](https://pub.dev/packages/flutter_screenutil)
[![Design](https://img.shields.io/badge/UI%2FUX-Figma_Design-purple?style=for-the-badge)](https://figma.com)

**A modern, pixel-perfect Food Delivery application built in Flutter from Figma designs using clean, feature-first architecture.**

</div>

---

## 📱 Overview

**Doorstep** is the capstone project developed as the final evaluation of the mobile development internship. The app replicates a Figma prototype into an interactive, modular Flutter application, emphasizing scalability, responsive layouts across device screens, and reusable UI components.

---

## ✨ Features & User Flows

* **🚀 Onboarding Flow (`GettingStartedScreen`):**
  * Engaging hero illustration and introductory headline.
  * Clear calls-to-action to transition smoothly into the authentication flow.

* **🔐 Authentication Flow (`LoginScreen`):**
  * Validated input fields (`CustomTextField`) for email and password.
  * Branded header (`DoorstepTitle`) and streamlined login submission.

* **🏠 Home & Discovery (`HomeScreen`):**
  * Personalized greeting and search header (`HomeHeader`).
  * Dynamic category selector (`FoodCategories`) for Burgers, Pizza, Drinks, etc.
  * Popular items carousel (`PopularSection`) showcasing dish ratings, prices, and fast add-to-cart actions (`FoodCard`).

* **🍔 Product Details (`ItemDetailsScreen`):**
  * High-resolution food showcase (`ProductImage`).
  * Nutritional & attribute chips (e.g. calories, prep time, spice level) (`ProductAttributes`).
  * Interactive quantity increment/decrement selector (`QuantitySelector`).
  * Floating bottom action bar with total price calculation and `AddToCartButton`.

---

## 🏗️ Architecture & Structure

The project follows a **Feature-First Architecture** separating concern boundaries cleanly:

```text
lib/
├── app/
│   ├── app.dart                   # Root MaterialApp with ScreenUtil initialization
│   └── routes/
│       └── app_routes.dart        # Centralized named routes (/getting-started, /login, /home, /item-details)
├── core/
│   ├── constants/                 # Assets and string constants
│   ├── theme/                     # AppColors, AppDimensions, AppTextStyles, AppTheme
│   └── widgets/                   # Reusable design system widgets (buttons, text fields, badges)
└── features/
    ├── auth/                      # Login screen, forms, and presentation widgets
    ├── home/                      # Home feed, food category chips, and popular food cards
    ├── onboarding/                # Getting started screen and onboarding graphics
    └── product/                   # Food item model, dummy datasets, details screen & quantity controls
```

---

## 🎨 Design System & Responsiveness

* **Responsive Sizing:** Integrated with [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) (`.w`, `.h`, `.sp`, `.r`) ensuring identical proportions across small smartphones and large flagship displays.
* **Typography:** Custom **Inter** font family (`Regular`, `Medium`, `Bold`) configured in `pubspec.yaml`.
* **Theme Definition:** Centralized color palette defined in `AppColors` supporting consistent primary branding, subtle neutral surfaces, and rating highlights.

---

<div align="center">
Developed by <b>Myrna Nader</b> as part of the GNI Mobile Development Internship.
</div>
