import 'package:flutter/material.dart';
import 'FilmScreen.dart';
import 'SerieScreen.dart';
import 'ShowScreeen.dart';
import 'homePage_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        Scaffold(
          body: HomePage(),
        ),
        Scaffold(
          body: FilmScreen(),
        ),Scaffold(
          body: SerieScreen(),
        ),Scaffold(
          body: ShowScreen(),
        ),
      ],
    );
  }
}
