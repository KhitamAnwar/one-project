import 'package:flutter/material.dart';

import 'constant.dart';

class FoodType extends StatefulWidget {
  const FoodType({super.key});

  @override
  State<FoodType> createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  int _selectedtype = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder:(context, index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() => _selectedtype = index);
                      },
                      child: Container(
                        padding:  const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(40)),
                          color: _selectedtype == index ? Colors.orange : Colors.white,
                        ),
                        child: Center(child: Text(items[index], style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), )),
                      ),
                    );
                  
                },),
              );
  }
}