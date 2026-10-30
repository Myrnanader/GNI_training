
import 'package:coffe/data/products.dart';
import 'package:flutter/foundation.dart';

import '../models/cart_item.dart';

class CartController extends ChangeNotifier {
  final Map<String, CartItem> _items = {};

  List<CartItem> get items =>
      _items.values.toList(growable: false);

  int get itemCount {
    return _items.values.fold(
      0,
      (sum, item) => sum + item.quantity,
    );
  }

  int get subtotal {
    return _items.values.fold(
      0,
      (sum, item) => sum + item.total,
    );
  }

  int get shipping {
    return _items.isEmpty ? 0 : 6;
  }

  int get total => subtotal + shipping;

  bool get isEmpty => _items.isEmpty;

  void add(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id]!.quantity++;
    } else {
      _items[product.id] = CartItem(
        product: product,
      );
    }

    notifyListeners();
  }

  void increase(String productId) {
    final item = _items[productId];

    if (item == null) return;

    item.quantity++;

    notifyListeners();
  }

  void decrease(String productId) {
    final item = _items[productId];

    if (item == null) return;

    if (item.quantity <= 1) {
      _items.remove(productId);
    } else {
      item.quantity--;
    }

    notifyListeners();
  }

  void remove(String productId) {
    _items.remove(productId);

    notifyListeners();
  }

  void clear() {
    _items.clear();

    notifyListeners();
  }
}
