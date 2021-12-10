import 'package:flutter/material.dart';
import 'package:get/get.dart';

final times = "tsy misy";
Widget timesCode() => Positioned(
    bottom: 0.03 * Get.height,
    left: 0.43 * Get.width,
    /*right: 0.5 * width,*/
    child: Stack(children: <Widget>[
      Text(times,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          )),
    ]));
