import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget titre() => Positioned(
    bottom: 0.17 * Get.height,
    left: 0.35 * Get.width,
    /*right: 0.5 * width,*/
    child: Column(children: <Widget>[
      Text(
        'Tsara Joro',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.black,
              offset: Offset(5.0, 5.0),
            ),
          ],
        ),
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
    ]));
