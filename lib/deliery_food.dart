import 'package:flutter/material.dart';
import 'food_menu.dart';
import 'food_type.dart';

import 'app_header.dart';

class DeliveryFood extends StatelessWidget {
  const DeliveryFood({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        backgroundColor:  Color.fromARGB(255, 228, 226, 226),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderApp(),
              FoodType(),
              FoodMenu(),
              FoodMenu(),
            ],
          ),
        ),
      ),
    );
  }
}

