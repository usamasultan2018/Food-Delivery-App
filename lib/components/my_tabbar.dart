import 'package:flutter/material.dart';
class MyTabBar extends StatelessWidget {
  final TabController controller ;
  const MyTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: controller,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.settings),
          ),
          Tab(
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
