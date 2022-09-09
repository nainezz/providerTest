import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  int quantity = 0;
  void addCart() {
    quantity++;
    notifyListeners();
  }

  void removeFromCart() {
    quantity--;
    notifyListeners();
  }
}
