import 'package:flutter/material.dart';

class PremumPage extends StatefulWidget {
  const PremumPage({super.key});

  @override
  State<PremumPage> createState() => _PremumPageState();
}

class _PremumPageState extends State<PremumPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.tealAccent),
      body: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/pre.jpg")),
      extendBody: true,
    );
  }
}
