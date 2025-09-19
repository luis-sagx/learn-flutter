import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          print('Send button pressed');
        },
      ),
      hintText: 'Enter your message',
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Message sent: $value');
      },
      onChanged: (value) => print('Message typed: $value'),
    );
  }
}
