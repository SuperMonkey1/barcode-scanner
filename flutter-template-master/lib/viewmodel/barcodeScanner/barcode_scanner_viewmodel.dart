import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class BarcodeScannerViewModel with ChangeNotifier {
  BarcodeScannerNavigator _navigator;
  String _scanBarcode = 'Unknown';
  String get scannedBarcode => _scanBarcode;

  Future<void> init(BarcodeScannerNavigator navigator) async {
    _navigator = navigator;
  }

  Future<void> onStartBarcodeScan() async {
    if (await Permission.camera.request().isGranted) {
      String _barcodeScanRes;
      try {
        _barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);
      } on PlatformException {
        _barcodeScanRes = 'Failed to get platform version';
      }
      _scanBarcode = _barcodeScanRes;
    }

    notifyListeners();
  }
}

abstract class BarcodeScannerNavigator {}
