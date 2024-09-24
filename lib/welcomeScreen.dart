import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: 250,
        width: 300,
        child: const Text(
          "Rohaan",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
