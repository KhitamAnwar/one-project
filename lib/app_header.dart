import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Icon(Icons.menu, size: 30), Icon(Icons.notifications_none_outlined, size: 30)]),
        const SizedBox(height: 5),
        const Text('Choose', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        const Row(children: [
          Text('Your favourite', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(width: 5),
          Text(' food', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange)),
        ]),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(color: Color.fromARGB(255, 236, 233, 233), borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const TextField(
            decoration: InputDecoration(border: InputBorder.none, prefixIcon: Icon(Icons.search), hintText: 'Search', hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
          ),
        ),
      ]),
    );
  }
}

