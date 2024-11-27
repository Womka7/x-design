import 'package:flutter/material.dart';

class DrawerX extends StatelessWidget {
  const DrawerX({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: const Icon(Icons.person, color: Colors.white),
            ),
            accountName: const Text('Elon Musk'),
            accountEmail: const Text('@elonmusk'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.cases_outlined),
            title: const Text('Empleos'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.document_scanner_sharp),
            title: const Text('Listas'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.spatial_audio),
            title: const Text('Espacios'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text('Monetización'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
