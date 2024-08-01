import 'package:flutter/material.dart';
import 'package:tones/components/item.dart';
import 'package:tones/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> familymember = const [
    Item(
        sounds: 'assets/sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: "Chichioya",
        enName: 'Father'),
    Item(
        sounds:'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: "Musume",
        enName: 'daughter'),
    Item(
        sounds: 'assets/sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: "Ojisan",
        enName: 'Grandfather'),
    Item(
        sounds: 'assets/sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: "Sobo",
        enName: 'Grandmother'),
    Item(
        sounds: 'assets/sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: "Hahaoya",
        enName: 'Mother'),
    Item(
        sounds: 'assets/sounds/family_members/older brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: "Nisan",
        enName: 'older brother'),
    Item(
        sounds:'assets/sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: "Ane",
        enName: 'older sister'),
    Item(
        sounds: 'assets/sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: "Musuko",
        enName: 'Son'),
    Item(
        sounds: 'assets/sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: "Otōto",
        enName: 'younger brother'),
    Item(
        sounds:'assets/sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: "Imōto",
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FamilyMembers"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: familymember.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: familymember[index],
            color:const Color(0xff558b37),
          );
        },
      ),
    );
  }
}
