import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<Model> phrases = const [
    Model(
      jbName: "Kuru no desu ka?",
      enName: "Are you coming?",
      sound: 'are_you_coming.wav',
    ),
    Model(
      jbName: "Koudoku wo wasurenaide kudasai.",
      enName: "Don't forget to subscribe",
      sound: 'dont_foreget_to_subscribe.wav',
    ),
    Model(
      jbName: "O-karada no choushi wa ikaga desu ka?",
      enName: "How are you feeling?",
      sound: 'how_are_you_feeling.wav',
    ),
    Model(
      jbName: "Watashi wa anime ga daisuki desu",
      enName: "I love anime",
      sound: 'i_love_anime.wav',
    ),
    Model(
      jbName: "Watashi wa puroguramingu\nga daisuki desu.",
      enName: "I love programming",
      sound: 'i_love_programming.wav',
    ),
    Model(
      jbName: "Puroguramingu wa kantan desu.",
      enName: "Programming is easy",
      sound: 'programming_is_easy.wav',
    ),
    Model(
      jbName: "Anata no namae wa nan desu ka?",
      enName: "What is your name?",
      sound: 'what_is_your_name.wav',
    ),
    Model(
      jbName: "Doko ni iku no desu ka?",
      enName: "Where are you going?",
      sound: 'where_are_you_going.wav',
    ),
    Model(
      jbName: "Hai, kimasu.",
      enName: "Yes, i'm coming",
      sound: 'yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: Colors.lightGreen.shade600,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => Item(
          model: phrases[index],
          prefix: 'assets/sounds/phrases/',
          containerColor: Colors.indigo.withOpacity(0.6),
        ),
      ),
    );
  }
}
