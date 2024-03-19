import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/view_model/theme/theme_controller.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Consumer<ThemeController>(
              builder:
                  (BuildContext context, ThemeController value, Widget? child) {
                return Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.secondary),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dark Mode",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      CupertinoSwitch(value: value.isDarkMode, onChanged:(va)=>value.toggleTheme(),),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
