import 'package:flutter/material.dart';

class YuunagiDrawer extends StatelessWidget {
  const YuunagiDrawer({super.key, required this.changeScreen});
  final Function changeScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 180,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(190, 0, 41, 1),
              ),
              child: Center(child: Text('Yonagi')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              changeScreen(0);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.list,
            ),
            title: const Text('Lists'),
            onTap: () {
              changeScreen(1);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.gamepad_rounded,
            ),
            title: const Text('Play'),
            onTap: () {
              changeScreen(2);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_cart_rounded,
            ),
            title: const Text('Shop'),
            onTap: () {
              changeScreen(3);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_rounded,
            ),
            title: const Text('Settings'),
            onTap: () {
              changeScreen(4);
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          const Text(
            'Account',
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
            ),
            title: const Text('Profile'),
            onTap: () {
              changeScreen(5);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_rounded,
            ),
            title: const Text('Sign out'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
