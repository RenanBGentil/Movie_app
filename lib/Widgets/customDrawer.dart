import 'package:flutter/material.dart';
import 'customHeader.dart';
import 'drawerTile.dart';

class CustomDrawer extends StatelessWidget {

  Widget _backDrawer()=> Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.redAccent,
          Colors.white,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {

         return  Drawer(
           child: Stack(
             children: <Widget>[
               _backDrawer(),
               CustomHeader(),
               Container(
                 padding: EdgeInsets.only(top: 154.0),
                 child: ListView(
                   padding: EdgeInsets.only(left:50.0,top:40.0),
                   children: <Widget>[

                     InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed('home');
                      },
                      child:  DrawerTile(
                        icon: Icons.home,
                        text: "Home",
                      ),
                    ),

                     InkWell(
                       onTap: (){
                         Navigator.of(context).pushNamed('film');
                       },
                       child:   DrawerTile(
                         icon: Icons.play_arrow,
                         text: "Filmes",
                       ),
                     ),

                     InkWell(
                     onTap: (){
                       Navigator.of(context).pushNamed('serie');
                     },
                     child:   DrawerTile(
                       icon: Icons.tv,
                       text: "Séries",
                     ),
                   ),

                     InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed('show');
                      },
                      child:  DrawerTile(
                        icon: Icons.music_note,
                        text: "Shows",
                      ),
                    ),

                   ],
                 ),
               ),
             ],
           ),
         );
  }
}