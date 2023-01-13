// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  final String text;

  SectionText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: Text(
          text,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
