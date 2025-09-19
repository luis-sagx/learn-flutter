import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: Text('Hola mundo')),
    );
  }
}
