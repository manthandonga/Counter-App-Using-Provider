import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int conter = 0;

  void increment() {
    conter++;
    notifyListeners();
  }

  void decrement() {
    conter--;
    notifyListeners();
  }
}
