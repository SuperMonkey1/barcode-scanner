import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_template/util/permission/permission_handling.dart';

class BarcodeScannerViewModel with ChangeNotifier {
  final PermissionHandling permissionHandling;
  BarcodeScannerNavigator _navigator;
  String _scanBarcode = 'Unknown';
  String get scannedBarcode => _scanBarcode;

  BarcodeScannerViewModel(this.permissionHandling);

  Future<void> init(BarcodeScannerNavigator navigator) async {
    _navigator = navigator;
  }

  Future<void> onStartBarcodeScan() async {
    if (await permissionHandling.cameraPermissionIsGranted()) {
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
