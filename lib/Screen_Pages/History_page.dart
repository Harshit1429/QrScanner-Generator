import 'package:flutter/material.dart';
import 'package:qrscanner/Screen_Pages/HomePage.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("No History !! ",style: TextStyle(fontSize: 21,color: Colors.black)),
            Padding(
              padding: const EdgeInsets.only(top: 11.0,bottom: 15),
              child: Image.asset("assets/images/qrscan.jpg",height: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));

                },
                child: Text("Scan Qr",style: TextStyle(fontSize: 21,color: Colors.black)))
          ],
        ),
      ),
    );
  }
}
