import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'category_screen.dart';
import 'progress_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  void _onItemTapped(BuildContext context, int index) {
    Widget screen;

    switch (index) {
      case 0:
        screen = const HomeScreen();
        break;

      case 1:
        screen = const CategoryScreen();
        break;

      case 2:
        screen = const ProgressScreen();
        break;

      case 3:
        screen = const ProfileScreen();
        break;

      default:
        screen = const HomeScreen();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
      type: BottomNavigationBarType.fixed,

      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}