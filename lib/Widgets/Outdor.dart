import 'package:flutter/material.dart';

class Outdoor extends StatelessWidget {

  final EdgeInsets padding;
  final Text text;

  const Outdoor({Key key, this.padding, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding??EdgeInsets.fromLTRB(100.0, 20.0, 0.0, 0.0),
      child: text??Text("NOVIDADES", style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
      ),
    );
  }
}
