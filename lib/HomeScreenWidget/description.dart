// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        color: Colors.pink[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  height: 100,
                  width: 100),
              Expanded(
                child: Column(
                  children: [
                    Text("Do you need a tutor?"),
                    Text("Join us"),
                    TextButton(onPressed: () {}, child: Text("Get Started")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
