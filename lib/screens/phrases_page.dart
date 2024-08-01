import 'package:flutter/material.dart';
import 'package:tones/components/item.dart';
import 'package:tones/models/phrase.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<Phrase> phrases =const [
    Phrase(
      enName: 'Are you coming',
      jpName: 'Kimasu ka',
      sound: 'assets/sounds/phrases/are_you_coming.wav',
    ),
  
    Phrase(
      enName: 'How are you feeling ',
      jpName: 'Go kibun wa ikagadesu ka.',
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrase(
      enName: 'I love anime',
      jpName: 'Watashi wa anime ga daisukidesu',
      sound: 'assets/sounds/phrases/i_love_anime.wav',
    ),
    Phrase(
      enName: 'I love programming',
      jpName: 'Watashi wa Puroguramingu ga daisukidesu',
      sound: 'assets/sounds/phrases/i_love_programming.wav',
    ),
    Phrase(
      enName: 'Programming is easy',
      jpName: 'Puroguramingu wa kantandesu',
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
    ),
    Phrase(
      enName: 'What is your name',
      jpName: 'Namae wa nandesuka',
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
    ),
    Phrase(
      enName: 'Where are you going',
      jpName: 'Doko ni iku no',
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
    ),
    Phrase(
      enName: 'Yes i am coming',
      jpName: 'Hai, kimasu',
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase:  phrases[index],
            color:const  Color(0xff50adc7),
          );
        },
      ),
    );
  }
}
