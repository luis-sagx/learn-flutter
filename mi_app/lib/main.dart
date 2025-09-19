import 'package:flutter/material.dart';
import 'package:mi_app/presentation/screens/counter_function_screen.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget es una clase base para widgets que no necesitan mantener estado.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: const CounterFunctionScreen(),
    );
  }
}
