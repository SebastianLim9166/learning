// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class GridTutor extends StatelessWidget {
  const GridTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      primary: false,
      crossAxisCount: 2,
      padding: EdgeInsets.symmetric(horizontal: 25),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      shrinkWrap: true,
      children: List.generate(
        6,
        (index) {
          return Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
