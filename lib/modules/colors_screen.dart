import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<Model> colors = const [
    Model(
      image: 'assets/images/colors/color_black.png',
      jbName: "Kokushoku",
      enName: "Black",
      sound: 'black.wav',
    ),
    Model(
      image: 'assets/images/colors/color_brown.png',
      jbName: "Chairo",
      enName: "Brown",
      sound: 'brown.wav',
    ),
    Model(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jbName: "Hokori ppoi kiiro",
      enName: "Dusty Yellow",
      sound: 'dusty yellow.wav',
    ),
    Model(
      image: 'assets/images/colors/color_gray.png',
      jbName: "Haiiro",
      enName: "Grey",
      sound: 'gray.wav',
    ),
    Model(
      image: 'assets/images/colors/color_green.png',
      jbName: "Midoriiro",
      enName: "Green",
      sound: 'green.wav',
    ),
    Model(
      image: 'assets/images/colors/color_red.png',
      jbName: "Akaiiro",
      enName: "Red",
      sound: 'red.wav',
    ),
    Model(
      image: 'assets/images/colors/color_white.png',
      jbName: "Shiroiro",
      enName: "White",
      sound: 'white.wav',
    ),
    Model(
      image: 'assets/images/colors/yellow.png',
      jbName: "Kiiro",
      enName: "Yellow",
      sound: 'yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => Item(
          model: colors[index],
          prefix: 'assets/sounds/colors/',
          containerColor: Colors.deepOrangeAccent.withOpacity(0.6),
          imageColor: Colors.teal.withOpacity(0.4),
        ),
      ),
    );
  }
}
