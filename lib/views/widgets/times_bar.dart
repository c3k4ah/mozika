import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

Widget timesBar() => Positioned(
    left: 0,
    right: 0,
    bottom: 0.1 * Get.height,
    child: SleekCircularSlider(
      min: 0,
      max: 100,
      initialValue: 25,
      onChange: (value) {},
      /*onChange valeur durant le changement */
      onChangeEnd: (value) {},
      /*onChangeEnd valeur à la fin */
      onChangeStart: (value) {},
      /* onChangeStart valeur au début */
      innerWidget: (value) => Container(),
      appearance: CircularSliderAppearance(
          angleRange: 180,
          /* angleRange dégré de l'angle*/
          startAngle: 0,
          /*startAngle orientation, là on en forme U */
          size: Get.width - 40,
          customWidths: CustomSliderWidths(
            progressBarWidth: 8.5,
            trackWidth: 8.5,
            handlerSize: 8.0,
          ),
          customColors: CustomSliderColors(
            trackColor: Colors.black,
            /*track prog déjà faut sur la bar de progression*/
            progressBarColor: Colors.red.shade400,
            /*progressBar prog restant sur la bar de progression*/
            dotColor: Colors.black,
            /*dot(anglais)=point ,c'est le point qui indique la progression*/
          )),
    ));
