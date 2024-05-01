import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/link.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {

  ImagePicker _picker = ImagePicker();
  imagepick(){
    _picker = ImagePicker().pickImage(source: ImageSource.gallery) as ImagePicker;
  }



  QRViewController? controller;
  final GlobalKey qrkey = GlobalKey(debugLabel: 'QR');
  String scannedCode = '';
  @override
  void dispose() {

    controller?.dispose();

    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller){
    this.controller=controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        scannedCode = scanData.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          QRView(key: qrkey, onQRViewCreated: _onQRViewCreated,overlay: QrScannerOverlayShape(borderColor: Colors.blue,) ,),
          Positioned(
              bottom: 150,
              left: 110,
              child: Text("Scan Result :-",style: TextStyle(color: Colors.white,fontSize: 21),)),
          Positioned(
              bottom: 130,
              left: 60,
              child: Text("(Click on the result to follow the link)",style: TextStyle(color: Colors.white),)),
          Positioned(
            bottom: 75,
            left: 20,
            child: Link(uri: Uri.parse('$scannedCode'), builder: (context, followLink) {
              return TextButton(onPressed: followLink, child: Text('$scannedCode',style: const TextStyle(color: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold),));
            },),
          ),
          Positioned(
              left: 40,
              top: 20,
              child: TextButton(
                  onPressed: () {
                    imagepick();
                  },
                  child: Icon(Icons.image,color: Colors.white,size: 35))),
          Positioned(
              left: 140,
              top: 20,
              child: TextButton(
                  onPressed: () {

                  },
                  child: Icon(Icons.cached,color: Colors.white,size: 35))),
          Positioned(
              left: 250,
              top: 20,
              child: TextButton(
                  onPressed: () {

                  },
                  child: Icon(Icons.flash_off_sharp,color: Colors.white,size: 35))),
        ],
      ),

    );
  }
}
