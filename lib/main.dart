import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery_app/themes/dark_mode.dart';
import 'package:food_delivery_app/themes/light_mode.dart';
import 'package:food_delivery_app/view/auth/login_or_signup.dart';
import 'package:food_delivery_app/view/login/login_screen.dart';
import 'package:food_delivery_app/view/sign_up/sign_up_screen.dart';
import 'package:food_delivery_app/view_model/restaurant_controller/restaurant_controller.dart';
import 'package:food_delivery_app/view_model/theme/theme_controller.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_)=>ThemeController()),
        ChangeNotifierProvider(create: (_)=>RestaurantController()),
      ],
      child:Consumer<ThemeController>(
        builder: (BuildContext context, ThemeController value, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Delivery App',
            theme: value.themeData,
            home: LoginOrSignUp(),
          );
        },
      )
    );
  }
}

