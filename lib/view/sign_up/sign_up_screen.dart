import 'package:flutter/material.dart';

import '../../components/my_button.dart';
import '../../components/my_textfield.dart';
class SignUpScreen extends StatefulWidget {
  final void Function()?  onTap;
  const SignUpScreen({super.key, this.onTap});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController confirmPasswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Let`s create an account",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MyTextField(controller: emailController, hintText: "Email", obscureText: false),
            SizedBox(
              height: 10,
            ),
            MyTextField(controller:passwordController, hintText: "Password", obscureText: true),
            SizedBox(
              height: 10,
            ),
            MyTextField(controller:confirmPasswordController, hintText: "Confirm password", obscureText: true),
            SizedBox(height: 25,),
            MyButton(text: "Sign Up"),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                ),),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login now",style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
