import 'package:flutter/material.dart';
import 'package:flutter_template/util/locale/localization.dart';
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
  final _scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: 'BarcodeScannerScaffoldKey');

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);

    return ChangeNotifierProvider<BarcodeScannerViewModel>(
      child: Consumer<BarcodeScannerViewModel>(
        builder: (context, viewModel, child) => Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: viewModel.onStartBarcodeScan,
                  child: const Text('Start barcode scan'),
                ),
                Text('Scan result : ${viewModel.scannedBarcode} \n', style: const TextStyle(fontSize: 20))
              ],
            ),
          ),
        ),
      ),
      create: (context) => KiwiContainer().resolve()..init(this),
    );
  }

  @override
  ScaffoldState getScaffoldState() => _scaffoldKey.currentState;
}
