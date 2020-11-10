import 'package:flutter/material.dart';

class BarcodeScannerViewModel with ChangeNotifier{
  BarcodeScannerNavigator _navigator;

  Future<void> init(BarcodeScannerNavigator navigator) async {
    _navigator = navigator;
  }
}

abstract class BarcodeScannerNavigator {}
