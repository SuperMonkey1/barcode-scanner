import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScannerViewModel with ChangeNotifier {
  BarcodeScannerNavigator _navigator;
  String _scanBarcode = 'Unknown';

  String get scannedBarcode => _scanBarcode;

  Future<void> init(BarcodeScannerNavigator navigator) async {
    _navigator = navigator;
  }

  // Future<void> requestPermission(Permission permission) async {
  //   final status = await permission.request();
  //
  //   setState(() {
  //     print(status);
  //     _permissionStatus = status;
  //     print(_permissionStatus);
  //   });
  // }

  Future<void> onStartBarcodeScan() async {
    //requestPermission(_permission);

    String _barcodeScanRes;
    try {
      _barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);
    } on PlatformException {
      _barcodeScanRes = 'Failed to get platform version';
    }

    /// TODO: What does 'mounted' mean and is it required here? (Originally in screen and with setState)
    //if (!mounted) return;

    _scanBarcode = _barcodeScanRes;
    notifyListeners();
  }
}

abstract class BarcodeScannerNavigator {}
