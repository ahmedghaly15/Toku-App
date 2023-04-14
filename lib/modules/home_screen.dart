import 'package:flutter/material.dart';
import 'package:toku_app/modules/colors_screen.dart';
import 'package:toku_app/modules/family_members_screen.dart';
import 'package:toku_app/modules/numbers_screen.dart';
import 'package:toku_app/modules/phrases_screen.dart';
import 'package:toku_app/shared/constants.dart';
import 'package:toku_app/components/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toku"),
      ),
      body: Column(
        children: <Widget>[
          CategoryItem(
            title: "Numbers",
            color: Colors.amber,
            onTap: () => navigateTo(
              context: context,
              screen: const NumbersScreen(),
            ),
          ),
          CategoryItem(
            title: "Family Members",
            color: Colors.blue.shade400,
            onTap: () => navigateTo(
              context: context,
              screen: const FamilyMembersScreen(),
            ),
          ),
          CategoryItem(
            title: "Colors",
            color: Colors.purple,
            onTap: () => navigateTo(
              context: context,
              screen: const ColorsScreen(),
            ),
          ),
          CategoryItem(
            title: "Phrases",
            color: Colors.lightGreen.shade600,
            onTap: () => navigateTo(
              context: context,
              screen: const PhrasesScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
