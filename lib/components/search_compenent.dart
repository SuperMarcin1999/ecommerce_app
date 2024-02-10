import 'package:ecommerce_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.backgroundTextFieldColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: TextField(
                style: TextStyle(color: AppColors.liteFontColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                ),
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.grey[500],
          ),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}
