import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food_model.dart';
class MyTabBar extends StatelessWidget {
  final TabController controller ;
  const MyTabBar({super.key, required this.controller});

  List<Tab> _buildCategories(){
    return FoodCategory.values.map((value) {
      return Tab(
        text: value.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: controller,
        tabs: _buildCategories(),
      ),
    );
  }
}
