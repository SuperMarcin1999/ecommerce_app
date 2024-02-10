import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 73, 41, 41)),
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
