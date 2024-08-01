import 'package:flutter/material.dart';
import 'package:tones/screens/colors_page.dart';
import 'package:tones/screens/familymembers_page.dart';
import 'package:tones/screens/number_page.dart';
import 'package:tones/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor:const Color(0xff46322b),
        title: const Text("Toku"),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                 return const NumbersPage();
                },
              ));
            },
            text: "Numbers",
            color:const Color(0xffef9235),
          ),
          Category(
            onTap: () {   Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                 return const FamilyMembersPage();
                },
              ));},
            text: "FamilyMembers",
            color:const Color(0xff558b37),
          ),
          Category(
            onTap: (){ Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                 return const ColorsPage();
                },
              ));},
            text: "Colors",
            color:const Color(0xff79359f),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                 return PhrasesPage();
                },
              ));
            },
            text: "Phrases",
            color:const Color(0xff50adc7),
          ),
        ],
      ),
    );
  }
}
