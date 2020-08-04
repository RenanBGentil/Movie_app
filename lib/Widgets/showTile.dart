import 'package:flutter/material.dart';

class ShowTile extends StatelessWidget {

  final Image image;
  final String title;
  final int ano;
  final String tempDuracao;

  const ShowTile({Key key, this.image, this.title, this.ano, this.tempDuracao}) : super(key: key);

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
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("ano: $ano ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              ),
            ), Text("Tempo de duração: $tempDuracao ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
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
