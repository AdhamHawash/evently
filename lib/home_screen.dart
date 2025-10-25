import 'package:evently/nav_bar_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'Home1'),
            activeIcon: NavBarIcon(imageName: 'Home'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'Map1'),
            activeIcon: NavBarIcon(imageName: 'Map'),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'Love1'),
            activeIcon: NavBarIcon(imageName: 'Love'),
            label: 'Love',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'Profile1'),
            activeIcon: NavBarIcon(imageName: 'Profile'),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, size: 36),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
