import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/model.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<Model> familyMembers = const [
    Model(
      image: 'assets/images/family_members/family_grandfather.png',
      jbName: "Ojīsan",
      enName: "GrandFather",
      sound: 'grand father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_grandmother.png',
      jbName: "Obāsan",
      enName: "GrandMother",
      sound: 'grand mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_father.png',
      jbName: "Chichi",
      enName: "Father",
      sound: 'father.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_mother.png',
      jbName: "Haha",
      enName: "Mother",
      sound: 'mother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_son.png',
      jbName: "Musuko",
      enName: "Son",
      sound: 'son.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_daughter.png',
      jbName: "Musume",
      enName: "Daughter",
      sound: 'daughter.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_brother.png',
      jbName: "Ani",
      enName: "Older Brother",
      sound: 'older bother.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_older_sister.png',
      jbName: "Ane",
      enName: "Older Sister",
      sound: 'older sister.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_brother.png',
      jbName: "Otōto",
      enName: "Younger Brother",
      sound: 'younger brohter.wav',
    ),
    Model(
      image: 'assets/images/family_members/family_younger_sister.png',
      jbName: "Imōto",
      enName: "Younger Sister",
      sound: 'younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: Colors.blue.shade400,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) => Item(
          model: familyMembers[index],
          prefix: 'assets/sounds/family_members/',
          containerColor: Colors.orange.withOpacity(0.5),
          imageColor: Colors.purple.withOpacity(0.5),
        ),
      ),
    );
  }
}
