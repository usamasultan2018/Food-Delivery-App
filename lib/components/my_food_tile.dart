import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food_model.dart';
class MyFoodTile extends StatelessWidget {
  final FoodModel foodModel;
  final void Function()? onTap;
  const MyFoodTile({super.key, required this.foodModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child:Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foodModel.name),
                    Text('\$${foodModel.price}',style: TextStyle(
                      color: Theme.of(context).colorScheme.primary
                    ),),
                    SizedBox(height: 10,),
                    Text(foodModel.description,style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                    ),),
                  ],
                )),
                SizedBox(width: 15,),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(foodModel.imagePath)
                    )
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            endIndent: 25,
            indent: 25,
          )
        ],
      ),
    );
  }
}
