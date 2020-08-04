import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/Widgets/Outdor.dart';
import 'package:movieapp/Widgets/customDrawer.dart';
import 'package:movieapp/Widgets/filmTile.dart';
import 'package:movieapp/Widgets/serieTile.dart';
import 'package:movieapp/Widgets/showTile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Movie App", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Outdoor(),
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
                  SerieTile(
                    title: "Chaves",
                    ano: 1971,
                    quantTemporadas: 9,
                    image: Image.asset("images/chaves.JPEG"),
                  ),
                  ShowTile(
                    title: "Beatles Live Apple Records",
                    ano: 1969,
                    tempDuracao: "21m46s",
                    image: Image.asset("images/beatle.JPEG"),
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