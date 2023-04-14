import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/model.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<Model> numbers = const [
    Model(
      image: 'assets/images/numbers/number_one.png',
      jbName: "Ichi",
      enName: "One",
      sound: 'number_one_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_two.png',
      jbName: "Ni",
      enName: "Two",
      sound: 'number_two_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_three.png',
      jbName: "San",
      enName: "Three",
      sound: 'number_three_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_four.png',
      jbName: "Shi",
      enName: "Four",
      sound: 'number_four_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_five.png',
      jbName: "Go",
      enName: "Five",
      sound: 'number_five_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_six.png',
      jbName: "Roku",
      enName: "Six",
      sound: 'number_six_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_seven.png',
      jbName: "Shichi",
      enName: "Seven",
      sound: 'number_seven_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_eight.png',
      jbName: "Hachi",
      enName: "Eight",
      sound: 'number_eight_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_nine.png',
      jbName: "Kyuu",
      enName: "Nine",
      sound: 'number_nine_sound.mp3',
    ),
    Model(
      image: 'assets/images/numbers/number_ten.png',
      jbName: "Juu",
      enName: "Ten",
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            model: numbers[index],
            prefix: 'assets/sounds/numbers/',
            imageColor: Colors.amber.withOpacity(0.5),
            containerColor: Colors.cyan.withOpacity(0.5),
          );
        },
      ),
    );
  }
}
