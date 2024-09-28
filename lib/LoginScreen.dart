import 'package:flutter/material.dart';
import 'package:project/CustomButton.dart';
import 'package:project/customTextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            // TextField(
            //   controller: emailController,
            //   decoration: const InputDecoration(
            //       //prefixText: "Email",
            //       // prefixIcon: Icon(
            //       //   Icons.email,
            //       //   color: Colors.grey,
            //       // ),
            //       suffixIcon: Icon(
            //         Icons.email,
            //         color: Colors.grey,
            //       ),
            //       errorBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.red, width: 2),
            //           borderRadius: BorderRadius.all(Radius.circular(12))),
            //       focusedBorder: OutlineInputBorder(
            //           borderSide:
            //               BorderSide(color: Colors.lightGreen, width: 2),
            //           borderRadius: BorderRadius.all(Radius.circular(12))),
            //       border: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.grey, width: 2),
            //           borderRadius: BorderRadius.all(Radius.circular(12)))),
            // ),
            CustomTextfield(
              suffixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
              controller: emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              ispass: true,
              controller: passController,
              suffixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(emailController.text.trim());
                },
                child: Text("Login")),
            MaterialButton(
              onPressed: () {
                print("Rohaan");
              },
              child: Text("Roohaan"),
            ),

            // InkWell(
            //   onTap: () {
            //     print(emailController.text.trim());
            //     print(passController.text.trim());
            //   },
            //   child: Container(
            //     height: 50,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //         color: Colors.lightGreen,
            //         borderRadius: BorderRadius.circular(20)),
            //     child: Center(
            //       child: Text("Log In"),
            //     ),
            //   ),
            // )
            CustomButton(onTap: () {
              print(emailController.text.trim());
              print(passController.text.trim());
            }, text: "Log In")
          ],
        ),
      ),
    );
  }
}
