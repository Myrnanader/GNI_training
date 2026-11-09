# 🎯 Dart Language Fundamentals & OOP Practice

<div align="center">

[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![OOP](https://img.shields.io/badge/Paradigm-OOP-purple?style=for-the-badge)]()

**A comprehensive set of pure Dart exercises, algorithm problems, and Object-Oriented design patterns completed during the training.**

</div>

---

## 📚 Problem Categories

### 1. 🧮 Basics (`basics/`)
* **`bill.dart`:** Calculation of customer bills, discounts, and service taxes.
* **`delivery_company.dart`:** Delivery fee calculation based on package weight and distance.
* **`password.dart`:** Validation logic for checking password strength and criteria.
* **`student.dart`:** Student grade calculation and performance evaluation.

### 2. 🏧 Control Flow (`control/`)
* **`atm.dart`:** Interactive ATM simulation with balance checking, cash withdrawal limits, and deposit verification.

### 3. 📦 Collections & Algorithms (`lists/`, `loops/`, `functions/`)
* **`lists/cart.dart`:** Shopping cart manipulation, totaling, and price aggregation.
* **`lists/largest.dart`:** Algorithm for identifying maximum values in unsorted lists.
* **`loops/`:** Counter loops and sequence summation algorithms.
* **`functions/student_map.dart`:** Managing student records using Dart Maps (`Map<String, dynamic>`).

### 4. 🏛️ Object-Oriented Programming (`oop/`)
* **Class Models (`oop/models/`):**
  * `BankAccount`: Encapsulation, balance mutations, and transaction logging.
  * `Employee`: Salary computation, bonuses, and title tracking.
  * `Car`, `Book`, `Product`, `Rectangle`, `Student`.
* **OOP Tasks & Polymorphism (`oop/tasks/`):**
  * `method_overriding.dart`: Subclass customization and super calls.
  * `payment.dart`: Polymorphic payment gateways (`CreditCardPayment`, `CashPayment`).
  * `animal.dart`: Abstract classes and inheritance hierarchies.
* **🚚 Delivery Management System (`oop/Delivery Management System/`):**
  * Base `Delivery` class with specialized subclasses `FoodDelivery` and `ProductDelivery` implementing custom delivery fee and tracking logic.

---

## 🚀 How to Run

Execute any script directly with the Dart CLI:

```bash
# Run the ATM Simulator
dart run dart/control/atm.dart

# Run the Delivery Management System
dart run "dart/oop/Delivery Management System/main.dart"
```

