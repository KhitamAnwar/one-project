import 'package:flutter/material.dart';
import 'package:tryyy2/constant.dart';
import 'food_type.dart';

import 'app_header.dart';

class DeliveryFood extends StatefulWidget {
  const DeliveryFood({super.key});

  @override
  State<DeliveryFood> createState() => _DeliveryFoodState();
}

class _DeliveryFoodState extends State<DeliveryFood> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: width(context),
        height: hight(context),
        child: const SafeArea(
          child: Column(
            children: [
              HeaderApp(),
             FoodType(),
              

            ],
          ),
        ),

      ),
    );
  }
}