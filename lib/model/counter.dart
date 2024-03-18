import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int numberA = 0;
  int numberB = 0;

  incrementA1(int n) {
    numberA = numberA + n;
    notifyListeners();
  }

  incrementB1(int n) {
    numberB = numberB + n;
    notifyListeners();
  }

  reset() {
    numberA = 0;
    numberB = 0;
    notifyListeners();
  }
}
