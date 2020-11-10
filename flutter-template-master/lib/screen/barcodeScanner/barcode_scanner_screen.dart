import 'package:flutter/material.dart';
import 'package:flutter_template/viewmodel/barcodeScanner/barcode_scanner_viewmodel.dart';
import 'package:kiwi/kiwi.dart';
import 'package:provider/provider.dart';

class BarcodeScannerScreen extends StatelessWidget implements BarcodeScannerNavigator {
  static const String routeName = 'barcodeScanner';

  const BarcodeScannerScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BarcodeScannerViewModel>(
      child: Consumer<BarcodeScannerViewModel>(
        builder: (context, viewModel, child) => Scaffold(
          body: Center(),
        ),
      ),
      create: (context) => KiwiContainer().resolve()..init(this),
    );
  }
}
