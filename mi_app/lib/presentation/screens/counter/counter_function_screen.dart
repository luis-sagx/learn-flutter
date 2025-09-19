import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona una estructura básica para la pantalla, incluyendo AppBar, Body, etc.
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Function'),
          actions: [
            IconButton(
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
              icon: const Icon(Icons.refresh_rounded),
            ),
          ],
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 150, fontWeight: FontWeight.w100)),
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 24)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
                icon: Icons.exposure_plus_1,
                onPressed: () {
                  clickCounter++;
                  setState(() {});
                }),
            const SizedBox(height: 12),
            CustomButton(
                icon: Icons.exposure_minus_1,
                onPressed: () {
                  clickCounter--;
                  if (clickCounter < 0) {
                    clickCounter = 0;
                  }
                  setState(() {});
                }),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(), // para hacerlo circular
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

 // stless + tab --> crea un StatelessWidget