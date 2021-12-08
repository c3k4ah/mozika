import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/colors.dart';

class CardListeMusic extends StatefulWidget {
  const CardListeMusic({Key key}) : super(key: key);

  /*final cheminDuSongActuel;
  final titre;
  final titreActuel;
  final coverAlbum;
  final artiste;*/

  @override
  _CardListeMusicState createState() => _CardListeMusicState();
}

class _CardListeMusicState extends State<CardListeMusic> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: secondaire,
      margin: EdgeInsets.only(top: Get.height * .02),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        leading: CircleAvatar(radius: 18, child: Text('H')),
        title: Text('Titre de la chabhin',
            style: TextStyle(
              color: white,
            )),
        trailing: Text("02:30",
            style: TextStyle(
              color: white,
            )),
      ),
    );
  }
}
