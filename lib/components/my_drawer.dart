import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tiles.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_open_rounded,
            size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTiles(text: "H O M E ", iconData: Icons.home),
          MyDrawerTiles(text: "S E T T I N G S ", iconData: Icons.settings),
          Spacer(),
          MyDrawerTiles(text: "L O G O U T ", iconData: Icons.logout),
        ],
      ),
    );
  }
}
