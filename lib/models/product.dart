import 'package:flutter/material.dart';

class Product{
  final Image image;
  final String desc;
  final String title;
  final String price;

  const Product({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
  });
}