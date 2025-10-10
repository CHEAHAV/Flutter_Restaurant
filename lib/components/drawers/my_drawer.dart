import 'package:flutter/material.dart';
import 'package:restaurant/components/drawers/my_drawer_tile.dart';
import 'package:restaurant/pages/restaurants/intro_page.dart';
import 'package:restaurant/services/authentication/auth_service.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var authService = AuthService();
  // sign out method
  void sigout(BuildContext context) async {
    await authService.signOut();
    if (context.mounted) {
      Navigator.pushNamed(context, '/login_page');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Icon(
              Icons.restaurant_menu,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pushNamed(context, '/restaurant_page');
            },
          ),
          SizedBox(height: 10),
          // settings list tile
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pushNamed(context, '/setting_page');
            },
          ),
          SizedBox(height: 10),
          MyDrawerTile(
            text: "E X I T",
            icon: Icons.transit_enterexit,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (contex) => IntroPage()),
            ),
          ),
          Spacer(),
          // logout list tile
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () => sigout(context),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
