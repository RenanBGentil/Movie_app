import 'package:flutter/material.dart';
import 'package:movieapp/Widgets/Outdor.dart';
import 'package:movieapp/Widgets/customDrawer.dart';
import 'package:movieapp/Widgets/serieTile.dart';

class SerieScreen extends StatefulWidget {
  @override
  _SerieScreenState createState() => _SerieScreenState();
}

class _SerieScreenState extends State<SerieScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Series", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Outdoor(
              text: Text("TEMOS A SÉRIE DO SEU CORAÇÃO", style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),),
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Column(
                children: <Widget>[

                  SerieTile(
                    title: "Chaves",
                    ano: 1971,
                    quantTemporadas: 9,
                    image: Image.asset("images/chaves.JPEG"),
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
