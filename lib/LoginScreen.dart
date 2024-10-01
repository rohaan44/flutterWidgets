import 'package:flutter/material.dart';
import 'package:project/CustomButton.dart';
import 'package:project/SignupScreen.dart';
import 'package:project/customTextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 50,
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
              Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextfield(
                    hintText: "Email",
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                    hintText: "Passwword",
                    ispass: true,
                    controller: passController,
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ))

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
              ,
              SizedBox(
                height: 100,
              ),
              CustomButton(
                  onTap: () {
                    print(emailController.text.trim());
                    print(passController.text.trim());
                  },
                  text: "Log In"),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
