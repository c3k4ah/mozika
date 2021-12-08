import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/colors.dart';
import 'package:mzk/views/widgets/times_bar.dart';
import 'package:mzk/views/widgets/music_bar.dart';

import 'widgets/album_image.dart';
import 'widgets/times_code.dart';
// ignore: unused_import
import 'widgets/titre.dart';

/* -------------------------------------------------------------------------- */
class HomeSreen extends StatefulWidget {
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  late Animation animation;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(microseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaire,
        child: Stack(
          children: <Widget>[
            artisteImage(),
            timesBar(),
            timesCode(),
            Positioned(
              top: 0.1 * Get.height,
              right: 0.83 * Get.width,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: secondaire,
                onPressed: () {
                  Get.toNamed('/setting');
                },
                child: Icon(
                  Icons.settings_outlined,
                  size: 30,
                  color: red,
                ),
              ),
            ),
            /*il est préferable d'utiliser MaterialButton si tu veux contenir une icon ,
            elle sera plus centré. CircularAvatar est plutôt pour l'image*/
            Positioned(
              top: 0.1 * Get.height,
              left: 0.83 * Get.width,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: secondaire,
                onPressed: () {
                  Get.toNamed('/playList');
                },
                child: Icon(
                  Icons.queue_music_outlined,
                  size: 30,
                  color: red,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: primaire,
        child: MusicBar(),
      ),
    );
  }
}
