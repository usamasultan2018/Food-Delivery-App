import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/view/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  final void Function()?  onTap;
  const LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Food Delivery App",
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
            SizedBox(height: 25,),
            MyButton(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(ctx){
                return HomeScreen();
              }));
            },text: "Sign In"),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now",style: TextStyle(
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
