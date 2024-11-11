import 'package:flutter/material.dart';
import 'package:tryyy2/constant.dart';

import 'database.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Popular Food', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Foods.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 300,
                    width: 160,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 100,
                      left: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 20, offset: Offset(0, 5))]),
                        margin: const EdgeInsets.all(5),
                        height: 100,
                        width: 160,
                        child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(
                              Foods[index]['imageURl'],
                              fit: BoxFit.cover,
                            )),
                      )),
                  const Positioned(top: 5, right: 20, child: Icon(Icons.heart_broken)),
                  Positioned(
                    top: 155,
                    left: 5,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Foods[index]['title'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(Foods[index]['Categories'], style: TextStyle(color: Colors.grey[500], fontSize: 15, fontWeight: FontWeight.bold)),
                          Container(
                            width: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(foodPrice[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
