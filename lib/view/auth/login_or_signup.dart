import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/login_screen.dart';
import 'package:food_delivery_app/view/sign_up/sign_up_screen.dart';
class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({super.key});

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  bool showLoginPage = true;
  void togglePage(){
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginScreen(onTap: togglePage);
    }
    else{
      return SignUpScreen(onTap: togglePage,);
    }
  }
}
