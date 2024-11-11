import 'package:flutter/material.dart';
import 'package:tryyy2/constant.dart';
import 'food_menu.dart';
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
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 226, 226),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HeaderApp(),
                  FoodType(),
                  FoodMenu(),
                  FoodMenu(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
