// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/helpers/constants.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final Product product;

  const CardComponent({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundTextFieldColor,
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(children: [
        // Photo
        SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: product.image,
          ),
        ),

        // Description
        Text(
          product.desc,
          style: TextStyle(
            fontSize: 12,
            color: AppColors.liteFontColor,
          ),
        ),

        // Row with Title, Price and + btn
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Title
                Text(
                  product.title,
                  style: TextStyle(
                    color: AppColors.mainAppFontColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Price
                Text(
                  product.price,
                  style: TextStyle(
                    color: AppColors.liteFontColor,
                    fontSize: 10,
                  ),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.plus_one),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
