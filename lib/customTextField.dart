import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  bool ispass;
  final Icon suffixIcon;
  TextEditingController controller = TextEditingController();
  CustomTextfield({super.key, required this.controller, this.ispass = false,required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: ispass,
      decoration: InputDecoration(
          //prefixText: "Email",
          // prefixIcon: Icon(
          //   Icons.email,
          //   color: Colors.grey,
          // ),
          suffixIcon: suffixIcon,
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreen, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
