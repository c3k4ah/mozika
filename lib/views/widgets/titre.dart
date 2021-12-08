import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

Widget titre() => Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      SizedBox(
        height: Get.height * .07,
      ),
      Text('Amino',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ],
          )),
      /*MaterialButton(
shape: CircleBorder(),
color: Colors.white,
onPressed: () {},
child: Icon(
  Icons.favorite_rounded,
  size: 30,
  color: Colors.red.shade400,
),
      )*/
    ]);
