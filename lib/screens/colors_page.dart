import 'package:flutter/material.dart';
import 'package:tones/components/item.dart';
import 'package:tones/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
        sounds: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: "Baruku",
        enName: 'black'),
    Item(
        sounds: 'assets/sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: "Chairo",
        enName: 'brown'),
    Item(
        sounds: 'assets/sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: "Dasutiburaun",
        enName: 'dusty yellow'),
    Item(
        sounds: 'assets/sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: "Gurē",
        enName: 'gray'),
    Item(
        sounds: 'assets/sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: "Midori",
        enName: 'green'),
    Item(
        sounds: 'assets/sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: "Aka",
        enName: 'red'),
    Item(
        sounds: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: "Shiro",
        enName: 'white'),
    Item(
        sounds: 'assets/sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: "Kiiro",
        enName: 'yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FamilyMembers"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: colors[index],
            color: const Color(0xff79359f),
          );
        },
      ),
    );
  }
}
