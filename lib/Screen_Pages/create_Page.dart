import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';


class Createpage extends StatefulWidget {
  const Createpage({super.key});

  @override
  State<Createpage> createState() => _CreatepageState();
}

class _CreatepageState extends State<Createpage> {

   final TextEditingController _datacontroller = TextEditingController();
   String data='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body:  Padding(
       padding: const EdgeInsets.only(left: 11.0,right: 11,top: 21),
       child: SingleChildScrollView(
         child: Column(
           children: [
             QrImageView(data: '$data',
               version: QrVersions.auto,
               size: 200.0,
             ),


             Padding(
               padding: const EdgeInsets.only(bottom: 15.0,top: 51),
               child: Center(
                 child: TextFormField(
                   decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                     labelText: 'Enter your Qr Data',
                     hintText: 'Enter your Qr Data',


                   ),
                   controller: _datacontroller,

                 ),
               ),
             ),
             Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        data = _datacontroller.text;

                      });

                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.tealAccent.shade700,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.qr_code,color: Colors.white,size: 30),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(" Generate Qr Code   ",style: TextStyle(color: Colors.white,fontSize: 21)),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
           ],
         ),
       ),
     ),

    );
  }
}
