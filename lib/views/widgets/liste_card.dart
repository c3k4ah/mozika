import 'package:flutter/material.dart';

class CardListeMusic extends StatelessWidget {
  const CardListeMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: ListTile(
        leading: CircleAvatar(child: Text('H')),
        title: Text('Titre de la chabhin'),
        trailing: Icon(Icons.play_arrow),
      ),
    );
  }
}
