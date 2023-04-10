import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ScanQRCodeScreen extends StatefulWidget {
  final int type;

  const ScanQRCodeScreen({Key? key, required this.type}) : super(key: key);

  @override
  State<ScanQRCodeScreen> createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodeScreen> {
  late Barcode result;
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    }
    controller.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
        ]
      )
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400) ? 250.0 : 400.0;

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea
      )
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        result = scanData;
      });

      controller.dispose();
      Navigator.popUntil(context, ModalRoute.withName('/'));

      var connectivityResult = await (Connectivity().checkConnectivity());

      if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi){
        var res = result.code.toString().split('&');

        Map<dynamic, dynamic> data = {
          'departmentId': res[0],
          'tableId': res[1],
        };

        String body = json.encode(data);
        //http.Response response = await http.post(Uri.encodeFull('http://192.168.0.153:8181/api/parkingin'), headers: <String, String>{"Accept": "application/json", 'Content-Type': 'application/json; charset=UTF-8'}, body: body);

        //if (response.statusCode == 200) {

        //}
      }
    });
  }
}