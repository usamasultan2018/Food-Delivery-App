import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_decription_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tabbar.dart';
import 'package:food_delivery_app/model/food_model.dart';
import 'package:food_delivery_app/view/home/food_detail/food_detail_screen.dart';
import 'package:food_delivery_app/view_model/restaurant_controller/restaurant_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  List<FoodModel> _filterMenuByCategories(
    FoodCategory category,
    List<FoodModel> menu,
  ) {
    return menu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<FoodModel> fullMenu) {
    return FoodCategory.values.map((category) {
      List<FoodModel> categoryMenu =
          _filterMenuByCategories(category, fullMenu);
      return ListView.builder(
        padding: EdgeInsets.zero,
          itemCount: categoryMenu.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return MyFoodTile(foodModel: categoryMenu[index],onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx){
                return FoodDetailScreen(foodModel: categoryMenu[index]);
              }));
            },);
          });
    }).toList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
                    MySliverAppBar(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Divider(
                              color: Theme.of(context).colorScheme.secondary,
                              indent: 25,
                              endIndent: 25,
                            ),
                            //location,
                            MyCurrentLocation(),
                            //decription
                            MyDescriptionBox(),
                          ],
                        ),
                        title: MyTabBar(
                          controller: controller,
                        ))
                  ],
          body: Consumer<RestaurantController>(
            builder: (BuildContext context, RestaurantController value,
                Widget? child) {
              return TabBarView(
                  controller: controller,
                  children: getFoodInThisCategory(value.menu));
            },
          )),
    );
  }
}
