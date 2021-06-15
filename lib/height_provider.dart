import 'package:flutter/material.dart';

class HeightProvider with ChangeNotifier {
  double _height = 40;

  double get height => this._height;

  set height(double value) {
    this._height = value;
    notifyListeners();
  }
}
