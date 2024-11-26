import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  final ValueChanged<int> onItemSelected;

  const CustomBottomNav({super.key, required this.onItemSelected});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.edit_square), label: 'Post'),
      BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Communities'),
      BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: 'Verified'),
      BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Messages'),
    ];

    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: items,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        enableFeedback: false,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          widget.onItemSelected(index);
        },
      )
    );
  }
}
