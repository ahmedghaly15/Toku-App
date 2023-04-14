import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/model.dart';

class Item extends StatelessWidget {
  final Model model;
  final String prefix;
  final Color? imageColor;
  final Color containerColor;
  const Item({
    super.key,
    required this.model,
    required this.prefix,
    required this.containerColor,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: containerColor,
      child: Row(
        children: <Widget>[
          if (model.image != null)
            Container(
              color: imageColor,
              child: Image.asset(model.image!),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  model.jbName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  model.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              try {
                AudioCache player = AudioCache(prefix: prefix);
                player.play(model.sound);
              } catch (error) {
                print(error);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
