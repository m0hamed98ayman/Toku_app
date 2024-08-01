import 'package:flutter/material.dart';

class Category extends StatelessWidget {
 const Category({super.key, this.color, this.text, this.onTap});
  final Color? color;
  final String? text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        padding:const EdgeInsets.only(
            left: 16), // Add padding to align text to the left side
        
        height: 65,
        width: double.infinity,
        child: Text(
          text!,
          style:const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
