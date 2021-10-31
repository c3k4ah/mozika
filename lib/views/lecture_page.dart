import 'package:flutter/material.dart';
import 'package:get/get.dart';

/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
Widget timesCode() => Positioned(
    bottom: 0.03 * Get.height,
    left: 0.43 * Get.width,
    /*right: 0.5 * width,*/
    child: Stack(children: <Widget>[
      Text('02:30',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
    ]));
/* -------------------------------------------------------------------------- */
Widget titre() => Positioned(
    bottom: 0.17 * Get.height,
    left: 0.3 * Get.width,
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
      MaterialButton(
        shape: CircleBorder(),
        color: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.favorite_rounded,
          size: 30,
          color: Colors.red.shade400,
        ),
      )
    ]));
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
Widget artisteImage() => Container(
    width: double.infinity,
    height: double.infinity,
    margin: EdgeInsets.only(
      left: 50,
      right: 50,
      bottom: 0.15 * Get.height,
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/denise2.jpg'),
          /*doit changer en fonction du photo  de l'album
            les primaryWatch doit hériter du même couleur que cette album..sinon l'user peut choisir sa couleur 'color picker'*/
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular((Get.width - 100) / 2),
          bottomRight: Radius.circular((Get.width - 100) / 2),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(0, 8),
              blurRadius: 5.0),
        ]));
