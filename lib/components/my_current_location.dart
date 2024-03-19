import 'package:flutter/material.dart';
class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  State<MyCurrentLocation> createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
  openLocationSearchBox(context){
    showDialog(context: context, builder:(context){
      return AlertDialog(
        title: Text("Your Location"),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Search address"
          ),
        ),
        actions: [
          MaterialButton(onPressed: (){
            Navigator.pop(context);
          },child: Text("Cancel"),),
          MaterialButton(onPressed: (){
            Navigator.pop(context);
          },child: Text("Save"),),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver now",style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),),
          GestureDetector(
            onTap: ()=>openLocationSearchBox(context),
            child: Row(
              children: [
                Text("Dalazaok road peshawar",style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
