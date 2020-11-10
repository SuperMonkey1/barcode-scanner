import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_template/viewmodel/back_navigator.dart';
import 'package:flutter_template/viewmodel/barcodeScanner/barcode_scanner_viewmodel.dart';
import 'package:flutter_template/viewmodel/error_navigator.dart';
import 'package:kiwi/kiwi.dart';
import 'package:provider/provider.dart';

class BarcodeScannerScreen extends StatefulWidget {
  static const String routeName = 'barcodeScanner';

  const BarcodeScannerScreen({
    Key key,
  }) : super(key: key);

  @override
  _BarcodeScannerScreenState createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> with BackNavigatorMixin, ErrorNavigatorMixin implements BarcodeScannerNavigator {
  String _scanBarcode = 'Unknown';
  final _scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: 'BarcodeScannerScaffoldKey');

  // /// TODO question: how to typerise the next method
  // Future<void> startBarcodeScanStream() async {
  //   //FlutterBarcodeScanner.getBarcodeStreamReceiver("#ff6666", "Cancel", true, ScanMode.BARCODE).listen((barcode) => print(barcode));
  // }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BarcodeScannerViewModel>(
      child: Consumer<BarcodeScannerViewModel>(
        builder: (context, viewModel, child) => Scaffold(
          body: Container(
              alignment: Alignment.center,
              child: Flex(direction: Axis.vertical, mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                RaisedButton(
                  onPressed: () => scanBarcodeNormal(),
                  child: const Text('Start barcode scan'),
                ),
                Text('Scan result : $_scanBarcode\n', style: const TextStyle(fontSize: 20))
              ])),
        ),
      ),
      create: (context) => KiwiContainer().resolve()..init(this),
    );
  }

  @override
  ScaffoldState getScaffoldState() => _scaffoldKey.currentState;
}
