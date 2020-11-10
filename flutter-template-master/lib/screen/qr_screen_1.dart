// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// class QRScreen extends StatefulWidget {
//   const QRScreen({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _QRScreenState();
// }
//
// class _QRScreenState extends State<QRScreen> {
//   var qrText = '';
//   QRViewController controller;
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//
//   final Firestore _db = Firestore.instance;
//   GlobalKey<ScaffoldState> _scaffoldKeyQRScreen = GlobalKey<ScaffoldState>();
//   List<String> gymIds;
//   bool haveGyms = false;
//   final db = DatabaseService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKeyQRScreen,
//       appBar: AppBar(
//         title: Text(
//           'Join a gym',
//           overflow: TextOverflow.ellipsis,
//         ),
//         backgroundColor: kGroen,
//       ),
//       body: Column(
//         children: <Widget>[
//           Flexible(
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: _onQRViewCreated,
//               overlay: QrScannerOverlayShape(
//                 borderColor: Colors.red,
//                 borderRadius: 10,
//                 borderLength: 30,
//                 borderWidth: 10,
//                 cutOutSize: 300,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) async {
//     //var userAsClimber = Provider.of<Climber>(context);
//
//     this.controller = controller;
//
//     if (!haveGyms) {
//       gymIds = [];
//       await _db.collection("gyms").getDocuments().then((querySnapshot) {
//         querySnapshot.documents.forEach((result) {
//           gymIds.add(result.data['id']);
//         });
//       });
//       haveGyms = true;
//     }
//     print(gymIds);
//     controller.scannedDataStream.listen((scanData) {
//       qrText = scanData;
//
//       /// IF CODE SCANNED
//       if (qrText != '') {
//         print("SCANNED");
//         if (gymIds.contains(qrText)) {
//           print("SCANNED A GYM");
//           controller?.pauseCamera();
//           Navigator.pop(context, qrText);
//         } else {
//           print("SCANNED somethingelse");
//           controller?.pauseCamera();
//           Navigator.pop(context);
//         }
//       } else {
//         controller?.pauseCamera();
//         Navigator.pop(context);
//       }
//
// //      setState(() {
// //
// //      });
//     });
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
