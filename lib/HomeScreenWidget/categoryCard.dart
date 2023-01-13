// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final icon;
  final String word;

  CategoryCard(this.icon, this.word);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepPurple[100],
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [Icon(icon), SizedBox(width: 5), Text(word)],
          )),
    );
  }
}
