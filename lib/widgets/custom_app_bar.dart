import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onAvatarTap;
  const CustomAppBar({super.key, required this.onAvatarTap});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: onAvatarTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[800],
            child: const Icon(Icons.person, color: Colors.white),
          ),
        ),
      ),
      title: const Image(
        image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/5/57/X_logo_2023_%28white%29.png'),
        height: 30,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
      ],
    );
  }
}
