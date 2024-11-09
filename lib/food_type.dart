import 'package:flutter/material.dart';

class FoodType extends StatefulWidget {
  const FoodType({super.key});

  @override
  State<FoodType> createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  List items = ['Pizza', 'shawerma', 'burger', 'Pizza', 'shawerma', 'burger'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 40,
            width: 10,
            color: Colors.red,
            margin: const EdgeInsets.only(right: 10), child: Text(items[index]));
        },
      ),
    );
    
  }
}
