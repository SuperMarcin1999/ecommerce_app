// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/components/card_component.dart';
import 'package:ecommerce_app/components/search_compenent.dart';
import 'package:ecommerce_app/helpers/constants.dart';
import 'package:ecommerce_app/services/product_service.dart';
import 'package:flutter/material.dart';

import '../components/about_app_drawer.dart';

class ShopSceletonPage extends StatefulWidget {
  const ShopSceletonPage({super.key});

  @override
  State<ShopSceletonPage> createState() => _ShopSceletonPageState();
}

class _ShopSceletonPageState extends State<ShopSceletonPage> {
  var products = ProductService().getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundAppColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundAppColor,
        foregroundColor: Colors.black,
      ),
      drawer: AboutAppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Search
            SearchComponent(),

            // Text: everyone files....
            Padding(
              padding: const EdgeInsets.only(bottom: 40, top: 40),
              child: Text(
                "everyone files.. some fly longer than others",
                style: TextStyle(color: AppColors.liteFontColor),
              ),
            ),

            // Row Hots Picks, Icon, See all
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Hot Picks",
                      style: TextStyle(
                          color: AppColors.mainAppFontColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.fireplace_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: AppColors.liteFontColor,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CardComponent(
                      product: products[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
