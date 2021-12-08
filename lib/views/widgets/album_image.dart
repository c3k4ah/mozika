import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        image: ExactAssetImage('assets/images/pochette.png'),
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
          color: Colors.black54,
          offset: Offset(0, 20),
          blurRadius: 30,
          spreadRadius: 0,
        ),
      ],
    ));
