import 'package:chat_ai/src/views/messeges/messeges.dart';
import 'package:chat_ai/src/views/payment_view/payment_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Messeges(),
    );
  }
}
