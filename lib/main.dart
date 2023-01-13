// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import './HomeScreenWidget/hello.dart';
import './HomeScreenWidget/sectionText.dart';
import './HomeScreenWidget/categoryCard.dart';
import './HomeScreenWidget/gridTutor.dart';
import './HomeScreenWidget/description.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solution Challenge',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: "Roboto",
      ),
      home: const MyHomePage(title: 'Solution Challenge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.deepPurple.shade400,
          title:
              Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        // navigationbar
        // bottomNavigationBar: BottomNavigationBar(items: []),
        body: Container(
          height: double.infinity,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.1, 0.5],
                colors: [Colors.deepPurple.shade400, Colors.grey.shade300]),
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hello(),
                  SizedBox(height: 20),
                  Description(),
                  SizedBox(height: 25),
                  SectionText("Subjects"),
                  SizedBox(height: 15),
                  Container(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryCard(Icons.book, "Thinking Skills"),
                        CategoryCard(Icons.lightbulb, "Moral Studies"),
                        CategoryCard(Icons.speaker, "Technical English")
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  SectionText("Featured Tutors"),
                  SizedBox(height: 15),
                  GridTutor(),
                ],
              ),
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
