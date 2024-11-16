import 'package:flutter/material.dart';
import 'database.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

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
          height: 270,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Foods.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    alignment: AlignmentDirectional.topEnd,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(image: AssetImage(Foods[index]['imageURl']), fit: BoxFit.cover),
                        boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 20, offset: Offset(0, 5))]),
                    child: const Icon(Icons.favorite, color: Colors.red),
                  ),
                  Text(Foods[index]['title'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(Foods[index]['Categories'], style: TextStyle(color: Colors.grey[500], fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                      width: 160,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                        Text(foodPrice[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)))
                      ]))
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
