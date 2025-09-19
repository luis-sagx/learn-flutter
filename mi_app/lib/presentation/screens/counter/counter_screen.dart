import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final int clickCounter = 0;

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona una estructura básica para la pantalla, incluyendo AppBar, Body, etc.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10',
                style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100)),
            Text('Clicks', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

 // stless + tab --> crea un StatelessWidget