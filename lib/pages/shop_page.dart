// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../components/about_app_drawer.dart';

class ShopSceletonPage extends StatelessWidget {
  const ShopSceletonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(),
      drawer: AboutAppDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
