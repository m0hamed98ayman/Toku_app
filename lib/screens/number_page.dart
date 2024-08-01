import 'package:flutter/material.dart';
import 'package:tones/components/item.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
        sounds: 'assets/sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: "ichi",
        enName: 'one'),
    Item(
        sounds: 'assets/sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: "Ni",
        enName: 'two'),
    Item(
        sounds: 'assets/sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: "San",
        enName: 'three'),
    Item(
        sounds: 'assets/sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: "Shi",
        enName: 'four'),
    Item(
        sounds: 'assets/sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: "Go",
        enName: 'five'),
    Item(
        sounds: 'assets/sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: "Roku",
        enName: 'six'),
    Item(
        sounds: 'assets/sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: "Sebun",
        enName: 'seven'),
    Item(
        sounds: 'assets/sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: "hachi",
        enName: 'eight'),
    Item(
        sounds: 'assets/sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: "Kyū",
        enName: 'nine'),
    Item(
        sounds: 'assets/sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: "Jū",
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: const Color(0xffef9235),
          );
        },
      ),
    );
  }
}
