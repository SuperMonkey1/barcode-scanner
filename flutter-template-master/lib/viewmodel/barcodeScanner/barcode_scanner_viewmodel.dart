import 'package:flutter/material.dart';

class BarcodeScannerViewModel with ChangeNotifier {
  BarcodeScannerNavigator _navigator;
  String _scanBarcode = 'Unknown';

  Future<void> init(BarcodeScannerNavigator navigator) async {
    _navigator = navigator;
  }

  // Future<void> scanBarcodeNormal() async {
  //   String barcodeScanRes;
  //   try {
  //     barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);
  //     print(barcodeScanRes);
  //   } on PlatformException {
  //     barcodeScanRes = 'Failed to get platform version.';
  //   }
  //   if (!mounted) return;
  //   setState(() {
  //     _scanBarcode = barcodeScanRes;
  //   });
  // }

  void onStartBarcodeScan() {
    //scanBarcodeNormal();
  }
}

abstract class BarcodeScannerNavigator {}
