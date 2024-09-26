import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            alignment: Alignment.center,
            //padding: const EdgeInsets.all(10),
            // padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
            // padding: EdgeInsets.fromLTRB(50, 0, 50, 100),
            // padding: const EdgeInsets.only(
            //   left: 80,
            //   right: 20,
            // ),
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(50)
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
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            //padding: const EdgeInsets.all(10),
            // padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
            // padding: EdgeInsets.fromLTRB(50, 0, 50, 100),
            // padding: const EdgeInsets.only(
            //   left: 80,
            //   right: 20,
            // ),
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(50)
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
        ),
      ],
    ));
  }
}
