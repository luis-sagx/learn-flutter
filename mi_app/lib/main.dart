import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget es una clase base para widgets que no necesitan mantener estado.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold proporciona una estructura básica para la aplicación, incluyendo AppBar, Body, etc.
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
