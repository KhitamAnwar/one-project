import 'package:flutter/material.dart';
import 'package:tryyy2/database.dart';

import 'constant.dart';

class FoodType extends StatefulWidget {
  const FoodType({super.key});

  @override
  State<FoodType> createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  bool isSelected = false;
  int _selectedType = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ChoiceChip(
            label: Text(items[index]),
            shape: const StadiumBorder(),
            selected: _selectedType == index,
            surfaceTintColor: Colors.transparent,
            onSelected: (selected) => setState(() {
              _selectedType = index;
            }),
            labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            selectedColor: _selectedType == index ? Colors.orange : Colors.white,
          );
        },
      ),
    );
  }
}

/*
SizedBox(
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
                        alignment: Alignment.center,
                        padding:  const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(40)),
                          color: _selectedtype == index ? Colors.orange : Colors.white,
                        ),
                        child: Text(items[index], style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), ),
                      ),
                    );
                  
                },),
              );*/