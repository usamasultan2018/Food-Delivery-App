import 'package:flutter/material.dart';

class MyDrawerTiles extends StatelessWidget {
  final String text;
  final IconData iconData;

  final void Function()? onTap;

  const MyDrawerTiles(
      {super.key, required this.text, required this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(text,style: TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
      ),),
     leading: Icon(iconData,color:Theme.of(context).colorScheme.inversePrimary,),
    );
  }
}
