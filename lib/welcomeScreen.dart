import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.black, 
            borderRadius: BorderRadius.circular(50)
            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(50),
            //     bottomRight: Radius.circular(50)
            //     )
            ),
        child: const Center(
          child: Text(
            "Rohaan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w700,
              letterSpacing: 5,
            ),
          ),
        ),
      ),
    );
  }
}
