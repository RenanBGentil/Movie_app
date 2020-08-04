import 'package:flutter/material.dart';
import 'package:movieapp/Screens/FilmScreen.dart';
import 'package:movieapp/Screens/homePage_screen.dart';
import 'Screens/Home.dart';
import 'Screens/SerieScreen.dart';
import 'Screens/ShowScreeen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Movie App',
    routes: {
      'home': (context) => HomePage(),
      'film': (context) => FilmScreen(),
      'serie': (context) => SerieScreen(),
      'show': (context) => ShowScreen(),
    },
    theme: ThemeData(
    primaryColor: Colors.red,
    ),
    home: Home(),
    );
  }
}