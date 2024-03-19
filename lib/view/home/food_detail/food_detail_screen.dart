import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/model/food_model.dart';
class FoodDetailScreen extends StatefulWidget {
  final FoodModel foodModel;
  const FoodDetailScreen({super.key, required this.foodModel});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               height: 250,
               width: width,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage(widget.foodModel.imagePath),
                 )
               ),
             ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.foodModel.name,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('\$${widget.foodModel.price}',style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),),
                    SizedBox(height: 10,),
                    Text(widget.foodModel.description,),
                    SizedBox(height: 10,),
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,

                    ),
                    SizedBox(height: 10,),
                    Text('Add-ons',style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.secondary),
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.foodModel.availableAddon.length,
                          itemBuilder: (context,index){
                            Addon addon = widget.foodModel.availableAddon[index];
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(addon.price.toString(),style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),),
                                value: false, onChanged: (value){});
                          }),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 25,),
              MyButton(text: "Add to cart"),
            ],
          ),
        ),
      ),
    );
  }
}
