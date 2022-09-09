import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String name = "Nainezz";

  void updatedName(String newName) {
    name = newName;
    notifyListeners();
  }
}
