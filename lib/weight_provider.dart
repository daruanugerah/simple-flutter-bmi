import 'package:flutter/material.dart';

class WeightProvider with ChangeNotifier {
  double _weight = 40;

  get weight => this._weight;

  set weight(value) {
    this._weight = value;
    notifyListeners();
  }
}
