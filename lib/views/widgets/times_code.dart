import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget timesCode() => Positioned(
    bottom: 0.03 * Get.height,
    left: 0.43 * Get.width,
    /*right: 0.5 * width,*/
    child: Stack(children: <Widget>[
      Text('02:30',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
    ]));
