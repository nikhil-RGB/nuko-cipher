import 'package:flutter/material.dart';

class BlankScreen extends StatefulWidget {
  @override
  State<BlankScreen> createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("No Implementation"),
      ),
    );
  }
}
