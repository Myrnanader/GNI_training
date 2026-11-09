# ☕ Coffee House — Mobile Ordering App

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Provider](https://img.shields.io/badge/State_Management-Provider-blue?style=for-the-badge)](https://pub.dev/packages/provider)
[![flutter_svg](https://img.shields.io/badge/Icons-flutter__svg-yellow?style=for-the-badge)](https://pub.dev/packages/flutter_svg)

**A Flutter e-commerce application for coffee ordering with Provider-based state management, dynamic shopping cart, and order summary.**

</div>

---

## 📱 Features

* **🔐 Authentication:** Login & Registration interfaces with social authentication options (Google, Facebook, Twitter).
* **📋 Menu Catalog (`HomeScreen`):** Categorized coffee items with product cards, dynamic pricing, and ratings.
* **🛒 Cart Management (`CartScreen`):**
  * Real-time cart state managed with `ChangeNotifierProvider` (`CartController`).
  * Increment / decrement quantities and remove items.
  * Live subtotal calculation and badge indicator.
* **💳 Order Summary & Checkout (`CheckoutScreen`):** Breakdown of selected beverages, item count, order summary, and checkout actions.
* **🎨 Custom UI:** Bottom navigation bar (`CoffeeBottomNav`), SVG icons, and consistent warm coffee theme.

---

## 🏗️ Structure

```text
lib/
├── core/                  # App colors & theme configurations
├── data/                  # Static product data sources
├── models/                # Product & CartItem data models
├── screens/               # Login, Register, Home, Cart, Checkout
├── state/                 # CartController (ChangeNotifier)
└── widgets/               # Reusable custom UI components (cards, buttons, inputs)
```

---

## 🚀 Getting Started

```bash
cd coffe
flutter pub get
flutter run
```
