import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductService {
  // Te dane mogly by sobie leciec z jakiegos api
  List<Product> getProducts() {
    return [
      Product(
        desc: "To są superowa wersja sialala",
        title: "Adidas Orginal",
        price: "425.49",
        image: Image.asset("assets/images/shoes1.jpg"),
      ),
      Product(
        desc: "To są okrojona trololona wersja sialala",
        title: "Nike",
        price: "199.99",
        image: Image.asset("assets/images/shoes2.jpg"),
      ),
      Product(
        desc: "To są taka se wersja sialala",
        title: "Puma",
        price: "670.00",
        image: Image.asset("assets/images/shoes3.jpg"),
      ),
    ];
  }
}
