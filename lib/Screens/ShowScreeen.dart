import 'package:flutter/material.dart';
import 'package:movieapp/Widgets/Outdor.dart';
import 'package:movieapp/Widgets/customDrawer.dart';
import 'package:movieapp/Widgets/showTile.dart';

class ShowScreen extends StatefulWidget {
  @override
  _ShowScreenState createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Shows", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Outdoor(
              text: Text("PEGUE OS FONES",
              style: TextStyle(
                  color: Colors.white,
                fontSize: 30.0,
              ),),
              padding: EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Column(
                children: <Widget>[
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
