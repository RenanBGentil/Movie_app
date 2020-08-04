import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Widgets/Outdor.dart';
import 'package:movieapp/Widgets/customDrawer.dart';
import 'package:movieapp/Widgets/filmTile.dart';

class FilmScreen extends StatefulWidget {
  @override
  _FilmScreenState createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("Filmes", style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Outdoor(
            padding: EdgeInsets.fromLTRB(65.0, 20.0, 0.0, 0.0),
            text: Text("PREPARE A PIPOCA", style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
            ),),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Column(
              children: <Widget>[
                FilmTile(
                  title: "Batman Begins",
                  ano: 2005,
                  image: Image.asset("images/batman-begins.JPEG"),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}