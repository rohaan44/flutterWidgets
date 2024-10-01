import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/CustomButton.dart';
import 'package:project/LoginScreen.dart';
import 'package:project/customTextField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController confirmPassController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                children: [
                  CustomTextfield(
                      hintText: "Name",
                      controller: nameController,
                      suffixIcon: Icon(Icons.person)),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextfield(
                      hintText: "Email",
                      controller: emailController,
                      suffixIcon: Icon(Icons.email)),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextfield(
                      hintText: "Password",
                      controller: passController,
                      suffixIcon: Icon(Icons.remove_red_eye)),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextfield(
                      hintText: "Confirm Password",
                      controller: confirmPassController,
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ],
              )),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                  onTap: () {
                    log(nameController.text.trim());
                    log(emailController.text.trim());
                    log(passController.text.trim());
                    log(confirmPassController.text.trim());

                    if (confirmPassController.text.trim() ==
                        passController.text.trim()) {
                      log("Password is correct");
                    } else {
                      log("Password dont match");
                    }
                    nameController.clear();
                    emailController.clear();
                    passController.clear();
                    confirmPassController.clear();
                  },
                  text: "Sign Up"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text("Sign In",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
