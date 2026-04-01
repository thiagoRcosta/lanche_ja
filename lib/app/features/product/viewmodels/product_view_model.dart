import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier {
  int quantity = 0;
  final int maxQuantity = 99;

  bool get isExpanded => quantity > 0;
  bool get isMax => quantity >= maxQuantity;

  void addItem() {
    if (quantity < maxQuantity) {
      quantity++;
      notifyListeners();
    }
  }

  void removeItem() {
    if (quantity > 0) {
      quantity--;
      notifyListeners();
    }
  }
}
