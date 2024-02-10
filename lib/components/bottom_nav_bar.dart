import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Order"),
      ],
    );
  }
}
