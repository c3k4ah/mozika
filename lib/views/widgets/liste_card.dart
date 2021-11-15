import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardListeMusic extends StatelessWidget {
  const CardListeMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: Get.height * .02),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        leading: CircleAvatar(radius: 18, child: Text('H')),
        title: Text('Titre de la chabhin'),
        trailing: Icon(Icons.play_arrow),
      ),
    );
  }
}
