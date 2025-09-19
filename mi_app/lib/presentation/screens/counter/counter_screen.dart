import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona una estructura básica para la pantalla, incluyendo AppBar, Body, etc.
    return const Scaffold(
      body: Center(
        child: Text('Counter Screen'),
      ),
    );
  }
}

 // stless + tab --> crea un StatelessWidget