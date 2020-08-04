import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FilmTile extends StatelessWidget {

  final Image image;
  final String title;
  final int ano;

  const FilmTile({Key key, this.image, this.title, this.ano}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: (){},
          splashColor: Colors.red,
          child:Card(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  child:image??Image.asset(""),
                ),
                Text(title,style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("ano: $ano ",
                  style: TextStyle(
                      fontSize: 20.0,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}