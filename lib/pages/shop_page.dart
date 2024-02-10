// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/components/search_compenent.dart';
import 'package:flutter/material.dart';

import '../components/about_app_drawer.dart';

class ShopSceletonPage extends StatelessWidget {
  const ShopSceletonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[400],
        foregroundColor: Colors.black,
      ),
      drawer: AboutAppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Search
            SearchComponent(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
