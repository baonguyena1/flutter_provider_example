import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  Counter(this._counter);

  int _counter;

  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}