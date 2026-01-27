import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 20),
      child: GNav(
        padding: EdgeInsetsGeometry.all(20),
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabBackgroundColor: Colors.grey[200]!,
        tabActiveBorder: Border.all(color: Colors.white),
        curve: Curves.linear,
        gap: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: onTabChange,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            textStyle: TextStyle(fontSize: 16),
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
            textStyle: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
